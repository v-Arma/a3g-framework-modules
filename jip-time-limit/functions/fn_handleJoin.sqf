if ( isDedicated ) exitWith {};

_jipTime = if ( isNil "JipTimeLimit_var_JipTime" ) then { 600 } else { JipTimeLimit_var_JipTime };

if ( time > _jipTime && _jipTime != -1 ) then {
	player setDamage 1;
};