  // Title card
  [
    [
      [
        getText (missionConfigFile >> "onLoadName"),
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
