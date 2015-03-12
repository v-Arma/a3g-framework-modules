  // Title card
  [
    [
      [
        localize "A3G_Framework_str_missionNameShort",
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
