private ["_vehicle"];

_vehicle = _this select 0;

if (((_vehicle emptyPositions "driver") +
(_vehicle emptyPositions "commander") +
(_vehicle emptyPositions "gunner") +
(_vehicle emptyPositions "cargo")) == 0 ) then {
  if ( alive _vehicle ) then {
    player sideChat "The vehicle you were in before you left is full, waiting for a free slot. The crew of the vehicle has been informed...";
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

  } else {
    player sideChat "The vehicle you were in before you left is destroyed, teleporting you close to the wreckage instead";
    player setPos ( position _vehicle vectorAdd (vectorNormalized [(random 1) - 0.5, (random 1) - 0.5, 0] vectorMultiply 10) );
    player setDir ( player setVectorDir ( position _vehicle vectorDiff position player ) );
  };
};