private ["_vehicle"];

_vehicle = _this select 0;

player sideChat "Waiting for free slot in vehicle... You will be teleported ASAP.";
_vehicle vehicleChat "There is a JIP waiting to be teleported into your vehicle, please make some room for him.";

while { vehicle player != _vehicle && alive _vehicle } do {
  switch (true) do {
    case (_vehicle emptyPositions "driver" > 0): { player moveInDriver _vehicle; };
    case (_vehicle emptyPositions "commander" > 0): { player moveInCommander _vehicle; };
    case (_vehicle emptyPositions "gunner" > 0): { player moveInGunner _vehicle; };
    case (_vehicle emptyPositions "cargo" > 0): { player moveInCargo _vehicle; };
  };
  sleep 1;
};

if ( !alive _vehicle ) then {
  player sideChat "Looks like your teleport vehicle died. Aborting....";
};