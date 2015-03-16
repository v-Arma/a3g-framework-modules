private ["_uid", "_vehicle"];

_uid = _this select 0;

if ( ["inVehicle", _uid] call AntiReslot_fnc_GetLoadoutSegment ) then {
  // TODO: figure out which specific slot in a vehicle this guy occupied and try and match him into it
  _vehicle = ["vehicle", _uid] call AntiReslot_fnc_GetLoadoutSegment;
  [_vehicle] spawn AntiReslot_fnc_WaitForFreeSlot;
} else {
  player setPosASL ( ["posASL", _uid] call AntiReslot_fnc_GetLoadoutSegment );
};