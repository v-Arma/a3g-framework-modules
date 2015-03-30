private ["_deathlimit"];

if (isNil "CivFail_var_DeathCounter") then {
  CivFail_var_DeathCounter = 0;
};

CivFail_var_DeathCounter = CivFail_var_DeathCounter + 1;

_deathLimit = getNumber (missionConfigFile >> "Modules" >> "CivFail" >> "Settings" >> "CivFail_var_DeathLimit");

if (CivFail_var_DeathCounter >= _deathLimit) then {
  [["CivFail", false], "bis_fnc_endMission", true, true] call BIS_fnc_MP;
};
