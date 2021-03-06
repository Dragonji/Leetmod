#undef CHOICE_GROUP
#define CHOICE_GROUP war

#define G_GAMETYPE_WAR (dvarString( "settings_config_gametype" ) == "war")

//TDM
CHOICE_DVAREDIT_NUMERIC_VIS( 2, "@OW_TIMELIMIT", scr_war_timelimit, 5, ; , when(G_GAMETYPE_WAR) )
CHOICE_DVAREDIT_NUMERIC_VIS( 3, "@OW_SCORELIMIT", scr_war_scorelimit, 3, ; , when(G_GAMETYPE_WAR) )
CHOICE_DVAREDIT_NUMERIC_VIS( 4, "@OW_ROUNDLIMIT", scr_war_roundlimit, 3, ; , when(G_GAMETYPE_WAR) )
CHOICE_DVAREDIT_NUMERIC_VIS( 5, "@OW_ROUND_SWITCH", scr_war_roundswitch, 3, ; , when(G_GAMETYPE_WAR) )
CHOICE_DVAREDIT_NUMERIC_VIS( 6, "@OW_PLAYER_RESPAWN_DELAY", scr_war_playerrespawndelay, 3, ; , when(G_GAMETYPE_WAR) )
CHOICE_DVAREDIT_NUMERIC_VIS( 7, "@OW_WAVE_RESPAWN_DELAY", scr_war_waverespawndelay, 3, ; , when(G_GAMETYPE_WAR) )
CHOICE_DVAREDIT_NUMERIC_VIS( 8, "@OW_NUMBER_OF_LIVES", scr_war_numlives, 3, ; , when(G_GAMETYPE_WAR) )
CHOICE_DVARYESNO_VIS( 9, "@OW_TEAM_BALANCE_EOR", scr_war_teambalanceendofround, ; , when(G_GAMETYPE_WAR) )
CHOICE_DVARYESNO_VIS( 10, "@OW_FORCE_START_SPAWNS", scr_war_forcestartspawns, ; , when(G_GAMETYPE_WAR) )

itemDef
{
	name			resetwar
	text			"@OW_RESET_GT_TO_DEFAULT"
	type			1
	style			WINDOW_STYLE_FILLED
	forecolor		TEXTBUTTON_COLOR
	textstyle		ITEM_TEXTSTYLE_SHADOWED
	rect			-150 -26 100 20 HORIZONTAL_ALIGN_CENTER VERTICAL_ALIGN_BOTTOM
	textfont		UI_FONT_NORMAL
	textalign		ITEM_ALIGN_LEFT
	textscale		TEXTSIZE_SMALL
	textaligny		18
	visible				when(G_GAMETYPE_WAR)
	mouseEnter		{ play "mouse_over"; }
	action
	{
		play "mouse_click";
		exec "exec menudvars/_defcfg/gametypes/teamdeathmatch.cfg";
	}
}