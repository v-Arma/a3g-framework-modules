private ["_unit", "_uid"];

_unit = _this select 0;
_uid = _this select 2; // steam 64


// Add EventHandler to track inventory changes
_unit addEventHandler ["ContainerClosed", AntiReslot_fnc_HandleContainerClosed];
_unit setVariable ["AntiReslot_var_UID", _uid, true];


// Save gear
[_unit, _uid] call AntiReslot_fnc_SaveGear;


// Handle dropping of weapons
[_unit, _uid] spawn AntiReslot_fnc_HandleWeaponDrop;