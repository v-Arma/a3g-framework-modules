private ["_allAi"];

while { true } do {
  _allAi = allUnits - ( playableUnits + switchableUnits );
  {
    if(side _x == civilian && isNil { _x getVariable "CivFail_var_HasEH" }) then {
      _x addEventHandler ["Killed", CivFail_fnc_HandleDeath];
      _x setVariable ["CivFail_var_HasEH", true];
    };
  } forEach _allAi;
  sleep 1;
};
