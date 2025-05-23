# Anti-Idle: The Game Godot port
Original game made by Tukkun with contributions from many others.

The intention is to port the game from ActionScript to a more modern language and programming engine, so more people can edit the game's code to their needs, and allow for the game to be playable outside of the antiquated Adobe Flash platform.

Navigation of the repository is outlined below:

## Addons
Godot addons for testing

## Decompile
The assets of decompiled version 1861 of the original game

## Fonts
Fonts from the original game (likely incomplete versions because of decompilation)

## src
Currently ported code

# Standardizations
In order to keep the code uniform no matter what, please adhere to the following:
| Standard | Its correspondent in C# | Common Usage | Replacement in AS2 Code |
| :--- | ---: | ---: | ---: |
| `pos` | Position | `.X .Y` | `_X _Y` |
| `mousepos` | ToLocal(GetViewport().GetMousePosition()) | `.X .Y` | `_xmouse _ymouse` |
| `color` | Modulate | `.R .G .B .A` | `xalpha` |

## Elaboration on Usage
".X" ".Y" for say the Position example mean that you would invoke pos.X or pos.Y to edit such attributes.