private ["_unit", "_uid"];

_unit = _this select 0;
_uid = _this select 2; // steam 64

missionNamespace setVariable [format ["AntiReslot_var_%1_UID", _uid], _uid];
missionNamespace setVariable [format ["AntiReslot_var_%1_position", _uid], getPosASL _unit];
missionNamespace setVariable [format ["AntiReslot_var_%1_corpse", _uid], _unit];
missionNamespace setVariable [format ["AntiReslot_var_%1_vehicle", _uid], vehicle _unit];
missionNamespace setVariable [format ["AntiReslot_var_%1_inVehicle", _uid], vehicle _unit != _unit];
publicVariable format ["AntiReslot_var_%1_UID", _uid];
publicVariable format ["AntiReslot_var_%1_position", _uid];
publicVariable format ["AntiReslot_var_%1_corpse", _uid];
publicVariable format ["AntiReslot_var_%1_vehicle", _uid];
publicVariable format ["AntiReslot_var_%1_inVehicle", _uid];

// Containers
missionNamespace setVariable [format ["AntiReslot_var_%1_uniform", _uid], uniform _unit];
missionNamespace setVariable [format ["AntiReslot_var_%1_vest", _uid], vest _unit];
missionNamespace setVariable [format ["AntiReslot_var_%1_backpack", _uid], backpack _unit];
publicVariable format ["AntiReslot_var_%1_uniform", _uid];
publicVariable format ["AntiReslot_var_%1_vest", _uid];
publicVariable format ["AntiReslot_var_%1_backpack", _uid];

// Magazines inside weapons
missionNamespace setVariable [format ["AntiReslot_var_%1_weaponMagazines", _uid], primaryWeaponMagazine _unit + secondaryWeaponMagazine _unit + handgunMagazine _unit];
publicVariable format ["AntiReslot_var_%1_weaponMagazines", _uid];

// Weapons
missionNamespace setVariable [format ["AntiReslot_var_%1_weapons", _uid], weapons _unit];
publicVariable format ["AntiReslot_var_%1_weapons", _uid];

// Items & Magazines
missionNamespace setVariable [format ["AntiReslot_var_%1_uniformItems", _uid], uniformItems _unit + uniformMagazines _unit];
missionNamespace setVariable [format ["AntiReslot_var_%1_vestItems", _uid], vestItems _unit + vestMagazines _unit];
missionNamespace setVariable [format ["AntiReslot_var_%1_backpackItems", _uid], backpackItems _unit + backpackMagazines _unit];
publicVariable format ["AntiReslot_var_%1_uniformItems", _uid];
publicVariable format ["AntiReslot_var_%1_vestItems", _uid];
publicVariable format ["AntiReslot_var_%1_backpackItems", _uid];

// Linked Items
missionNamespace setVariable [format ["AntiReslot_var_%1_assignedItems", _uid], assignedItems _unit + [headgear _unit] + [goggles _unit]];
publicVariable format ["AntiReslot_var_%1_assignedItems", _uid];