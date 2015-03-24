# Safezone
A robust safezone system to prevent unfortunate accidents in base and similar situations.

## Usage
- Make a circular marker. It should be a circle and not an oval. Give it a name.
- Run a global (all machines, including server) script `["markerName"] call Safezone_fnc_MakeSafezone`.
- You can add a second parameter to determine if you want small arrow objects to spawn to indicate the size of the safezone in the game world. Like this: `["markerName", true] call Safezone_fnc_MakeSafezone`.
