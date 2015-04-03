/*
  Author: Cephei
  Description: 
  - Each class corresponds to a side, the everyone class means that everyone gets the briefing.
  - Inside each class, create subclasses to make briefing entries.
  - The title of each subclass becomes the title in the briefing menu. Underlines will be replaced with spaces.
  - The order of subclasses determines the order in which the briefing entries show up.
  - Use the attribute 'text' to put in the text of each briefing entry.
*/


class Everyone {
  class Situation {
    text = "What led to the current situation? Who is attacking who?<br/><br/>This section is more related to the lore of the mission if anything, so get creative.";
  };

  class Mission {
    text = "Describe here what are the players supposed to accomplish in the mission, with as much clarity and brevity as possible.";
  };

  class Support {
    text = "List all the support available for the mission:<br/><br/>- x vehicles.<br/>- x weapons team.<br/>- x CAS support.<br/>- x mortar support.<br/>- etc.";
  };
  
  class Enemy_Forces {
    text = "Here you describe to the players what sort of intelligence is available about the enemy. Be sensitive enough not to reveal too much or too little.";
  };

  class Execution {
    text = "The execution of the mission describes how players are supposed to deal with the enemy threats, but without spoiling the mission or taking away the freedom of planning from the players.";
  };
};

class Blufor {

};

class Opfor {
  
};

class Independent {
  
};

class Civilian {
  
};
