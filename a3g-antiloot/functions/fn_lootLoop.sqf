private ["_allAi"];

while { true } do {
  _allAi = allUnits - ( playableUnits + switchableUnits );
  {
    if( isNil { _x getVariable "A3G_AntiLoot_var_HasLootEH" }) then {
      _x addEventHandler ["Killed", A3G_AntiLoot_fnc_RemoveLoot];
      _x setVariable ["A3G_AntiLoot_var_HasLootEH", true];
    };
  } forEach _allAi;
  sleep 1;
};
