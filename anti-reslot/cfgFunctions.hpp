class AntiReslot {
  class EventHandlers {
    file = "modules\anti-reslot\functions\eventhandlers";
    class HandleContainerClosed {};
    class HandleDisconnect {};    
  };

  class Init {
    file = "modules\anti-reslot\functions\init"
    class HandleJoin {
      postInit = 1;
    };
    class SetEvent {
      postInit = 1;
    }; 
  };

  class Restore {
    file = "modules\anti-reslot\functions\restore";
    class GetLoadoutSegment {};
    class RestoreGear {};
    class RestorePosition {};
    class RestoreState {};
    class WaitForFreeSlot {};
  };

  class Save {
    file = "modules\anti-reslot\functions\save";
    class SaveGear {};
    class SaveLoadoutSegment {};
    class HandleWeaponDrop {};
  };    
};