#include openwarfare\_utils;

init()
{
	// Load the module's dvars
	level.scr_game_spectatetype = getdvarx( "scr_game_spectatetype", "int", 1, 0, 2 );
	switch ( level.gametype ) {
		case "dm":
		case "gg":
		case "gr":
		case "ss":
			level.scr_game_spectatetype = getdvarx( "scr_game_spectatetype", "int", 0, 0, 2 );
			break;
	}
	
	level.scr_game_spectatetype_spectators = getdvarx( "scr_game_spectatetype_spectators", "int", 2, 0, 2 );
	level.scr_game_spectators_guids = getdvarx( "scr_game_spectators_guids", "string", "" );
	
	level.spectateOverride["allies"] = spawnstruct();
	level.spectateOverride["axis"] = spawnstruct();
	
	level thread onPlayerConnect();
}


onPlayerConnect()
{
	while(1) {
		level waittill("connected", player);
		
		player thread onJoinedTeam();
		player thread onJoinedSpectators();
		player thread onPlayerSpawned();
	}
}


onPlayerSpawned()
{
	self endon("disconnect");
	
	while(1) {
		self waittill("spawned_player");
		self setSpectatePermissions();
	}
}


onJoinedTeam()
{
	self endon("disconnect");
	
	while(1) {
		self waittill("joined_team");
		self setSpectatePermissions();
	}
}

onJoinedSpectators()
{
	self endon("disconnect");
	
	while(1) {
		self waittill("joined_spectators");
		self setSpectatePermissions();
	}
}


updateSpectateSettings()
{
	level endon ( "game_ended" );
	
	for ( index = 0; index < level.players.size; index++ )
		level.players[index] setSpectatePermissions();
}


getOtherTeam( team )
{
	if ( team == "axis" )
		return "allies";
	else if ( team == "allies" )
		return "axis";
	else
		return "none";
}



setSpectatePermissions()
{
	team = self.sessionteam;
	
	if ( self.pers["team"] == "spectator" ) {
		// If we have GUIDs setup then we'll check for matches
		if ( level.scr_game_spectators_guids != "" ) {
			if ( issubstr( level.scr_game_spectators_guids, self getGuid() ) ) {
				spectateType = level.scr_game_spectatetype_spectators;
			}
			else {
				// Check if we have black screen enabled and overwrite to 0
				if ( level.scr_blackscreen_spectators == 1 && !issubstr( level.scr_blackscreen_spectators_guids, self getGuid() ) ) {
					spectateType = 0;
				}
				else {
					spectateType = level.scr_game_spectatetype;
				}
			}
		}
		else {
			// Check if we have black screen enabled and overwrite to 0
			if ( level.scr_blackscreen_spectators == 1 && !issubstr( level.scr_blackscreen_spectators_guids, self getGuid() ) ) {
				spectateType = 0;
			}
			else {
				spectateType = level.scr_game_spectatetype_spectators;
			}
		}
	}
	else
		spectateType = level.scr_game_spectatetype;
		
	switch( spectateType ) {
		case 0: // disabled
			self allowSpectateTeam( "allies", false );
			self allowSpectateTeam( "axis", false );
			self allowSpectateTeam( "freelook", false );
			self allowSpectateTeam( "none", false );
			break;
		case 1: // team/player only
			if ( !level.teamBased ) {
				self allowSpectateTeam( "allies", true );
				self allowSpectateTeam( "axis", true );
				self allowSpectateTeam( "none", true );
				self allowSpectateTeam( "freelook", false );
			}
			else if ( isDefined( team ) && (team == "allies" || team == "axis") ) {
				self allowSpectateTeam( team, true );
				self allowSpectateTeam( getOtherTeam( team ), false );
				self allowSpectateTeam( "freelook", false );
				self allowSpectateTeam( "none", false );
			}
			else {
				self allowSpectateTeam( "allies", false );
				self allowSpectateTeam( "axis", false );
				self allowSpectateTeam( "freelook", false );
				self allowSpectateTeam( "none", false );
			}
			break;
		case 2: // free
			self allowSpectateTeam( "allies", true );
			self allowSpectateTeam( "axis", true );
			self allowSpectateTeam( "freelook", true );
			self allowSpectateTeam( "none", true );
			break;
	}
	
	if ( isDefined( team ) && (team == "axis" || team == "allies") ) {
		if ( isDefined(level.spectateOverride[team].allowFreeSpectate) )
			self allowSpectateTeam( "freelook", true );
			
		if ( isDefined(level.spectateOverride[team].allowEnemySpectate) )
			if ( level.spectateOverride[team].allowEnemySpectate == 1 )
				self allowSpectateTeam( getOtherTeam( team ), true );
			else
				self allowSpectateTeam( getOtherTeam( team ), false );
	}
}