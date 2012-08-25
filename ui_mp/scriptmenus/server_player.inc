#include "ui_mp/menustyle.inc"

#include "ui_mp/scriptmenus/server_player_setadvars.inc"

menuDef 
{
  name			"settings_quick_dom_@MPUI_RULES_TIME_LIMIT"
  fullScreen		0
  rect			0 0 640 480
  focusColor		COLOR_FOCUSED
  //soundloop		""
  onOpen
  {
    
  }
  onClose
  {
    
  }
  onESC 
  { 
    close self;
  }
  #include "ui_mp/blurredbg.inc"
  #include "ui_mp/navcontrols.inc"
  
  CHOICE_MENU_TITLE("@OW_SERVER_PLAYER" )
  
  #undef TEXTSIZE_BUTTON_PC
  #define TEXTSIZE_BUTTON_PC	0.33

  #undef CHOICE_SIZE_Y
  #define CHOICE_SIZE_Y 		20

  #undef	CHOICE_SIZE_X
  #define CHOICE_SIZE_X		150

  #undef CHOICE_X_SPACING
  #define CHOICE_X_SPACING 300
  
  #undef CHOICE_X_START
  #define CHOICE_X_START 0

  #undef CHOICE_Y_START
  #define CHOICE_Y_START 34
  
  #undef CHOICE_Y_COUNT
  #define CHOICE_Y_COUNT			20

  
  CHOICE_DVAREDIT_NUMERIC( 1, "@OW_SCR_FALLDAMAGEMINHEIGHT", scr_fallDamageMinHeight, 4, SETA_SCR_FALLDAMAGEMINHEIGHT; )
  CHOICE_DVAREDIT_NUMERIC( 2, "@OW_SCR_FALLDAMAGEMAXHEIGHT", scr_fallDamageMaxHeight, 4, SETA_SCR_FALLDAMAGEMAXHEIGHT; )
  CHOICE_DVAREDIT_NUMERIC( 3, "@OW_SCR_JUMP_HEIGHT", scr_jump_height, 4, SETA_SCR_JUMP_HEIGHT; )
  CHOICE_DVARYESNO( 4, "@OW_SCR_JUMP_SLOWDOWN_ENABLE", scr_jump_slowdown_enable, SETA_SCR_JUMP_SLOWDOWN_ENABLE; )
  CHOICE_DVARYESNO( 5, "@OW_SCR_GAME_ALLOW_KILLCAM", scr_game_allow_killcam, SETA_SCR_GAME_ALLOW_KILLCAM; )
  CHOICE_DVARYESNO( 6, "@OW_SCR_PLAYER_FORCERESPAWN", scr_player_forcerespawn, SETA_SCR_PLAYER_FORCERESPAWN; )
  CHOICE_DVARYESNO( 7, "@OW_SCR_QUICKACTIONS_ENABLE", scr_quickactions_enable, SETA_SCR_QUICKACTIONS_ENABLE; )
  CHOICE_DVARYESNO( 8, "@OW_SCR_THIRDPERSON_ENABLE", scr_thirdperson_enable, SETA_SCR_THIRDPERSON_ENABLE; )
  CHOICE_DVARYESNO( 9, "@OW_SCR_PLAYER_LEAN_FIX", scr_player_lean_fix, SETA_SCR_PLAYER_LEAN_FIX; )
  CHOICE_DVARYESNO( 10, "@OW_SCR_BOB_EFFECT_ENABLE", scr_bob_effect_enable, SETA_SCR_BOB_EFFECT_ENABLE; )
  CHOICE_DVARYESNO( 11, "@OW_SCR_BOB_PRONE_FIX", scr_bob_prone_fix, SETA_SCR_BOB_PRONE_FIX; )
  CHOICE_DVARYESNO( 12, "@OW_SCR_CG_FOOTSTEPS", scr_cg_footsteps, SETA_SCR_CG_FOOTSTEPS; )
  
  CHOICE_DVARYESNO( 13, "@OW_SCR_CAP_ENABLE", scr_cap_enable, SETA_SCR_CAP_ENABLE; )
  CHOICE_DVAREDIT( 14, "@OW_SCR_CAP_TIME", scr_cap_time, SETA_SCR_CAP_TIME; )
  CHOICE_DVAREDIT( 15, "@OW_SCR_CAP_TIME_ACTIVATED", scr_cap_time_activated, SETA_SCR_CAP_TIME_ACTIVATED; )
  CHOICE_DVARYESNO( 16, "@OW_SCR_CAP_FIRSTSPAWN", scr_cap_firstspawn, SETA_SCR_CAP_FIRSTSPAWN; )
  
  CHOICE_DVARFLOATLIST( 17, "@OW_SCR_DE_DROPWEAPON_ON_ARM_HIT", scr_de_dropweapon_on_arm_hit, { "Disabled" 0 "Drop when hit on hands" 1 "Drop when hit on hands or lower arms" 2 "Drop when hit on hands or lower/upper arms" 3 }, SETA_SCR_DE_DROPWEAPON_ON_ARM_HIT; )
  CHOICE_DVAREDIT_NUMERIC( 18, "@OW_SCR_DE_DROPWEAPON_CHANCE", scr_de_dropweapon_chance, 3, SETA_SCR_DE_DROPWEAPON_CHANCE; )
  CHOICE_DVARFLOATLIST( 19, "@OW_SCR_DE_FALLDOWN_ON_LEG_HIT", scr_de_falldown_on_leg_hit, { "Disabled" 0 "Enabled (no speed reduction)" 1 "Enabled (also speed reduction)" 2 }, SETA_SCR_DE_FALLDOWN_ON_LEG_HIT; )
  CHOICE_DVAREDIT_NUMERIC( 20, "@OW_SCR_DE_FALLDOWN_CHANCE", scr_de_falldown_chance, 3, SETA_SCR_DE_FALLDOWN_CHANCE; )
  CHOICE_DVAREDIT_NUMERIC( 21, "@OW_SCR_DE_SHIFTVIEW_ON_DAMAGE", scr_de_shiftview_on_damage, 2, SETA_SCR_DE_SHIFTVIEW_ON_DAMAGE; )
  CHOICE_DVAREDIT_NUMERIC( 22, "@OW_SCR_DE_BREAK_ANKLE_ON_FALL", scr_de_break_ankle_on_fall, 2, SETA_SCR_DE_BREAK_ANKLE_ON_FALL; )
  CHOICE_DVAREDIT_NUMERIC( 23, "@OW_SCR_DE_SLOWDOWN_ON_LEG_HIT", scr_de_slowdown_on_leg_hit, 2, SETA_SCR_DE_SLOWDOWN_ON_LEG_HIT; )
}