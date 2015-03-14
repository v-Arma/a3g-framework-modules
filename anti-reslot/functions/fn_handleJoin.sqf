if ( isDedicated ) exitWith {};

private ["_uid"];

_uid = getPlayerUID player;  // steam 64

if(["UID", _uid] call AntiReslot_fnc_GetLoadoutSegment == _uid) then {
  [_uid] call AntiReslot_fnc_RestoreState;
};