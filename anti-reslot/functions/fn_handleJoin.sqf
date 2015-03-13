_unit = _this select 0;
_uid = _this select 2;  // steam 64

_found = false;
_corpse = nil;
// find matching corpse, if it exists
{
  if(_x getVariable "AntiReslot_var_UID" == _uid) then {
    _found = true;
    _corpse = _x;
  };
} foreach allDeadMen;

if( !_found ) exitWith {};

_unit setPos ( position _corpse );
deleteVehicle _corpse;

/*

// restore gear
*
SonixApache's LootBag script 0.1b - Copy all the shit a dead guy has and stuffs it in a box.
Based on Comfy's Loot Prevention script ( http://pastebin.com/ZqakyDNr )
*/
/*

if (!isServer) exitWith {};

        com_bag =
        {
                //Set up params, create a box
                _unit = _this select 0;
                _box =  "Box_IND_Ammo_F" createVehicle (position _unit);
                ClearWeaponCargoGlobal _box;
                ClearMagazineCargoGlobal _box;
                _UnitRadios = [_unit] call acre_api_fnc_getCurrentRadioList;
                _UnitWeapons = weapons _unit;
                _UnitItems = items _unit;
                _UnitAssignedItems = assignedItems _unit;
                _UnitGunItems = primaryWeaponItems _unit;
                _UnitMagazines = magazines _unit;

                //Fill box with copies of stuff in unit's inventory
                {_box addItemCargoGlobal [_x,1]} forEach _UnitItems;
                {_box addItemCargoGlobal [_x,1]} forEach _UnitAssignedItems;
                {_box addWeaponCargoGlobal [_x,1]} forEach _UnitWeapons;
                {_box addMagazineCargoGlobal [_x,1]} forEach _UnitMagazines;
                {_box addItemCargoGlobal [_x,1]} forEach _UnitGunItems;
                {_box addWeaponCargoGlobal [_x,1]} forEach _UnitRadios;
                {_box addItemCargoGlobal [_x,1]} forEach _UnitRadios;

                sleep 1;

                //remove remove
                removeAllWeapons _unit;
                removeAllItems _unit;
                removeBackpack _unit;

                _unit unlinkItem "ItemGPS";
                _unit unlinkItem "ItemMap";
                _unit unlinkItem "ItemRadio";
                _unit unlinkItem "ItemWatch";
                _unit unlinkItem "ItemCompass";
                _unit unlinkItem "NVGoggles";
                _unit unlinkItem "NVGoggles_INDEP";
                _unit unlinkItem "NVGoggles_OPFOR";
                {_unit removeWeapon _x} forEach (call acre_api_fnc_getCurrentRadioList);
                removeVest _unit;
                removeUniform _unit;
                removeHeadgear _unit;
                removeGoggles _unit;
        };

while {true} do
        {
                sleep 2;
                        {
                         if (_x in switchableUnits || _x in playableUnits) then
                                {
                                if (isNil {_x getVariable "com_bag"}) then
                                        {
                                        _x setVariable ["com_bag", 1, false];
                                        _x addEventHandler ["killed", {[_this select 0] spawn com_bag}];
                                        };
                                };
                        } forEach allUnits;
        };
// restore agm medical status
*/