  class A3G_AntiLoot_RemoveLoot {
    title = "Prevent AI equipment from being picked up?";
    values[] = { 0, 1, 2 };
    texts[] = { "No", "Only weapons", "Everything" };
    default = 1;
    function = "A3G_AntiLoot_fnc_SetMode";
    isGlobal = 0;
  };