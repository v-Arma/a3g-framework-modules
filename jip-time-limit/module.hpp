#ifdef A3GFramework_state_Module
  class JipTimeLimit {
    name = "JIP Time Limit";
    description = "Disallows JIPs after a set time.";
    authors[] = {"Cephei"};
    class Settings {
      #include "settings.hpp"
    };
  };
#endif

#ifdef A3GFramework_state_Functions
  #include "cfgFunctions.hpp"
#endif
