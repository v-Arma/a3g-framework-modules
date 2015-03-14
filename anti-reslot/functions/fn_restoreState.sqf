private ["_unit", "_uid", "_vehicle"];

_unit = _this select 0;
_uid = getPlayerUID _unit; // steam 64

// Remove gear
removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;
removeGoggles _unit;

// TODO: Needs a check to see what has been looted, to prevent people duplicating equipment
// Delete corresponding corpse if exists
deleteVehicle ( missionNamespace getVariable format ["AntiReslot_var_%1_corpse", _uid] );

// Position
if ( missionNamespace getVariable format ["AntiReslot_var_%1_inVehicle", _uid] ) then {
  // TODO: figure out which specific slot in a vehicle this guy occupied and try and match him into it
  _vehicle = missionNamespace getVariable format ["AntiReslot_var_%1_vehicle", _uid];
  switch (true) do {
      case (_vehicle emptyPositions "driver" > 0): { _unit moveInDriver _vehicle; };
      case (_vehicle emptyPositions "commander" > 0): { _unit moveInCommander _vehicle; };
      case (_vehicle emptyPositions "gunner" > 0): { _unit moveInGunner _vehicle; };
      case (_vehicle emptyPositions "cargo" > 0): { _unit moveInCargo _vehicle; };
      case (_vehicle emptyPositions "cargo" == 0): { [_unit, _vehicle] spawn AntiReslot_fnc_WaitForFreeSlot; };
  };
} else {
  _unit setPosASL ( missionNamespace getVariable format ["AntiReslot_var_%1_position", _uid] );
};

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