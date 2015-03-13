class AntiLootParams_Loot {
  title = "Prevent AI equipment from being picked up?";
  values[] = { 0, 1, 2 };
  texts[] = { "No", "Only weapons", "Everything" };
  default = 1;
  function = "AntiLoot_fnc_SetMode";
  isGlobal = 0;
};