#ifdef A3G_Framework_state_Module
  class AntiLootParams {
    name = "Anti Loot Parameters";
    description = "Adds parameters to change the anti loot behavior."
    authors[] = {"Cephei"};
  };
#endif

#ifdef A3G_Framework_state_Params
  class AntiLootParams_Loot {
    title = "Prevent AI equipment from being picked up?";
    values[] = { 0, 1, 2 };
    texts[] = { "No", "Only weapons", "Everything" };
    default = 1;
    function = "AntiLoot_fnc_SetMode";
    isGlobal = 0;
  };
#endif