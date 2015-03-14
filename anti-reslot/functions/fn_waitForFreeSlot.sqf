private ["_unit", "_vehicle"];

_unit = _this select 0;
_vehicle = _this select 1;

_unit sideChat "Waiting for free slot in vehicle... You will be teleported ASAP.";
_vehicle vehicleChat "There is a JIP waiting to be teleported into your vehicle, please make some space.";

while { vehicle _unit == _unit } do {
  switch (true) do {
    case (_vehicle emptyPositions "driver" > 0): { _unit moveInDriver _vehicle; };
    case (_vehicle emptyPositions "commander" > 0): { _unit moveInCommander _vehicle; };
    case (_vehicle emptyPositions "gunner" > 0): { _unit moveInGunner _vehicle; };
    case (_vehicle emptyPositions "cargo" > 0): { _unit moveInCargo _vehicle; };
  };
  sleep 1;
};