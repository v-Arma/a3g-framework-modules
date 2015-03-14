private ["_uid"];

_uid = _this select 0; // steam 64


// Restore position and/or put unit back to his vehicle
[_uid] call AntiReslot_fnc_RestorePosition;


// Restore gear
[_uid] call AntiReslot_fnc_RestoreGear;


// Delete corpse
deleteVehicle ( ["body", _uid] call AntiReslot_fnc_GetLoadoutSegment );