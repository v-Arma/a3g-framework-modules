if ( !isServer ) exitWith {};

addMissionEventHandler ["HandleDisconnect", A3G_AntiReslot_fnc_HandleDisconnect];
addStackedEventHandler ["onPlayerConnected", A3G_AntiReslot_fnc_HandleJoin];
