#ifdef A3GFramework_state_Module
  class CivFail {
    name = "Civilian Failure";
    description = "Automatically fails the mission once too many civilians have been killed.";
    authors[] = {"Cephei"};
    class Settings {
      #include "settings.hpp"
    };
  };
#endif

#ifdef A3GFramework_state_Functions
  #include "cfgFunctions.hpp"
#endif
