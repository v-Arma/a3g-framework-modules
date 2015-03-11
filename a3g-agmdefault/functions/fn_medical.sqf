private ["_string"];

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

// This one is _always_ set, because it's a parameter
AGM_Medical_MaxUnconsciousnessTime = ["A3G_Template_BleedoutTime", 600] call bis_fnc_getParamValue;
