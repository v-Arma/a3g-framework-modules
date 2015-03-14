class AntiReslot {
  class Functions {
    file = "modules\anti-reslot\functions";
    class GetLoadoutSegment {};
    class HandleDisconnect {};
    class HandleJoin {
      postInit = 1;
    };
    class RestoreGear {};
    class RestorePosition {};
    class RestoreState {};
    class SaveLoadoutSegment {};
    class SetEvent {
      postInit = 1;
    };    
    class WaitForFreeSlot {};
  };
};
