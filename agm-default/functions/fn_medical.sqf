// Set new default settings for AGM medical, when the user didn't place a medical module
if( isNil "AGM_Medical_Module" ) then {
  AGM_Medical_CoefNonMedic = 4;
  AGM_Medical_AllowNonMedics = true;
  AGM_Medical_RequireDiagnosis = true;
  AGM_Medical_PreventInstaDeath = true;
  AGM_Medical_PreventDeathWhileUnconscious = true;
  AGM_Medical_SingleBandage = true;
  AGM_Medical_EnableOverdosing = false;
  AGM_Medical_DisableScreams = true;
};
