_unit = _this select 0;
_uid = _this select 2;  // steam 64

_found = false;
_corpse = nil;
// find matching corpse, if it exists
{
  if(_x getVariable "explayeruid" == _uid) then {
    _found = true;
    _corpse = _x;
  };
} foreach allDeadMen;

if( !_found ) exitWith {};

