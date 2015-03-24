_missionTitle = if ( isLocalized "A3GFramework_str_missionNameShort" ) then {
  localize "A3GFramework_str_missionNameShort"
} else {
  getText (missionConfigFile >> "onLoadName")
};

[
  [
    [
      _missionTitle,
      "align = 'center',
      shadow = '1',
      size = '1',
      font = 'PuristaBold'"
    ],
    ["","<br/>"],
    [
      getText (missionConfigFile >> "author"),
      "align = 'center',
      shadow = '1',
      size = '0.5'"
    ]
  ]
] spawn BIS_fnc_typeText2;
