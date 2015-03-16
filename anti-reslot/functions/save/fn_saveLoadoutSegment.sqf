private ["_uid", "_variable", "_variableName"];

_variable = _this select 0;
_variableName = _this select 1;
_uid = _this select 2;

missionNamespace setVariable [format ["AntiReslot_var_%1_%2", _uid, _variableName], _variable];
publicVariable format ["AntiReslot_var_%1_%2", _uid, _variableName];