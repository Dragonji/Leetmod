resetServerVariables()
{
	// Load all the variables that should be cleaned 
	variableNames = [];
	variablesReseted = 0;
	
	// configs/gameplay/classes.cfg
	variableNames[ variableNames.size ] = "attach_allow_assault_acog attach_allow_assault_gl attach_allow_assault_none attach_allow_assault_reflex attach_allow_assault_silencer attach_allow_heavygunner_acog attach_allow_heavygunner_grip attach_allow_heavygunner_none attach_allow_heavygunner_reflex attach_allow_pistol_none attach_allow_pistol_silencer attach_allow_shotgun_grip attach_allow_shotgun_none attach_allow_shotgun_reflex attach_allow_sniper_acog attach_allow_sniper_none attach_allow_specops_acog attach_allow_specops_none attach_allow_specops_reflex attach_allow_specops_silencer attach_assault_gl_limit class_allies_assault_limit class_allies_demolitions_limit class_allies_heavygunner_limit class_allies_sniper_limit class_allies_specops_limit class_assault_allowdrop class_assault_camo class_assault_lock_perk1 class_assault_lock_perk2";
	variableNames[ variableNames.size ] = "class_assault_lock_perk3 class_assault_lock_primary class_assault_lock_primary_attachment class_assault_lock_secondary class_assault_lock_sgrenade class_assault_movespeed class_assault_perk1 class_assault_perk2 class_assault_perk3 class_assault_pgrenade_count class_assault_primary class_assault_primary_attachment class_assault_secondary class_assault_secondary_attachment class_assault_sgrenade class_assault_sgrenade_count class_axis_assault_limit class_axis_demolitions_limit class_axis_heavygunner_limit class_axis_sniper_limit class_axis_specops_limit class_demolitions_allowdrop class_demolitions_camo class_demolitions_lock_perk1 class_demolitions_lock_perk2 class_demolitions_lock_perk3 class_demolitions_lock_primary class_demolitions_lock_primary_attachment class_demolitions_lock_secondary";
	variableNames[ variableNames.size ] = "class_demolitions_lock_sgrenade class_demolitions_movespeed class_demolitions_perk1 class_demolitions_perk2 class_demolitions_perk3 class_demolitions_pgrenade_count class_demolitions_primary class_demolitions_primary_attachment class_demolitions_secondary class_demolitions_secondary_attachment class_demolitions_sgrenade class_demolitions_sgrenade_count class_heavygunner_allowdrop class_heavygunner_camo class_heavygunner_lock_perk1 class_heavygunner_lock_perk2 class_heavygunner_lock_perk3 class_heavygunner_lock_primary class_heavygunner_lock_primary_attachment class_heavygunner_lock_secondary class_heavygunner_lock_sgrenade class_heavygunner_movespeed class_heavygunner_perk1 class_heavygunner_perk2 class_heavygunner_perk3 class_heavygunner_pgrenade_count class_heavygunner_primary class_heavygunner_primary_attachment";
	variableNames[ variableNames.size ] = "class_heavygunner_secondary class_heavygunner_secondary_attachment class_heavygunner_sgrenade class_heavygunner_sgrenade_count class_sniper_allowdrop class_sniper_camo class_sniper_lock_perk1 class_sniper_lock_perk2 class_sniper_lock_perk3 class_sniper_lock_primary class_sniper_lock_primary_attachment class_sniper_lock_secondary class_sniper_lock_sgrenade class_sniper_movespeed class_sniper_perk1 class_sniper_perk2 class_sniper_perk3 class_sniper_pgrenade_count class_sniper_primary class_sniper_primary_attachment class_sniper_secondary class_sniper_secondary_attachment class_sniper_sgrenade class_sniper_sgrenade_count class_specops_allowdrop class_specops_camo class_specops_lock_perk1 class_specops_lock_perk2 class_specops_lock_perk3 class_specops_lock_primary class_specops_lock_primary_attachment";
	variableNames[ variableNames.size ] = "class_specops_lock_secondary class_specops_lock_sgrenade class_specops_movespeed class_specops_perk1 class_specops_perk2 class_specops_perk3 class_specops_pgrenade_count class_specops_primary class_specops_primary_attachment class_specops_secondary class_specops_secondary_attachment class_specops_sgrenade class_specops_sgrenade_count scr_c4_ammo_count scr_claymore_ammo_count scr_concussion_grenades_allowdrop scr_flash_grenades_allowdrop scr_frag_grenades_allowdrop scr_rpg_ammo_count scr_smoke_grenades_allowdrop smoke_grenade_limit weap_allow_assault_ak47 weap_allow_assault_g3 weap_allow_assault_g36c weap_allow_assault_m14 weap_allow_assault_m16 weap_allow_assault_m4 weap_allow_assault_mp44 weap_allow_beretta weap_allow_binoculars weap_allow_colt45 weap_allow_concussion_grenade weap_allow_demolitions_m1014";
	variableNames[ variableNames.size ] = "weap_allow_demolitions_winchester1200 weap_allow_deserteagle weap_allow_deserteaglegold weap_allow_flash_grenade weap_allow_frag_grenade weap_allow_heavygunner_m60e4 weap_allow_heavygunner_rpd weap_allow_heavygunner_saw weap_allow_smoke_grenade weap_allow_sniper_barrett weap_allow_sniper_dragunov weap_allow_sniper_m21 weap_allow_sniper_m40a3 weap_allow_sniper_remington700 weap_allow_specops_ak74u weap_allow_specops_mp5 weap_allow_specops_p90 weap_allow_specops_skorpion weap_allow_specops_uzi weap_allow_usp";
	
	// configs/gameplay/fitnesscs.cfg
	variableNames[ variableNames.size ] = "scr_fcs_crouch_on_spawn scr_fcs_enabled scr_fcs_jump_allowed scr_fcs_jump_penalty scr_fcs_pulse_enabled scr_fcs_pulse_modifier scr_fcs_sprint_delay scr_fcs_sprint_recovery_delay scr_fcs_sprint_recovery_time scr_fcs_sprint_slowsdown_max scr_fcs_walk_without_ads_allowed scr_player_sprinttime";
	
	// configs/gameplay/hardpoints.cfg
	variableNames[ variableNames.size ] = "scr_airstrike_delay scr_airstrike_hardpoint_interval scr_airstrike_kills_toward_streak scr_announce_enemy_airstrike_inbound scr_announce_enemy_heli_inbound scr_announce_enemy_uav_online scr_announce_killstreak scr_game_forceuav scr_game_hardpoints scr_game_hardpoints_cycle scr_game_hardpoints_mode scr_hardpoint_airstrike_streak scr_hardpoint_allow_airstrike scr_hardpoint_allow_helicopter scr_hardpoint_allow_uav scr_hardpoint_helicopter_streak scr_hardpoint_show_reminder scr_hardpoint_uav_streak scr_heli_hardpoint_interval scr_heli_maxhealth scr_heli_target_recognition scr_helicopter_delay scr_helicopter_kills_toward_streak scr_remove_hardpoint_on_death scr_uav_show_hardpoints scr_uav_view_time";
	
	// configs/gameplay/healthsystem.cfg
	variableNames[ variableNames.size ] = "scr_health_death_sound scr_health_hurt_sound scr_health_pain_sound scr_healthregen_method scr_healthsystem_bandage_max scr_healthsystem_bandage_self scr_healthsystem_bandage_start scr_healthsystem_bandage_time scr_healthsystem_bleeding_enable scr_healthsystem_bleeding_icon scr_healthsystem_bleeding_percentage scr_healthsystem_healing_icon scr_healthsystem_healthpacks_enable scr_healthsystem_healthpacks_health scr_healthsystem_healthpacks_random_health scr_healthsystem_healthpacks_timeout scr_healthsystem_medic_bandaging scr_healthsystem_medic_enable scr_healthsystem_medic_healing scr_healthsystem_medic_healing_health scr_healthsystem_medic_healing_self scr_healthsystem_medic_healing_time scr_healthsystem_medic_take_bandage scr_healthsystem_show_healthbar scr_player_healthregentime scr_player_maxhealth";
	
	// configs/gameplay/hud.cfg
	variableNames[ variableNames.size ] = "scr_adjust_progress_bars scr_blackscreen_enable scr_blackscreen_fadetime scr_blackscreen_spectators scr_blackscreen_spectators_guids scr_bob_effect_enable scr_drawfriend scr_enable_bodyarmor_feedback scr_enable_deadchat scr_enable_globalchat scr_enable_hiticon scr_endofgame_stats_enable scr_player_connect_sound_enable scr_player_disconnect_sound_enable scr_ext_obituaries_unit scr_hardcore scr_hardcore_show_compass scr_hardcore_show_minimap scr_hide_scores scr_hud_compass_objectives scr_hud_show_2dicons scr_hud_show_3dicons scr_hud_show_center_obituary scr_hud_show_death_icons scr_hud_show_enemy_names scr_hud_show_friendly_names scr_hud_show_grenade_indicator scr_hud_show_inventory scr_hud_show_mantle_hint scr_hud_show_redcrosshairs scr_hud_show_scores scr_hud_show_stance scr_hud_show_xp_points scr_minimap_show_enemies_firing scr_realtime_stats_default_on scr_realtime_stats_enable scr_realtime_stats_unit";
	variableNames[ variableNames.size ] = "scr_relocate_chat_position scr_show_ext_obituaries scr_show_general_blood_splatters scr_show_guid_on_firstspawn scr_show_headshot_blood_splatters scr_show_knifed_blood_splatters scr_show_obituaries scr_show_player_assignment scr_show_player_status scr_show_team_status scr_thirdperson_enable scr_gametype_objectives_print";
	
	// configs/gameplay/others.cfg
	variableNames[ variableNames.size ] = "scr_anti_camping_distance scr_anti_camping_enable scr_anti_camping_message scr_anti_camping_show scr_anti_camping_time scr_bodyremoval_enable scr_bodyremoval_time scr_bullet_penetration_enabled scr_cap_enable scr_cap_firstspawn scr_cap_time scr_cl_maxpackets scr_com_maxfps scr_de_break_ankle_on_fall scr_de_dropweapon_chance scr_de_dropweapon_on_arm_hit scr_de_falldown_chance scr_de_falldown_on_leg_hit scr_de_shiftview_on_damage scr_de_slowdown_on_leg_hit scr_dogtags_enable scr_enable_anti_bunny_hopping scr_enable_anti_dolphin_dive scr_enable_spawn_protection scr_fallDamageMaxHeight scr_fallDamageMinHeight scr_game_allow_killcam scr_game_deathpointloss scr_game_suicidepointloss scr_jump_height scr_jump_slowdown_enable scr_player_forcerespawn scr_player_suicidespawndelay scr_quickactions_enable";
	variableNames[ variableNames.size ] = "scr_spawn_protection_hiticon scr_spawn_protection_invisible scr_spawn_protection_maxdistance scr_spawn_protection_punishment_time scr_spawn_protection_time scr_team_fftype scr_team_teamkillpointloss scr_team_teamkillspawndelay";
	
	// configs/gameplay/perks.cfg
	variableNames[ variableNames.size ] = "perk_allow_c4_mp perk_allow_claymore_mp perk_allow_rpg_mp perk_allow_specialty_armorvest perk_allow_specialty_bulletaccuracy perk_allow_specialty_bulletdamage perk_allow_specialty_bulletpenetration perk_allow_specialty_detectexplosive perk_allow_specialty_explosivedamage perk_allow_specialty_extraammo perk_allow_specialty_fastreload perk_allow_specialty_fraggrenade perk_allow_specialty_gpsjammer perk_allow_specialty_grenadepulldeath perk_allow_specialty_holdbreath perk_allow_specialty_longersprint perk_allow_specialty_parabolic perk_allow_specialty_pistoldeath perk_allow_specialty_quieter perk_allow_specialty_rof perk_allow_specialty_specialgrenade perk_allow_specialty_twoprimaries perk_armorvest perk_assault_allow_c4_mp perk_assault_allow_claymore_mp perk_assault_allow_rpg_mp";
	variableNames[ variableNames.size ] = "perk_assault_allow_specialty_armorvest perk_assault_allow_specialty_bulletaccuracy perk_assault_allow_specialty_bulletdamage perk_assault_allow_specialty_bulletpenetration perk_assault_allow_specialty_detectexplosive perk_assault_allow_specialty_explosivedamage perk_assault_allow_specialty_extraammo perk_assault_allow_specialty_fastreload perk_assault_allow_specialty_fraggrenade perk_assault_allow_specialty_gpsjammer perk_assault_allow_specialty_grenadepulldeath perk_assault_allow_specialty_holdbreath perk_assault_allow_specialty_longersprint perk_assault_allow_specialty_parabolic perk_assault_allow_specialty_pistoldeath perk_assault_allow_specialty_quieter perk_assault_allow_specialty_rof perk_assault_allow_specialty_specialgrenade perk_bulletdamage perk_c4_mp_limit perk_claymore_mp_limit";
	variableNames[ variableNames.size ] = "perk_demolitions_allow_c4_mp perk_demolitions_allow_claymore_mp perk_demolitions_allow_rpg_mp perk_demolitions_allow_specialty_armorvest perk_demolitions_allow_specialty_bulletaccuracy perk_demolitions_allow_specialty_bulletdamage perk_demolitions_allow_specialty_bulletpenetration perk_demolitions_allow_specialty_detectexplosive perk_demolitions_allow_specialty_explosivedamage perk_demolitions_allow_specialty_extraammo perk_demolitions_allow_specialty_fastreload perk_demolitions_allow_specialty_fraggrenade perk_demolitions_allow_specialty_gpsjammer perk_demolitions_allow_specialty_grenadepulldeath perk_demolitions_allow_specialty_holdbreath perk_demolitions_allow_specialty_longersprint perk_demolitions_allow_specialty_parabolic perk_demolitions_allow_specialty_pistoldeath perk_demolitions_allow_specialty_quieter";
	variableNames[ variableNames.size ] = "perk_demolitions_allow_specialty_rof perk_demolitions_allow_specialty_specialgrenade perk_explosivedamage perk_heavygunner_allow_c4_mp perk_heavygunner_allow_claymore_mp perk_heavygunner_allow_rpg_mp perk_heavygunner_allow_specialty_armorvest perk_heavygunner_allow_specialty_bulletaccuracy perk_heavygunner_allow_specialty_bulletdamage perk_heavygunner_allow_specialty_bulletpenetration perk_heavygunner_allow_specialty_detectexplosive perk_heavygunner_allow_specialty_explosivedamage perk_heavygunner_allow_specialty_extraammo perk_heavygunner_allow_specialty_fastreload perk_heavygunner_allow_specialty_fraggrenade perk_heavygunner_allow_specialty_gpsjammer perk_heavygunner_allow_specialty_grenadepulldeath perk_heavygunner_allow_specialty_holdbreath perk_heavygunner_allow_specialty_longersprint";
	variableNames[ variableNames.size ] = "perk_heavygunner_allow_specialty_parabolic perk_heavygunner_allow_specialty_pistoldeath perk_heavygunner_allow_specialty_quieter perk_heavygunner_allow_specialty_rof perk_heavygunner_allow_specialty_specialgrenade perk_rpg_mp_limit perk_sniper_allow_c4_mp perk_sniper_allow_claymore_mp perk_sniper_allow_rpg_mp perk_sniper_allow_specialty_armorvest perk_sniper_allow_specialty_bulletaccuracy perk_sniper_allow_specialty_bulletdamage perk_sniper_allow_specialty_bulletpenetration perk_sniper_allow_specialty_detectexplosive perk_sniper_allow_specialty_explosivedamage perk_sniper_allow_specialty_extraammo perk_sniper_allow_specialty_fastreload perk_sniper_allow_specialty_fraggrenade perk_sniper_allow_specialty_gpsjammer perk_sniper_allow_specialty_grenadepulldeath perk_sniper_allow_specialty_holdbreath";
	variableNames[ variableNames.size ] = "perk_sniper_allow_specialty_longersprint perk_sniper_allow_specialty_parabolic perk_sniper_allow_specialty_pistoldeath perk_sniper_allow_specialty_quieter perk_sniper_allow_specialty_rof perk_sniper_allow_specialty_specialgrenade perk_specops_allow_c4_mp perk_specops_allow_claymore_mp perk_specops_allow_rpg_mp perk_specops_allow_specialty_armorvest perk_specops_allow_specialty_bulletaccuracy perk_specops_allow_specialty_bulletdamage perk_specops_allow_specialty_bulletpenetration perk_specops_allow_specialty_detectexplosive perk_specops_allow_specialty_explosivedamage perk_specops_allow_specialty_extraammo perk_specops_allow_specialty_fastreload perk_specops_allow_specialty_fraggrenade perk_specops_allow_specialty_gpsjammer perk_specops_allow_specialty_grenadepulldeath perk_specops_allow_specialty_holdbreath";
	variableNames[ variableNames.size ] = "perk_specops_allow_specialty_longersprint perk_specops_allow_specialty_parabolic perk_specops_allow_specialty_pistoldeath perk_specops_allow_specialty_quieter perk_specops_allow_specialty_rof perk_specops_allow_specialty_specialgrenade specialty_fraggrenade_ammo_count specialty_grenadepulldeath_check_frags specialty_pistoldeath_check_pistol specialty_specialgrenade_ammo_count";
	
	// configs/gameplay/scores.cfg
	variableNames[ variableNames.size ] = "scr_enable_scoresystem scr_score_airstrike_kill scr_score_assault_objective scr_score_assist_25_kill scr_score_assist_50_kill scr_score_assist_75_kill scr_score_assist_kill scr_score_barrel_explosion_kill scr_score_c4_kill scr_score_capture_objective scr_score_claymore_kill scr_score_defend_objective scr_score_defuse_bomb scr_score_grenade_kill scr_score_grenade_launcher_kill scr_score_hardpoint_used scr_score_headshot_kill scr_score_helicopter_kill scr_score_holding_objective scr_score_kill_objective_carrier scr_score_melee_kill scr_score_plant_bomb scr_score_player_death scr_score_player_suicide scr_score_player_teamkill scr_score_return_objective scr_score_rpg_kill scr_score_shot_down_helicopter scr_score_standard_kill scr_score_take_objective scr_score_tk_affects_teamscore scr_score_vehicle_explosion_kill";
	
	// configs/gameplay/sounds.cfg
	variableNames[ variableNames.size ] = "scr_allowbattlechatter scr_battlechatter_c4_planted_probability scr_battlechatter_claymore_planted_probability scr_battlechatter_concussion_out_probability scr_battlechatter_flash_out_probability scr_battlechatter_frag_out_probability scr_battlechatter_kill_probability scr_battlechatter_reload_probability scr_battlechatter_smoke_out_probability scr_countdown_sounds scr_killingspree_enable scr_killingspree_sounds scr_play_headshot_impact_sound scr_tactical_enable scr_unreal_firstblood_sound scr_unreal_headshot_sound scr_gametype_objectives_sound";
	
	// configs/gameplay/spectate.cfg
	variableNames[ variableNames.size ] = "scr_allow_thirdperson scr_allow_thirdperson_guids scr_game_spectatetype scr_game_spectatetype_dm scr_game_spectatetype_gg scr_game_spectatetype_spectators scr_game_spectators_guids";
	
	// configs/gameplay/visuals.cfg
	variableNames[ variableNames.size ] = "scr_dcs_dawn_length scr_dcs_day_length scr_dcs_dusk_length scr_dcs_enabled scr_dcs_first_cycle scr_dcs_night_length scr_dcs_reset_cycle scr_dcs_sounds_enable scr_map_special_fx_enable scr_show_fog"; 
	
	// configs/gameplay/wdm.cfg
	variableNames[ variableNames.size ] = "scr_wdm_ak47 scr_wdm_ak47_silenced scr_wdm_ak74u scr_wdm_ak74u_silenced scr_wdm_barrels scr_wdm_barrett scr_wdm_beretta scr_wdm_beretta_silenced scr_wdm_c4 scr_wdm_claymore scr_wdm_colt45 scr_wdm_colt45_silenced scr_wdm_deserteagle scr_wdm_deserteaglegold scr_wdm_dragunov scr_wdm_enabled scr_wdm_frag_grenades scr_wdm_g3 scr_wdm_g3_silenced scr_wdm_g36c scr_wdm_g36c_silenced scr_wdm_gl scr_wdm_m1014 scr_wdm_m14 scr_wdm_m14_silenced scr_wdm_m16 scr_wdm_m16_silenced scr_wdm_m21 scr_wdm_m4 scr_wdm_m4_silenced scr_wdm_m40a3 scr_wdm_m60e4 scr_wdm_mp44 scr_wdm_mp5 scr_wdm_mp5_silenced scr_wdm_p90 scr_wdm_p90_silenced scr_wdm_remington700 scr_wdm_rpd scr_wdm_rpg scr_wdm_saw scr_wdm_skorpion scr_wdm_skorpion_silenced scr_wdm_usp scr_wdm_usp_silenced scr_wdm_uzi scr_wdm_uzi_silenced scr_wdm_vehicles scr_wdm_winchester1200";
	
	// configs/gameplay/weapons.cfg
	variableNames[ variableNames.size ] = "scr_allow_stationary_turrets scr_barrel_damage_enable scr_claymore_arm_time scr_claymore_check_plant_distance scr_claymore_friendly_fire scr_claymore_show_headicon scr_claymore_show_laser_beams scr_concussion_grenades_base_time scr_delay_c4s scr_delay_claymores scr_delay_concussion_grenades scr_delay_flash_grenades scr_delay_frag_grenades scr_delay_grenade_launchers scr_delay_only_round_start scr_delay_rpgs scr_delay_smoke_grenades scr_delay_sound_enable scr_deleteexplosivesondeath scr_deleteexplosivesonspawn scr_dynamic_attachments_enable scr_enable_auto_melee scr_explosives_allow_disarm scr_explosives_disarm_time scr_fire_tracer_chance scr_limit_planted_c4s scr_limit_planted_claymores scr_objective_safezone_enable scr_objective_safezone_radius scr_rangefinder_enable scr_rng_damage_closer scr_rng_damage_longer";
	variableNames[ variableNames.size ] = "scr_rng_distance scr_rng_enabled scr_show_c4_blink_effect scr_sniperzoom_enable scr_sniperzoom_lower_levels scr_sniperzoom_upper_levels scr_vehicle_damage_enable scr_weaponjams_enable scr_weaponjams_gap_time scr_weaponjams_probability scr_switch_firing_mode_enable scr_switch_firing_mode_allow_m16 scr_switch_firing_mode_allow_ak47 scr_switch_firing_mode_allow_m4";
	
	// configs/gameplay/wlm.cfg
	svariableNames[ variableNames.size ] = "cr_wlm_enabled scr_wlm_foot scr_wlm_hand scr_wlm_head scr_wlm_lower_arm scr_wlm_lower_leg scr_wlm_lower_torso scr_wlm_neck scr_wlm_upper_arm scr_wlm_upper_leg scr_wlm_upper_torso";
	
	// configs/gameplay/wrm.cfg
	variableNames[ variableNames.size ] = "scr_wrm_ak47 scr_wrm_ak47_silenced scr_wrm_ak74u scr_wrm_ak74u_silenced scr_wrm_barrett scr_wrm_beretta scr_wrm_beretta_silenced scr_wrm_colt45 scr_wrm_colt45_silenced scr_wrm_deserteagle scr_wrm_dragunov scr_wrm_enabled scr_wrm_g3 scr_wrm_g3_silenced scr_wrm_g36c scr_wrm_g36c_silenced scr_wrm_m1014 scr_wrm_m14 scr_wrm_m14_silenced scr_wrm_m16 scr_wrm_m16_silenced scr_wrm_m21 scr_wrm_m4 scr_wrm_m4_silenced scr_wrm_m40a3 scr_wrm_m60e4 scr_wrm_mp44 scr_wrm_mp5 scr_wrm_mp5_silenced scr_wrm_p90 scr_wrm_p90_silenced scr_wrm_remington700 scr_wrm_rpd scr_wrm_saw scr_wrm_skorpion scr_wrm_skorpion_silenced scr_wrm_usp scr_wrm_usp_silenced scr_wrm_uzi scr_wrm_uzi_silenced scr_wrm_winchester1200";
	
	// configs/gameplay/wwm.cfg
	variableNames[ variableNames.size ] = "scr_wwm_ak47 scr_wwm_ak47_gl scr_wwm_ak74u scr_wwm_barrett scr_wwm_beretta scr_wwm_bomb scr_wwm_c4 scr_wwm_claymore scr_wwm_colt45 scr_wwm_concussion_grenade scr_wwm_deserteagle scr_wwm_deserteaglegold scr_wwm_dragunov scr_wwm_enabled scr_wwm_flash_grenade scr_wwm_frag_grenade scr_wwm_g3 scr_wwm_g3_gl scr_wwm_g36c scr_wwm_g36c_gl scr_wwm_m1014 scr_wwm_m14 scr_wwm_m14_gl scr_wwm_m16 scr_wwm_m16_gl scr_wwm_m21 scr_wwm_m4 scr_wwm_m4_gl scr_wwm_m40a3 scr_wwm_m60e4 scr_wwm_mp44 scr_wwm_mp5 scr_wwm_p90 scr_wwm_range_speed_1 scr_wwm_range_speed_2 scr_wwm_range_speed_3 scr_wwm_range_speed_4 scr_wwm_range_speed_5 scr_wwm_range_weight_1 scr_wwm_range_weight_2 scr_wwm_range_weight_3 scr_wwm_range_weight_4 scr_wwm_range_weight_5 scr_wwm_remington700 scr_wwm_rpd scr_wwm_rpg scr_wwm_saw scr_wwm_skorpion scr_wwm_smoke_grenade";
	variableNames[ variableNames.size ] = "scr_wwm_usp scr_wwm_uzi scr_wwm_winchester1200";
	
	// configs/gametypes/assassination.cfg
	variableNames[ variableNames.size ] = "scr_ass_extracting_time scr_ass_force_vip_handgun scr_ass_roundlimit scr_ass_roundswitch scr_ass_scoreboard_vip scr_ass_scorelimit scr_ass_teambalanceendofround scr_ass_timelimit scr_ass_vip_clan_tags scr_ass_vip_health";
	
	// configs/gametypes/behindenemylines.cfg
	variableNames[ variableNames.size ] = "scr_bel_alive_points scr_bel_alive_points_time scr_bel_playerrespawndelay scr_bel_scorelimit scr_bel_showoncompass scr_bel_showoncompass_interval scr_bel_showoncompass_points scr_bel_showoncompass_time scr_bel_teambalanceendofround scr_bel_timelimit scr_bel_waverespawndelay";
		
	// configs/gametypes/captureandhold.cfg
	variableNames[ variableNames.size ] = "scr_ch_chmode scr_ch_holdtime scr_ch_neutraltime scr_ch_numlives scr_ch_ownerspawndelay scr_ch_playerrespawndelay scr_ch_roundlimit scr_ch_roundswitch scr_ch_scoreboard_flag_carrier scr_ch_scorelimit scr_ch_show_flag_carrier scr_ch_show_flag_carrier_distance scr_ch_show_flag_carrier_time scr_ch_suddendeath_show_enemies scr_ch_suddendeath_timelimit scr_ch_teambalanceendofround scr_ch_timelimit scr_ch_waverespawndelay";
	
	// configs/gametypes/capturetheflag.cfg
	variableNames[ variableNames.size ] = "scr_ctf_ctfmode scr_ctf_endround_on_capture scr_ctf_flag_carrier_can_return scr_ctf_numlives scr_ctf_playerrespawndelay scr_ctf_roundlimit scr_ctf_roundswitch scr_ctf_scoreboard_flag_carrier scr_ctf_scorelimit scr_ctf_show_flag_carrier scr_ctf_show_flag_carrier_distance scr_ctf_show_flag_carrier_time scr_ctf_suddendeath_show_enemies scr_ctf_suddendeath_timelimit scr_ctf_teambalanceendofround scr_ctf_timelimit scr_ctf_waverespawndelay";
	
	// configs/gametypes/domination.cfg
	variableNames[ variableNames.size ] = "scr_dom_announce_on_capture scr_dom_flag_capture_time scr_dom_flash_on_capture scr_dom_numlives scr_dom_playerrespawndelay scr_dom_roundlimit scr_dom_roundswitch scr_dom_scorelimit scr_dom_secured_all_bonus_time scr_dom_teambalanceendofround scr_dom_timelimit scr_dom_waverespawndelay";
	
	// configs/gametypes/freeforall.cfg
	variableNames[ variableNames.size ] = "scr_dm_numlives scr_dm_playerrespawndelay scr_dm_roundlimit scr_dm_scorelimit scr_dm_timelimit";
	
	// configs/gametypes/freezetag.cfg
	variableNames[ variableNames.size ] = "scr_ftag_auto_unfreeze_time scr_ftag_forcestartspawns scr_ftag_frozen_freelook scr_ftag_numlives scr_ftag_roundlimit scr_ftag_roundswitch scr_ftag_scorelimit scr_ftag_show_stats scr_ftag_teambalanceendofround scr_ftag_timelimit scr_ftag_unfreeze_beam scr_ftag_unfreeze_maxdistance scr_ftag_unfreeze_melt_iceberg scr_ftag_unfreeze_respawn scr_ftag_unfreeze_score scr_ftag_unfreeze_time";

	// configs/gametypes/greed.cfg
	variableNames[ variableNames.size ] = "scr_gr_active_drop_zone scr_gr_drop_zones_relocation_time scr_gr_base_dogtag_score scr_gr_minimap_mark_red_drops scr_gr_dogtag_autoremoval_time scr_gr_playerrespawndelay scr_gr_roundlimit scr_gr_scorelimit scr_gr_timelimit";

	// configs/gametypes/gungame.cfg
	variableNames[ variableNames.size ] = "scr_gg_auto_levelup scr_gg_auto_levelup_time scr_gg_death_penalty scr_gg_explosives_refresh scr_gg_explosives_special scr_gg_extra_explosives scr_gg_handicap_on scr_gg_kills_per_lvl scr_gg_knife_pro scr_gg_knifed_penalty scr_gg_nade_knife_weapon scr_gg_playerrespawndelay scr_gg_refill_on_kill scr_gg_specialty_slot1 scr_gg_specialty_slot2 scr_gg_timelimit scr_gg_weapon_order";
	
	// configs/gametypes/headquarters.cfg
	variableNames[ variableNames.size ] = "scr_koth_autodestroytime scr_koth_capturetime scr_koth_delayPlayer scr_koth_destroytime scr_koth_flash_on_capture scr_koth_flash_on_destroy scr_koth_kothmode scr_koth_numlives scr_koth_playerrespawndelay scr_koth_roundlimit scr_koth_roundswitch scr_koth_scorelimit scr_koth_spawnDelay scr_koth_spawntime scr_koth_teambalanceendofround scr_koth_timelimit scr_koth_waverespawndelay";

	// configs/gametypes/hideandseek.cfg
	variableNames[ variableNames.size ] = "scr_hns_hunting_music_time;scr_hns_hunting_music_enable;scr_hns_hidetime;scr_hns_props_speed;scr_hns_props_max_morphs;scr_hns_props_survive_score_time;scr_hns_roundlimit;scr_hns_roundswitch;scr_hns_scorelimit;scr_hns_timelimit;scr_hns_teambalanceendofround";
	
	// configs/gametypes/lastmanstanding.cfg
	variableNames[ variableNames.size ] = "scr_lms_roundlimit scr_lms_scorelimit scr_lms_timelimit";
	
	// configs/gametypes/lastteamstanding.cfg
	variableNames[ variableNames.size ] = "scr_lts_roundlimit scr_lts_roundswitch scr_lts_scorelimit scr_lts_teambalanceendofround scr_lts_timelimit";

	// configs/gametypes/oneinthechamber.cfg
	variableNames[ variableNames.size ] = "scr_oitc_suddendeath_show_enemies;scr_oitc_suddendeath_timelimit;scr_oitc_playerrespawndelay;scr_oitc_roundlimit;scr_oitc_scorelimit;scr_oitc_timelimi;scr_oitc_handgun;scr_oitc_specialty_slot1;scr_oitc_specialty_slot2";

	// configs/gametypes/retrieval.cfg
	variableNames[ variableNames.size ] = "scr_re_objective_autoresettime scr_re_defenders_show_both scr_re_defenders_spawndelay scr_re_numlives scr_re_objectives_enabled scr_re_one_retrieve scr_re_playerrespawndelay scr_re_roundlimit scr_re_roundswitch scr_re_scoreboard_objective_carrier scr_re_scorelimit scr_re_teambalanceendofround scr_re_timelimit scr_re_waverespawndelay";
	
	// configs/gametypes/sabotage.cfg
	variableNames[ variableNames.size ] = "scr_sab_bombtimer scr_sab_defusetime scr_sab_hotpotato scr_sab_numlives scr_sab_planting_sound scr_sab_planttime scr_sab_playerrespawndelay scr_sab_roundlimit scr_sab_roundswitch scr_sab_scoreboard_bomb_carrier scr_sab_scorelimit scr_sab_show_bomb_carrier scr_sab_show_bomb_carrier_distance scr_sab_show_bomb_carrier_time scr_sab_show_briefcase scr_sab_suddendeath_show_enemies scr_sab_suddendeath_timelimit scr_sab_teambalanceendofround scr_sab_timelimit scr_sab_waverespawndelay";
	
	// configs/gametypes/searchanddestroy.cfg
	variableNames[ variableNames.size ] = "scr_sd_allow_defender_explosivedestroy scr_sd_allow_defender_explosivedestroy_sound scr_sd_allow_defender_explosivedestroy_time scr_sd_allow_defender_explosivedestroy_win scr_sd_allow_defender_explosivepickup scr_sd_allow_quickdefuse scr_sd_bomb_notification_enable scr_sd_bombsites_enabled scr_sd_bombtimer scr_sd_bombtimer_modifier scr_sd_bombtimer_show scr_sd_defenders_show_both scr_sd_defusetime scr_sd_defusing_sound scr_sd_multibomb scr_sd_objective_takedamage_counter scr_sd_objective_takedamage_enable scr_sd_objective_takedamage_health scr_sd_objective_takedamage_option scr_sd_planting_sound scr_sd_planttime scr_sd_roundlimit scr_sd_roundswitch scr_sd_scoreboard_bomb_carrier scr_sd_scorelimit scr_sd_sdmode scr_sd_show_briefcase scr_sd_teambalanceendofround scr_sd_timelimit";

	// configs/gametypes/sharpshooter.cfg
	variableNames[ variableNames.size ] = "scr_ss_playerrespawndelay;scr_ss_roundlimit;scr_ss_scorelimit;scr_ss_timelimit;scr_ss_weapon_switch_time;scr_ss_available_weapons;scr_ss_explosives_special;scr_ss_specialty_slot1;scr_ss_specialty_slot2";

	// configs/gametypes/teamdeathmatch.cfg
	variableNames[ variableNames.size ] = "scr_war_forcestartspawns scr_war_numlives scr_war_playerrespawndelay scr_war_roundlimit scr_war_roundswitch scr_war_scorelimit scr_war_teambalanceendofround scr_war_timelimit scr_war_waverespawndelay";

	// configs/gametypes/teamgreed.cfg
	variableNames[ variableNames.size ] = "scr_tgr_base_dogtag_score scr_tgr_minimap_mark_red_drops scr_tgr_dogtag_autoremoval_time scr_tgr_playerrespawndelay scr_tgr_roundlimit scr_tgr_roundswitch scr_tgr_scorelimit scr_tgr_timelimit scr_tgr_waverespawndelay scr_tgr_forcestartspawns scr_tgr_teambalanceendofround";
	
	// configs/server/advancedacp.cfg
	// variableNames[ variableNames.size ] = "scr_aacp_ban_player_access_code scr_aacp_custom_reason_1 scr_aacp_enable scr_aacp_end_map_access_code scr_aacp_explode_player_access_code scr_aacp_fast_restart_map_access_code scr_aacp_gametypes scr_aacp_guids_access_1 scr_aacp_kick_player_access_code scr_aacp_kill_player_access_code scr_aacp_marshal_guids scr_aacp_load_map_access_code scr_aacp_load_ruleset_access_code scr_aacp_maps_1 scr_aacp_max_warnings scr_aacp_next_map_access_code scr_aacp_pointout_player_access_code scr_aacp_protected_guids scr_aacp_redirect_player_access_code scr_aacp_restart_map_access_code scr_aacp_returnspawn_player_access_code scr_aacp_rulesets scr_aacp_shock_disables_weapons scr_aacp_shock_player_access_code scr_aacp_shock_time scr_aacp_switch_spectator_player_access_code scr_aacp_switch_team_player_access_code scr_aacp_sws_show_welcome_screen scr_custom_map_names_1";
	
	// configs/server/advancedmvs.cfg
	variableNames[ variableNames.size ] = "scr_amvs_gametype_time scr_amvs_gametypes scr_amvs_map_time scr_amvs_maps scr_amvs_winner_time";
	
	// configs/server/idlemonitor.cfg
	variableNames[ variableNames.size ] = "scr_idle_protected_guids scr_idle_protected_tags scr_idle_show_warning scr_idle_spectator_timeout scr_idle_switch_spectator";
	
	// configs/server/mapcontrol.cfg
	// variableNames[ variableNames.size ] = "scr_eog_fastrestart scr_mrcs_auto_gametypes scr_mrcs_auto_generate scr_mrcs_auto_maps_1 scr_rotateifempty_enable scr_rotateifempty_grace_period scr_rotateifempty_time sv_mapRotationLoadBased sv_mapRotationScramble";
	
	// configs/server/match.cfg
	variableNames[ variableNames.size ] = "scr_match_readyup_public scr_guidcs_allowed_1 scr_guidcs_enable scr_match_readyup_disable_weapons scr_match_readyup_period scr_match_readyup_period_onsideswitch scr_match_readyup_show_checksums scr_match_readyup_show_checksums_interval scr_match_readyup_time_match scr_match_readyup_time_round scr_match_strategy_allow_bypass scr_match_strategy_allow_movement scr_match_strategy_getready_time scr_match_strategy_show_bypassed scr_match_strategy_time scr_timeouts_guids scr_timeouts_length scr_timeouts_perteam scr_timeouts_tags";
	
	// configs/server/others.cfg
	variableNames[ variableNames.size ] = "scr_server_overall_admin_guids scr_antilag scr_allow_leader_dialog scr_allow_testclients scr_b3_poweradmin_enable scr_enable_music scr_enable_nightvision scr_forfeit_enable scr_g_gravity scr_game_matchstarttime scr_game_playerwaittime scr_intermission_time scr_server_load_low scr_server_load_medium scr_server_load_on_startup scr_testclients scr_tk_explosive_countasone scr_tk_limit scr_tk_punishment scr_tk_punishment_time";
	
	// configs/server/overtime.cfg
	variableNames[ variableNames.size ] = "scr_overtime_enable scr_overtime_incrementalspawndelay scr_overtime_numlives scr_overtime_playerrespawndelay scr_overtime_suddendeath scr_overtime_timelimit";
	
	// configs/server/rank.cfg
	variableNames[ variableNames.size ] = "scr_enable_virtual_ranks scr_server_rank_type scr_power_rank_delay scr_power_rank_mode scr_virtual_ranks scr_virtual_ranks_score";
	
	// configs/server/reservedslots.cfg
	variableNames[ variableNames.size ] = "scr_reservedslots_amount scr_reservedslots_clantags scr_reservedslots_enable scr_reservedslots_guids_1 scr_reservedslots_redirectip";
	
	// configs/server/scorebot.cfg
	variableNames[ variableNames.size ] = "scr_enable_scorebot scr_scorebot_delimiter";
	
	// configs/server/sponsors.cfg
	variableNames[ variableNames.size ] = "scr_sponsor_enable scr_sponsor_time scr_sponsor_interval";
	
	// configs/server/teams.cfg
	variableNames[ variableNames.size ] = "scr_clan_vs_all_tags scr_clan_vs_all_team scr_custom_allies_headicon scr_custom_allies_logo scr_custom_allies_name scr_custom_axis_headicon scr_custom_axis_logo scr_custom_axis_name scr_custom_teams_enable scr_custom_teams_maintain_on_switch scr_custom_teams_strings scr_force_autoassign scr_force_autoassign_clan_tags scr_switch_teams_at_halftime scr_teambalance scr_teambalance_check_interval scr_teambalance_delay scr_teambalance_protected_clan_tags scr_teambalance_show_message";
	
	// configs/server/voting.cfg
	variableNames[ variableNames.size ] = "scr_allowvote scr_allowvote_changegametype scr_allowvote_changemap scr_allowvote_clan_tags scr_allowvote_kickplayer scr_allowvote_nextmap scr_allowvote_restartmap";

	
	// Process the array with all the variables
	for ( line=0; line < variableNames.size; line++ ) {
		thisLineVariables = strtok( variableNames[line], " " );
		
		// Process all the variables in this line
		for ( var=0; var < thisLineVariables.size; var++ ) {
			
			// Check if this variable has been set and reset it if it has
			if ( getDvar( thisLineVariables[var] ) != "" ) {
				setDvar( thisLineVariables[var], "" );
				variablesReseted++;
			}			
		}		
	}
	
	// Log how many variables we reset to ""
	logPrint( "RSM;" + variablesReseted + " variable(s) have been reseted!\n" );
}