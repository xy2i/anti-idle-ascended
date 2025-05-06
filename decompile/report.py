#!/usr/bin/env python3

import os
import re
import time
import json
import argparse
import concurrent.futures
import threading
from watchdog.observers import Observer
from watchdog.events import FileSystemEventHandler
from http.server import HTTPServer, SimpleHTTPRequestHandler
import socketserver
import websockets
import asyncio


def process_file(file_path):
    """Process a single file and return its info."""
    try:
        # Only open the file to read the first line for status
        with open(file_path, "r") as f:
            first_line = f.readline().strip()

        # Check if the first line contains status information
        status_pattern = re.compile(r"^//!\s*status\s*=\s*(\w+)", re.IGNORECASE)
        match = status_pattern.match(first_line)

        if not match:
            return None  # Skip files without status

        status = match.group(1).lower()

        # Count lines efficiently using wc -l for Unix or alternative for Windows
        if os.name == 'posix':  # Unix/Linux/Mac
            # Use wc -l for very fast line counting
            line_count = int(os.popen(f"wc -l < '{file_path}'").read().strip()) - 1  # Subtract status line
        else:
            # Faster line counting for Windows
            with open(file_path, 'rb') as f:
                # Skip first line (already read)
                f.readline()
                # Count remaining non-empty lines
                line_count = sum(1 for line in f if line.strip())

        filename = os.path.basename(file_path)

        # Apply status normalization - if not in our known statuses, treat as "done"
        if status not in ["pending", "progress", "done"]:
            status = "done"

        return (filename, line_count, status)
    except Exception as e:
        print(f"Error processing {file_path}: {e}")
        return None


def generate_report(scripts_dir, output_filename="report.html"):
    """Generate a report from the script files."""
    # Get all file paths
    file_paths = []
    for filename in os.listdir(scripts_dir):
        file_path = os.path.join(scripts_dir, filename)
        if os.path.isfile(file_path):
            file_paths.append(file_path)

    # Process files in parallel
    files_info = []
    line_counts_by_status = {"pending": 0, "progress": 0, "done": 0}

    # Use ThreadPoolExecutor for I/O-bound tasks
    with concurrent.futures.ThreadPoolExecutor() as executor:
        # Submit all file processing tasks and collect future objects
        future_to_file = {executor.submit(process_file, file_path): file_path for file_path in file_paths}

        # Process results as they complete
        for future in concurrent.futures.as_completed(future_to_file):
            result = future.result()
            if result:
                filename, line_count, status = result
                files_info.append((filename, line_count, status))
                line_counts_by_status[status] += line_count

    # Generate the HTML report
    generate_html_report(files_info, line_counts_by_status, output_filename)
    print(f"HTML report generated: {output_filename}")
    return files_info, line_counts_by_status


