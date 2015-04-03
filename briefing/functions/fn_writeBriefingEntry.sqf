private ["_configEntry", "_configName", "_configText", "_configNameArray", "_briefingName"];

_configEntry = _this select 0;
_configName = configName _configEntry;
_configText = getText (_configEntry >> "text");

_configNameArray = toArray _configName;
_briefingName = "";

{
  // Underscore
  if (_x == 95) then {
    _briefingName = _briefingName + (toString [32]);  // 32 == Space
  } else {
    _briefingName = _briefingName + (toString [_x]);
  };
} forEach _configNameArray;

player createDiaryRecord ["Diary", [_briefingName, _configText]];