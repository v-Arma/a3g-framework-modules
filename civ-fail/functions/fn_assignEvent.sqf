private ["_allAi"];

while { true } do {
  _allAi = allUnits - ( playableUnits + switchableUnits );
  {
    if(isNil { _x getVariable "CivFail_var_HasEH" } && {side _x == civilian} && {!captive _x}) then {
      _x addEventHandler ["Killed", CivFail_fnc_HandleDeath];
      _x setVariable ["CivFail_var_HasEH", true];
    };
  } forEach _allAi;
  sleep 1;
};
