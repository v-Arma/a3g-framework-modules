private ["_deathlimit", "_killer"];

_killer = _this select 1;

if (isNil "CivFail_var_DeathCounter") then {
  CivFail_var_DeathCounter = 0;
};

// Only count kill if the killer is a player
if (!isPlayer _killer) exitWith {};

CivFail_var_DeathCounter = CivFail_var_DeathCounter + 1;
_deathLimit = getNumber (missionConfigFile >> "Modules" >> "CivFail" >> "Settings" >> "CivFail_var_DeathLimit");

[["CivFail", [format ["%1 killed a civilian!", name _killer], format ["%1/%2", CivFail_var_DeathCounter, _deathLimit]]], "bis_fnc_shownotification", true] call bis_fnc_mp;

if (CivFail_var_DeathCounter >= _deathLimit) then {
  [["CivFail", false], "bis_fnc_endMission", true, true] call BIS_fnc_MP;
};
