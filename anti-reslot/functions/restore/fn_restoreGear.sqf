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


// Find Gear
_uniform = ["uniform", _uid] call AntiReslot_fnc_GetLoadoutSegment;
_vest = ["vest", _uid] call AntiReslot_fnc_GetLoadoutSegment;
_backpack = ["backpack", _uid] call AntiReslot_fnc_GetLoadoutSegment;

_weaponMagazines = ["weaponMagazines", _uid] call AntiReslot_fnc_GetLoadoutSegment;
_weapons = ["weapons", _uid] call AntiReslot_fnc_GetLoadoutSegment;

_uniformItems = ["uniformItems", _uid] call AntiReslot_fnc_GetLoadoutSegment;
_vestItems = ["vestItems", _uid] call AntiReslot_fnc_GetLoadoutSegment;
_backpackItems = ["backpackItems", _uid] call AntiReslot_fnc_GetLoadoutSegment;

_linkedItems = ["linkedItems", _uid] call AntiReslot_fnc_GetLoadoutSegment;


// Add gear
// Containers
player forceAddUniform ( _uniform );
player addVest ( _vest );
player addBackpack ( _backpack );
{ player removeItemFromBackpack _x; } forEach backpackItems player;

// Weapons + loaded magazines
{ player addMagazine _x; } forEach ( _weaponMagazines );
{ player addWeapon _x; } forEach ( _weapons );

// Items & Magazines
{ player addItemToUniform _x; } forEach ( _uniformItems );
{ player addItemToVest _x; } forEach ( _vestItems );
{ player addItemToBackpack _x; } forEach ( _backpackItems );

// Linked Items
{ player linkItem _x; } forEach ( _linkedItems );