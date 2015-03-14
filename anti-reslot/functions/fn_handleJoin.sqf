private ["_found", "_uid"];

if ( isDedicated ) exitWith {};

_uid = getPlayerUID player;  // steam 64

_found = false;
if(missionNamespace getVariable format["AntiReslot_var_%1_UID", _uid] == _uid) then {
  _found = true;
};

if( _found ) then {
  [player] call AntiReslot_fnc_RestoreState;
};