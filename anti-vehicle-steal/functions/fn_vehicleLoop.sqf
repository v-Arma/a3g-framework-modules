while {true} do {
  {
    if (isNil {_x getVariable "AntiVehicleSteal_var_HasVehicleLockSetting"}) then {
      // Only consider vehicles that are not empty and where none of the crew members are a player.
      // Also make sure they're not a UAV
      if (count crew _x >= 1 && {isPlayer _x} count crew _x == 0 && !(_x in allUnitsUAV)) then {
        _x setVehicleLock "LOCKEDPLAYER";
      };
      _x setVariable ["AntiVehicleSteal_var_HasVehicleLockSetting", true];
    };
  } forEach vehicles;
  sleep 1;
};