def generate_html_report(files_info, line_counts_by_status, output_filename):
    """
    Creates an HTML file showing:
      - A summary table of total lines (with percentages) for each status
      - A progress bar reflecting distribution of lines by status
      - A detailed table listing each file, with background color based on status
    """
    total_lines = sum(line_counts_by_status.values())
    if total_lines == 0:
        # Avoid division by zero if no lines are found
        total_lines = 1

    # Calculate percentages
    pending_percent = (line_counts_by_status["pending"] / total_lines) * 100
    progress_percent = (line_counts_by_status["progress"] / total_lines) * 100
    done_percent = (line_counts_by_status["done"] / total_lines) * 100

    # Define background colors for each status (lighter tints to avoid clashing with text)
    status_bg_colors = {
        "pending": "#fff9e6",  # light yellow
        "progress": "#e6f9ff",  # light teal
        "done": "#e6ffe6",  # light green
    }

    # Add timestamp for display
    current_time = time.strftime("%Y-%m-%d %H:%M:%S")

    # Get the status priority for sorting (reversed to get done first, then progress, then pending)
    def get_status_priority(item):
        status = item[2]
        if status == "done":
            return 0
        elif status == "progress":
            return 1
        else:  # pending
            return 2

    # Sort files by status priority
    files_info_sorted = sorted(files_info, key=get_status_priority)

    # Create the detailed table rows
    table_rows = ""
    for filename, line_count, status in files_info_sorted:
        bg_color = status_bg_colors.get(status, "#ffffff")  # default white if not recognized
        table_rows += f"""
  <tr style='background-color: {bg_color};'>
    <td>{filename}</td>
    <td data-value="{line_count}">{line_count}</td>
    <td>{status.capitalize()}</td>
  </tr>"""

    # Generate the complete HTML with an f-string
    html_content = f"""<!DOCTYPE html>
<html>
<head>
  <meta charset='utf-8' />
  <link rel="icon" href="favicon.ico" />
  <title>Scripts Status Report</title>
  
  <script>
    document.addEventListener('DOMContentLoaded', function() {{
      const ws = new WebSocket(`ws://${{window.location.hostname}}:8001`);
      ws.onmessage = function(event) {{
        const data = JSON.parse(event.data);
        if (data.type === 'reload') {{
          console.log('Received reload signal. Refreshing page...');
          window.location.reload();
        }}
      }};
      ws.onclose = function() {{
        console.log('WebSocket connection closed. Attempting to reconnect in 5 seconds...');
        setTimeout(function() {{
          window.location.reload();
        }}, 5000);
      }};
      
      // Add table sorting functionality
      document.querySelectorAll('table.sortable th').forEach(headerCell => {{
        headerCell.addEventListener('click', () => {{
          const tableElement = headerCell.parentElement.parentElement.parentElement;
          const headerIndex = Array.prototype.indexOf.call(headerCell.parentElement.children, headerCell);
          const currentIsAscending = headerCell.classList.contains('th-sort-asc');

          // Remove sort classes from all headers
          tableElement.querySelectorAll('th').forEach(th => {{
            th.classList.remove('th-sort-asc', 'th-sort-desc');
          }});
          
          // Add appropriate sort class to clicked header
          headerCell.classList.toggle('th-sort-asc', !currentIsAscending);
          headerCell.classList.toggle('th-sort-desc', currentIsAscending);

          // Get table body and rows
          const tableBody = tableElement.querySelector('tbody');
          const rows = Array.from(tableBody.querySelectorAll('tr'));

          // Sort rows
          const sortedRows = rows.sort((a, b) => {{
            const aColText = a.querySelector(`td:nth-child(${{headerIndex + 1}})`);
            const bColText = b.querySelector(`td:nth-child(${{headerIndex + 1}})`);
            
            // Check if we're dealing with numbers
            if (aColText.hasAttribute('data-value') && bColText.hasAttribute('data-value')) {{
              const aValue = parseFloat(aColText.getAttribute('data-value'));
              const bValue = parseFloat(bColText.getAttribute('data-value'));
              return currentIsAscending ? bValue - aValue : aValue - bValue;
            }} else {{
              // Text comparison
              const aVal = aColText.textContent.trim();
              const bVal = bColText.textContent.trim();
              return currentIsAscending 
                ? bVal.localeCompare(aVal, undefined, {{numeric: true, sensitivity: 'base'}})
                : aVal.localeCompare(bVal, undefined, {{numeric: true, sensitivity: 'base'}});
            }}
          }});

          // Remove existing rows
          while (tableBody.firstChild) {{
            tableBody.removeChild(tableBody.firstChild);
          }}

          // Add sorted rows
          tableBody.append(...sortedRows);
        }});
      }});
    }});
  </script>
  
  <style>
    body {{ font-family: sans-serif; margin: 20px; }}
    table {{ border-collapse: collapse; margin-bottom: 30px; width: 100%; }}
    th, td {{ border: 1px solid #aaa; padding: 8px; }}
    th {{ background: #f0f0f0; cursor: pointer; position: relative; }}
    th:hover {{ background: #e0e0e0; }}
    h2, h1 {{ margin-top: 20px; }}
    .timestamp {{ color: #666; font-size: 0.8em; margin-bottom: 20px; }}
    
    /* Progress bar styling */
    .progress-container {{ width: 100%; background: #eee; height: 20px; margin-bottom: 20px; }}
    .progress-bar {{ float: left; height: 100%; }}
    .pending-bar {{ background: #ffc107; }}    /* Yellow-ish */
    .progress-bar-ongoing {{ background: #17a2b8; }} /* Teal-ish */
    .done-bar {{ background: #28a745; }}       /* Green */
    
    /* Sort indicators */
    .th-sort-asc::after, .th-sort-desc::after {{
      margin-left: 5px;
      content: "";
      width: 0;
      height: 0;
      border-left: 5px solid transparent;
      border-right: 5px solid transparent;
      display: inline-block;
    }}
    .th-sort-asc::after {{
      border-bottom: 5px solid black;
    }}
    .th-sort-desc::after {{
      border-top: 5px solid black;
    }}
  </style>
</head>
<body>
  <h1>Scripts Status Report</h1>
  <div class='timestamp'>Last updated: {current_time}</div>

  <!-- Summary table with percentages -->
  <table id="summary-table" class="sortable">
    <thead>
      <tr><th>Status</th><th>Total Lines</th></tr>
    </thead>
    <tbody>
      <tr><td>Pending</td><td data-value="{line_counts_by_status['pending']}">{line_counts_by_status['pending']} ({pending_percent:.2f}%)</td></tr>
      <tr><td>In progress</td><td data-value="{line_counts_by_status['progress']}">{line_counts_by_status['progress']} ({progress_percent:.2f}%)</td></tr>
      <tr><td>Done</td><td data-value="{line_counts_by_status['done']}">{line_counts_by_status['done']} ({done_percent:.2f}%)</td></tr>
      <tr><td><strong>Total</strong></td><td data-value="{sum(line_counts_by_status.values())}"><strong>{sum(line_counts_by_status.values())}</strong></td></tr>
    </tbody>
  </table>

  <!-- Progress bar -->
  <div class='progress-container'>
    <div class='progress-bar pending-bar' style='width: {pending_percent}%;'></div>
    <div class='progress-bar progress-bar-ongoing' style='width: {progress_percent}%;'></div>
    <div class='progress-bar done-bar' style='width: {done_percent}%;'></div>
  </div>

  <!-- Detailed table listing each file -->
  <table id="files-table" class="sortable">
    <thead>
      <tr><th>Filename</th><th>Lines of Code</th><th>Status</th></tr>
    </thead>
    <tbody>{table_rows}
    </tbody>
  </table>
</body>
</html>
"""

    with open(output_filename, "w") as out:
        out.write(html_content)


