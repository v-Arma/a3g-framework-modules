private ["_configPath", "_configClasses"];

_configPath = _this select 0;
_configClasses = "true" configClasses (_configPath >> (_this select 1));

for [{_i = (count _configClasses) - 1}, {_i >= 0}, {_i = _i - 1}] do {
  [_configClasses select _i] call Briefing_fnc_WriteBriefingEntry;
};