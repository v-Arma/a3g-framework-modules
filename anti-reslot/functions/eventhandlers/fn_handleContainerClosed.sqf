private ["_unit", "_uid"];

_unit = _this select 0;
_uid = _unit getVariable "AntiReslot_var_UID";

// Save gear again
[_unit, _uid] call AntiReslot_fnc_SaveGear;