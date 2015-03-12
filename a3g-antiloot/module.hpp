#ifdef A3G_Framework_state_Module
  class A3G_AntiLoot {
    name = "Anti Loot";
    description = "Prevents picking up enemy equipment. Locks AI vehicles for players."
    authors[] = {"Cephei"};
    class Settings {
      #include "settings.hpp"
    };
  };
#endif

#ifdef A3G_Framework_state_Params
  #include "params.hpp"
#endif

#ifdef A3G_Framework_state_Functions
  #include "cfgFunctions.hpp"
#endif
