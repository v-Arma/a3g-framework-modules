while { true } do {
  {
    if( isNil { _x getVariable "AntiLoot_var_HasVehicleLockSetting" }) then {
      // Only consider vehicles that are not empty and where none of the crew members are a player.
      if( count crew _x >= 1 && { isPlayer _x } count crew _x == 0 ) then {
        _x setVehicleLock "LOCKEDPLAYER";
      };
      _x setVariable ["AntiLoot_var_HasVehicleLockSetting", true];
    };
  } forEach vehicles;
  sleep 1;
};
