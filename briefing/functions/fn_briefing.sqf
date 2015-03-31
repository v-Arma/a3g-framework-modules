private ["_briefings"];
if (!hasInterface) exitWith {};

switch (side player) do {
  case blufor:
    _briefings = "true" configClasses (missionConfigFile >> "Modules" >> "Briefing" >> "Settings" >> "Blufor");
  case opfor:
    _briefings = "true" configClasses (missionConfigFile >> "Modules" >> "Briefing" >> "Settings" >> "Opfor");
  case indfor:
    _briefings = "true" configClasses (missionConfigFile >> "Modules" >> "Briefing" >> "Settings" >> "Indfor");
  case civilians:
    _briefings = "true" configClasses (missionConfigFile >> "Modules" >> "Briefing" >> "Settings" >> "Civilian");
};

{
  player createDiaryRecord ["Diary", ["Title", getText _x]];
} forEach _briefings;
