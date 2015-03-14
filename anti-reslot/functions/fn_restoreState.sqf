_unit = _this select 0;
_uid = getPlayerUID _unit;

// Remove gear
removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;
removeGoggles _unit;


// Delete corresponding corpse if exists
deleteVehicle ( missionNamespace getVariable format ["AntiReslot_var_%1_corpse", _uid] );

// Position
// TODO: Needs a check for putting people in a vehicle instead
_unit setPos ( missionNamespace getVariable format ["AntiReslot_var_%1_position", _uid] );

// Containers
_unit forceAddUniform ( missionNamespace getVariable format["AntiReslot_var_%1_uniform", _uid] );
_unit addVest ( missionNamespace getVariable format ["AntiReslot_var_%1_vest", _uid] );
_unit addBackpack ( missionNamespace getVariable format ["AntiReslot_var_%1_backpack", _uid] );
{ _unit removeItemFromBackpack _x; } forEach backpackItems _unit;

// Magazines inside weapons
{ _unit addMagazine _x; } forEach ( missionNamespace getVariable format ["AntiReslot_var_%1_weaponMagazines", _uid] );

// Weapons
{ _unit addWeapon _x; } forEach ( missionNamespace getVariable format ["AntiReslot_var_%1_weapons", _uid] );

// Items & Magazines
{ _unit addItemToUniform _x; } forEach ( missionNamespace getVariable format ["AntiReslot_var_%1_uniformItems", _uid] );
{ _unit addItemToVest _x; } forEach ( missionNamespace getVariable format ["AntiReslot_var_%1_vestItems", _uid] );
{ _unit addItemToBackpack _x; } forEach ( missionNamespace getVariable format ["AntiReslot_var_%1_backpackItems", _uid] );

// Linked Items
{ _unit linkItem _x; } forEach ( missionNamespace getVariable format ["AntiReslot_var_%1_assignedItems", _uid] );