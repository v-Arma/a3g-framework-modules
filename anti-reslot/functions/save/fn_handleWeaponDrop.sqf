private ["_unit", "_uid", "_holder"];

_unit = _this select 0;
_uid = _this select 1;

// Workaround for primary and secondary weapon being dropped on death.
// Delete them, then spawn new instances in seperate groundWeaponHolder

// Make sure unit is out of the vehicle, or when the vehicle dies it doesn't matter anymore.
waitUntil { vehicle _unit isKindOf "CAManBase" };
// TODO: THIS SHIT IS FUCKED, FIX IT

// If unit ejected, then we need to spawn the weapons in the holder
if ( vehicle _unit isKindOf "CAManBase" ) then {
  // Save gear again
  [_unit, _uid] call AntiReslot_fnc_SaveGear;

  hint "wrong place";

  _holder = createVehicle ["WeaponHolderSimulated", position _unit, [], 0, "CAN_COLLIDE"];
  _holder addWeaponCargoGlobal [primaryWeapon _unit, 1];
  _holder addWeaponCargoGlobal [secondaryWeapon _unit, 1];

  // We add the magazine too, just in case the unit is filled to the brim and can not take another magazine
  _holder addMagazineCargoGlobal [primaryWeaponMagazine _unit select 0, 1];
  _holder addMagazineCargoGlobal [secondaryWeaponMagazine _unit select 0, 1];

  // Complete workaround by deleting the weapons off the unit before it dies
  _unit removeWeapon ( primaryWeapon _unit );
  _unit removeWeapon ( secondaryWeapon _unit );
}
// If vehicle died, we just delete the corpse, to make absolutey sure nobody can access their stuff anymore.
else {
  deleteVehicle _unit;
};