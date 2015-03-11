if (!alive player && count (playableUnits + switchableUnits) == 0) then {
  [["Loser", false], "bis_fnc_endMission", true, true] call BIS_fnc_MP;
};

_this call A3G_SpectatorCam_fnc_InitCam;
