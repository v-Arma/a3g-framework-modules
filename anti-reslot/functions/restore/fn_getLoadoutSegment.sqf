private ["_variableName", "_uid"];

_variableName = _this select 0;
_uid = _this select 1;

// Return
missionNamespace getVariable format ["AntiReslot_var_%1_%2", _uid, _variableName]