#ifdef A3G_Framework_state_Module
  class A3G_AntiLoot {
    name = "Loot prevention and vehicle lock script";
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
