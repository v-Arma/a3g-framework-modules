private ["_uid"];

_uid = _this select 0;


// Remove gear
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;


// Containers
player forceAddUniform ( ["uniform", _uid] call AntiReslot_fnc_GetLoadoutSegment );
player addVest ( ["vest", _uid] call AntiReslot_fnc_GetLoadoutSegment );
player addBackpack ( ["backpack", _uid] call AntiReslot_fnc_GetLoadoutSegment );
{ player removeItemFromBackpack _x; } forEach backpackItems player;


// Weapons + loaded magazines
{ player addMagazine _x; } forEach ( ["weaponMagazines", _uid] call AntiReslot_fnc_GetLoadoutSegment );
{ player addWeapon _x; } forEach ( ["weapons", _uid] call AntiReslot_fnc_GetLoadoutSegment );


// Items & Magazines
{ player addItemToUniform _x; } forEach ( ["uniformItems", _uid] call AntiReslot_fnc_GetLoadoutSegment );
{ player addItemToVest _x; } forEach ( ["vestItems", _uid] call AntiReslot_fnc_GetLoadoutSegment );
{ player addItemToBackpack _x; } forEach ( ["backpackItems", _uid] call AntiReslot_fnc_GetLoadoutSegment );


// Linked Items
{ player linkItem _x; } forEach ( ["linkedItems", _uid] call AntiReslot_fnc_GetLoadoutSegment );