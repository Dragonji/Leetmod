#include openwarfare\_utils;


setRuleset()
{
	rulesets\leetmod\armory\promod::init();
	rulesets\leetmod\perks\none::init();
	init();

	setDvar( "scr_league_ruleset", "Profile Promod" );
}

init()
{
	setDvar( "classes_default_enable", "0" );
	setDvar( "classes_custom_enable", "" );
	setDvar( "scr_bob_effect_enable", "0" );
	setDvar( "scr_game_hardpoints", "" );
	setDvar( "scr_player_maxhealth", "100" );
	setDvar( "scr_healthregen_method", "1" );
	setDvar( "scr_hud_show_crosshair", "1" );
}