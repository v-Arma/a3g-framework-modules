// This is here because safezones might be created dynamically
if( isNil "Safezone_var_Markers" ) exitWith {};

private ["_projectile", "_deleted"];

_projectile = _this select 6;
_deleted = false;

{
  // Check if projectile is inside safe zone
  if( _projectile distance getMarkerPos _x < ( getMarkerSize _x ) select 0) then {
    hint "You can not use weapons inside protection zones!";
    deleteVehicle _projectile;
    _deleted = true;
  };

  // Check if projectile will be inside safe zone next frame
  if( !_deleted ) then {
    if(( position _projectile vectorAdd ( velocity _projectile vectorMultiply 0.02 )) distance getMarkerPos _x < ( getMarkerSize _x ) select 0 ) then {
      hint "You can not fire weapons into a safezone!";
      deleteVehicle _projectile;
      _deleted = true;
    };
  };
} forEach Safezone_var_Markers;

// Continue tracking projectile in non-scheduled environment
if( !_deleted ) then {
  [_projectile] spawn {
    private ["_projectile", "_deleted"];
    _projectile = _this select 0;
    _deleted = false;
    waitUntil {
      {
        if(( position _projectile vectorAdd ( velocity _projectile vectorMultiply 0.02 )) distance getMarkerPos _x < ( getMarkerSize _x ) select 0 ) then {
          hint "You can not fire weapons into a safezone!";
          deleteVehicle _projectile;
          _deleted = true;
        };
      } forEach Safezone_var_Markers;
      if( _deleted ) exitWith { true };
      false
    };
  };
};
