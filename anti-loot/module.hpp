#ifdef A3G_Framework_state_Module
  class AntiLoot {
    name = "Anti Loot";
    description = "Prevents picking up enemy equipment.";
    authors[] = {"Cephei"};
    class Settings {
      #include "settings.hpp"
    };
  };
#endif

#ifdef A3G_Framework_state_Functions
  #include "cfgFunctions.hpp"
#endif