# Global set to store connected WebSocket clients
connected_clients = set()


async def websocket_handler(websocket):
    """Handle WebSocket connections."""
    # Register new client
    connected_clients.add(websocket)
    try:
        await websocket.wait_closed()
    finally:
        # Remove client on disconnect
        connected_clients.remove(websocket)


async def send_reload_signal():
    """Send reload signal to all connected WebSocket clients."""
    if connected_clients:
        message = json.dumps({"type": "reload"})
        # Send to all connected clients
        await asyncio.gather(
            *[client.send(message) for client in connected_clients]
        )
        print(f"Reload signal sent to {len(connected_clients)} connected clients")


async def start_websocket_server():
    async with websockets.serve(websocket_handler, "0.0.0.0", 8001) as server:
        print(f"WebSocket server started on ws://localhost:8001")
        await server.serve_forever()


class ThreadedHTTPServer(socketserver.ThreadingMixIn, HTTPServer):
    """Handle requests in a separate thread."""
    pass


def start_http_server(port, directory="."):
    """Start an HTTP server to serve the report."""
    os.chdir(directory)
    handler = SimpleHTTPRequestHandler
    httpd = ThreadedHTTPServer(("", port), handler)
    print(f"Starting HTTP server on http://localhost:{port}")
    print(f"View report at http://localhost:{port}/{os.path.basename('report.html')}")
    httpd.serve_forever()


class ScriptChangeHandler(FileSystemEventHandler):
    def __init__(self, scripts_dir, report_file, websocket_port):
        self.scripts_dir = scripts_dir
        self.report_file = report_file
        self.websocket_port = websocket_port
        self.last_update_time = 0
        self.debounce_interval = 2  # seconds

    def on_modified(self, event):
        # Only respond to file modifications, not directory changes
        if not event.is_directory:
            current_time = time.time()
            if event.src_path.endswith("~"):return

            # Debounce to prevent multiple rapid updates
            if current_time - self.last_update_time > self.debounce_interval:
                self.last_update_time = current_time
                # Check if the file has a status header by reading just the first line
                try:
                    with open(event.src_path, 'r') as f:
                        first_line = f.readline().strip()
                        if re.match(r"^//!\s*status\s*=\s*(\w+)", first_line, re.IGNORECASE):
                            print(f"File modified: {event.src_path}, regenerating report...")
                            generate_report(self.scripts_dir, self.report_file)

                            # Send reload signal to connected clients
                            asyncio.run(send_reload_signal())
                except Exception as e:
                    print(f"Error checking header in {event.src_path}: {e}")


def run_server_mode(scripts_dir, report_file, http_port, websocket_port):
    """Run in server mode, watching for file changes and serving the report."""
    # Initial report generation
    generate_report(scripts_dir, report_file)

    # Start WebSocket server in a separate thread
    ws = threading.Thread(target=asyncio.run, args=(start_websocket_server(),))
    ws.daemon = True
    ws.start()

    # Start HTTP server in a separate thread
    server_thread = threading.Thread(target=start_http_server, args=(http_port, os.path.dirname(os.path.abspath(report_file))))
    server_thread.daemon = True
    server_thread.start()

    # Set up file system observer
    event_handler = ScriptChangeHandler(scripts_dir, report_file, websocket_port)
    observer = Observer()
    observer.schedule(event_handler, scripts_dir, recursive=False)
    observer.start()

    try:
        print(f"Watching directory {scripts_dir} for changes. Press Ctrl+C to stop.")
        while True:
            time.sleep(1)
    except KeyboardInterrupt:
        observer.stop()
    observer.join()


def main():
    parser = argparse.ArgumentParser(description='Generate a status report for script files.')
    parser.add_argument('--server', action='store_true', help='Run in server mode, watching for file changes')
    parser.add_argument('--http-port', type=int, default=8000, help='Port for HTTP server when in server mode')
    parser.add_argument('--ws-port', type=int, default=8001, help='Port for WebSocket server when in server mode')
    parser.add_argument('--dir', default='./scripts/', help='Directory containing scripts')
    parser.add_argument('--output', default='report.html', help='Output HTML report file')
    args = parser.parse_args()

    if args.server:
        # Check if required packages are installed
        try:
            import watchdog
            import websockets
        except ImportError as e:
            missing_pkg = str(e).split("'")[1]
            print(f"Error: {missing_pkg} package is required for server mode.")
            print(f"Please install it using: pip install {missing_pkg}")
            return

        run_server_mode(args.dir, args.output, args.http_port, args.ws_port)
    else:
        # Just generate the report once
        generate_report(args.dir, args.output)


if __name__ == "__main__":
    main()