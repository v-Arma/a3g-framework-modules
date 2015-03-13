#ifdef A3G_Framework_state_Module
  class AGMBleedout {
    name = "AGM Bleedout";
    description = "Adds a parameter to change the AGM bleedout time."
    authors[] = {"Cephei"};
  };
#endif

#ifdef A3G_Framework_state_Params
  class AGMBleedout {
    title = "Bleedout Time ( You die when you are unconscious for this long ):";
    values[] = { 30, 60, 120, 180, 240, 300, 600, -1 };
    texts[] = { "30 seconds", "1 minute", "2 minutes", "3 minutes", "4 minutes", "5 minutes", "10 minutes", "Never" };
    default = 600;
  };
#endif