if ( !isServer ) exitWith {};

addMissionEventHandler ["HandleDisconnect", AntiReslot_fnc_HandleDisconnect];
["AntiReslot_var_EventID", "onPlayerConnected", AntiReslot_fnc_HandleJoin] call bis_fnc_addStackedEventHandler;