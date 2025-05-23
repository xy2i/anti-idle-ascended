# /// script
# requires-python = ">=3.11"
# dependencies = [
#     "tree-sitter",
#     "tree-sitter-javascript",
# ]
# ///
import subprocess
import os
import argparse
import glob
from pathlib import Path
import concurrent.futures
import json

from tree_sitter import Language, Parser
import tree_sitter_javascript as tsjavascript

class C:
    """Terminal colors"""
    BLACK = '\033[30m'
    RED = '\033[31m'
    GREEN = '\033[32m'
    YELLOW = '\033[33m'
    BLUE = '\033[34m'
    MAGENTA = '\033[35m'
    CYAN = '\033[36m'
    WHITE = '\033[37m'
    UNDERLINE = '\033[4m'
    RESET = '\033[0m'


def generate_db(args):
    export_path = args.export_path
    swf_path = args.swf_path

    if os.name == "posix":
        FFDEC_BIN = "ffdec"
    else:
        FFDEC_BIN = "ffdec-cli"

    if not args.skip_jpexs:
        try:
            print(f"""{C.CYAN}info:{C.RESET} calling JPEXS to extract scripts from swf""")
            print(f"""{C.CYAN}info:{C.RESET} you can skip this step with the --skip-jpexs argument
generate_db will then use the {export_path} folder as reference""")
            subprocess.run([FFDEC_BIN, "-export", "script", export_path, swf_path], check=True)
        except FileNotFoundError:
            print(f"""{C.RED}error:{C.RESET} The `ffdec` executable was not found.
Please install JPEXS, the Flash decompiler,
at {C.CYAN}{C.UNDERLINE}https://github.com/jindrapetrik/jpexs-decompiler{C.RESET}.""")
            if os.name == "nt":
                print(f"""{C.CYAN}note:{C.RESET} On Windows, you might have to add the JPEXS installation
folder to your PATH variable.""")
    else:
        print(f"""{C.CYAN}info:{C.RESET} skipping JPEXS extracting, using the {export_path} folder as reference""")

    functions = []
    file_paths = glob.glob(f"./**/*.as", root_dir=f"./{export_path}", recursive=True)

    files_total = len(file_paths)
    files_count = 0
    functions_count = 0
    total_line_count = 0
    with concurrent.futures.ThreadPoolExecutor() as executor:
        # Submit all file processing tasks and collect future objects
        future_to_file = {executor.submit(parse_file, export_path, file_path): file_path for file_path in file_paths}

        # Process results as they complete
        for future in concurrent.futures.as_completed(future_to_file):
            file = future_to_file[future]
            try:
                result = future.result()
                if result:
                    functions_count += len(result)
                    files_count += 1
                    total_line_count += sum(x["line_count"] for x in result)
                    functions += result
                    print(f"{C.CYAN}info:{C.RESET} {files_count}/{files_total} files processed, {functions_count} functions discovered, {total_line_count} lines processed")

            except Exception as e:
                print(f"{C.RED}error:{C.RESET} {file} failed to decode: {e}")

    db = {
        'total_line_count': total_line_count,
        'functions': sorted(functions, key=lambda x: x["name"]),
    }
    with open(args.db_path, 'w') as f:
        json.dump(db, f)


def parse_file(export_path: str, path: str):
    with open(Path(export_path) / path, encoding="utf-8") as f:
        code = f.read()

    path = Path(path)

    JS_LANGUAGE = Language(tsjavascript.language())

    parser = Parser(JS_LANGUAGE)

    # Parse the code
    code_bytes = bytes(code, "utf-8")
    tree = parser.parse(code_bytes)
    root_node = tree.root_node

    # Query for function declarations
    function_query = JS_LANGUAGE.query("""
        (function_declaration) @function
    """)
    captures = function_query.captures(root_node)

    # Extract function information
    functions = []
    formatted_path = path.relative_to("scripts/").as_posix()
    if captures:
        for node in captures["function"]:
            node_text = node.text.decode()
            functions.append({
                "name": f"{formatted_path}:{node.child_by_field_name('name').text.decode()}()",
                "line_count": len(node_text.splitlines()),
                "code": node_text
            })

        # Handle non-function code
        start_pos = max(captures["function"], key=lambda x: x.end_byte).end_byte
        toplevel = code_bytes[start_pos:].decode()
        functions.append({
            "name": f"{formatted_path}",
            "line_count": len(toplevel.splitlines()),
            "code": toplevel,
        })
    else:
        code = code_bytes.decode()
        functions.append({
            "name": f"{formatted_path}",
            "line_count": len(code.splitlines()),
            "code": code,
        })

    return functions

def match(args):
    print(f"""{C.CYAN}info:{C.RESET} parsing decomp database at {args.db_path}""")
    with open(args.db_path, "r") as f:
        db = json.load(f)

    name_indexed = {}
    for function in db["functions"]:
        name_indexed[function["name"]] = function

    matches = []
    file_paths = glob.glob(f"./**/*.cs", root_dir=f"./{args.source_path}", recursive=True)
    print(f"""{C.CYAN}info:{C.RESET} matching to {len(file_paths)} source files""")

    matching_line_count = 0
    for file_path in file_paths:
        with open(Path(args.source_path) / file_path, "r", encoding="utf-8") as file:
            for line in file:
                # Look for the MATCH: pattern
                if "MATCH:" in line:
                    # Extract the content after "MATCH:"
                    match_part = line.split("MATCH:", 1)[1].strip()

                    matching_function = name_indexed[match_part]
                    line_count = matching_function["line_count"]
                    if matching_function:
                        matches.append({
                            "name": match_part,
                            "source": Path(file_path).as_posix(),
                            "line_count": line_count
                        })
                        matching_line_count += line_count

    matches = sorted(matches, key=lambda x: x["name"])
    total_line_count = db["total_line_count"]
    for match in matches:
        print(f'    function {match["name"]} {C.GREEN}matches{C.RESET} {match["source"]}: {match["line_count"]} loc')

    print()
    print(f"Total accuracy of port: {C.GREEN}{(matching_line_count/total_line_count)*100:.2g}%{C.RESET} across {len(db['functions'])} functions")
    print(f"Matched {len(matches)} out of {len(db['functions'])} functions")
    print(f"Matched {matching_line_count} loc out of {total_line_count} loc")


def main(args):
    parser.print_help()

parser = argparse.ArgumentParser(
    prog="decmp",
    description="Tool to assist Anti-Idle decompilation",
)
parser.set_defaults(func=main)
subcommands = parser.add_subparsers(title="generate_db")
sub_match = subcommands.add_parser(
    "generate_db",
    help="Generates the script database.",
)
sub_match.add_argument('swf_path', help='Path to anti-idle .swf file')
sub_match.add_argument('export_path', help='Path to export the scripts to')
sub_match.add_argument('--skip-jpexs', help='Skip the JPEXS processing step and use files from `export_path` directly', action=argparse.BooleanOptionalAction)
sub_match.add_argument('--db-path', help='Where to write the database to', default="decomp_db.json")
sub_match.set_defaults(func=generate_db)

sub_match = subcommands.add_parser(
    "match",
    help="Matches Godot and ActionScript functions, reporting on the total match between original and ported code.",
)
sub_match.add_argument('--db-path', help='Where to read the decompilation databse `decomp_db.json` from', default="decomp_db.json")
sub_match.add_argument('--source-path', help='Path to the Godot source code', default="../src/")
sub_match.set_defaults(func=match)

args = parser.parse_args()
args.func(args)
