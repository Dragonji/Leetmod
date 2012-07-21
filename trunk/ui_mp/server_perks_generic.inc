#undef CHOICE_SIZE_Y
#define CHOICE_SIZE_Y 		20

#undef	CHOICE_SIZE_X
#define CHOICE_SIZE_X		100

#undef CHOICE_Y_START
#define CHOICE_Y_START 34

#undef CHOICE_Y_COUNT
#define CHOICE_Y_COUNT			7

CHOICE_DVARYESNO( 1, "@PERKS_C4_X_2", "perk_allow_c4_mp", ; )
CHOICE_DVARYESNO( 2, "@PERKS_SPECIAL_GRENADES_X_3", "perk_allow_specialty_specialgrenade", ; )
CHOICE_DVARYESNO( 3, "@PERKS_RPG7_X_2", "perk_allow_rpg_mp", ; )
CHOICE_DVARYESNO( 4, "@PERKS_CLAYMORE_X_2", "perk_allow_claymore_mp", ; )
CHOICE_DVARYESNO( 5, "@PERKS_FRAG_X_3", "perk_allow_specialty_fraggrenade", ; )
CHOICE_DVARYESNO( 6, "@PERKS_BANDOLIER", "perk_allow_specialty_extraammo", ; )
CHOICE_DVARYESNO( 7, "@PERKS_BOMB_SQUAD", "perk_allow_specialty_detectexplosive", ; )

//CHOICE_SEPARATOR( 9 )
#undef CHOICE_Y_START
#define CHOICE_Y_START 34

CHOICE_DVARYESNO( 8, "@PERKS_STOPPING_POWER", "perk_allow_specialty_bulletdamage", ; )
CHOICE_DVARYESNO( 9, "@PERKS_JUGGERNAUT", "perk_allow_specialty_armorvest", ; )
CHOICE_DVARYESNO( 10, "@PERKS_SLEIGHT_OF_HAND", "perk_allow_specialty_fastreload", ; )
CHOICE_DVARYESNO( 11, "@PERKS_DOUBLE_TAP", "perk_allow_specialty_rof", ; )
CHOICE_DVARYESNO( 12, "@PERKS_OVERKILL", "perk_allow_specialty_twoprimaries", ; )
CHOICE_DVARYESNO( 13, "@PERKS_UAV_JAMMER", "perk_allow_specialty_gpsjammer", ; )
CHOICE_DVARYESNO( 14, "@PERKS_SONIC_BOOM", "perk_allow_specialty_explosivedamage", ; )

#undef CHOICE_X_START
#define CHOICE_X_START			-610

#undef CHOICE_Y_START
#define CHOICE_Y_START 200

#undef CHOICE_Y_COUNT
#define CHOICE_Y_COUNT 20

CHOICE_DVARYESNO( 22, "@OW_AMMOCOUNT_C4", scr_c4_ammo_count, ; )
CHOICE_DVARYESNO( 23, "@OW_AMMOCOUNT_CLAYMORE", scr_claymore_ammo_count, ; )
CHOICE_DVARYESNO( 24, "@OW_AMMOCOUNT_RPG", scr_rpg_ammo_count, ; )

CHOICE_DVARYESNO( 25, "@OW_AMMOCOUNT_FRAG", specialty_fraggrenade_ammo_count, ; )
CHOICE_DVARYESNO( 26, "@OW_AMMOCOUNT_SPECIAL", specialty_specialgrenade_ammo_count, ; )

CHOICE_DVAREDIT_NUMERIC( 27, "@OW_ARMOR_VEST_VALUE", perk_armorvest, 3, ; )
CHOICE_DVAREDIT_NUMERIC( 28, "@OW_BULLET_DAMAGE_VALUE", perk_bulletdamage, 3, ;)
CHOICE_DVAREDIT_NUMERIC( 29, "@OW_EXPLOSIVE_DAMAGE_VALUE", perk_explosivedamage, 3, ; )

CHOICE_DVARYESNO( 30, "@OW_CHECK_FRAGS", specialty_grenadepulldeath_check_frags, ; )
CHOICE_DVARYESNO( 31, "@OW_CHECK_PISTOL", specialty_pistoldeath_check_pistol, ; )