_jipTime = ["JipTime", -1] call bis_fnc_getParamValue;

if ( time > _jipTime && _jipTime != -1 ) then {
	player setDamage 1;
};