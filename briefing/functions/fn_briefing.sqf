private ["_configPath", "_configClasses"];

if (!hasInterface) exitWith {};
_configPath = missionConfigFile >> "Modules" >> "Briefing" >> "Settings";

[_configPath, "Everyone"] call Briefing_fnc_DisassembleConfig;

switch (true) do {
  case (side player == blufor): {
    [_configPath, "Blufor"] call Briefing_fnc_DisassembleConfig;
  };
  case (side player == opfor): {
    [_configPath, "Opfor"] call Briefing_fnc_DisassembleConfig;
  };
  case (side player == independent): {
    [_configPath, "Independent"] call Briefing_fnc_DisassembleConfig;
  };
  case (side player == civilian): {
    [_configPath, "Civilian"] call Briefing_fnc_DisassembleConfig;
  };
};