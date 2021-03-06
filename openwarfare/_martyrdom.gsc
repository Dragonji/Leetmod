#include openwarfare\_eventmanager;
#include openwarfare\_utils;

init()
{
	// Get the main module's dvar
	level.specialty_grenadepulldeath_check_frags = getdvarx( "specialty_grenadepulldeath_check_frags", "int", 1, 0, 1 );
	
	// Check if we need to run this process
	if ( level.specialty_grenadepulldeath_check_frags == 0 )
		return;
		
	level thread addNewEvent( "onPlayerConnected", ::onPlayerConnected );
}

onPlayerConnected()
{
	self thread addNewEvent( "onPlayerSpawned", ::onPlayerSpawned );
	self thread addNewEvent( "onPlayerKilled", ::onPlayerKilled );
}

onPlayerSpawned()
{
	// Check if the player is using the martyrdom perk
	if ( self hasPerk( "specialty_grenadepulldeath" ) ) {
		self.hasMartyrdom = true;
		self.hasFragsForMartyrdom = true;
		self thread controlFragsForMartyrdom();
	}
	else {
		self.hasMartyrdom = false;
	}
}

onPlayerKilled()
{
	self waittill("killed_player");
	self notify("stop_frags_control");
	
	// Just display a message if the player had martyrdom but no more frags available
	if ( self.hasMartyrdom && !self.hasFragsForMartyrdom ) {
		if ( level.hardcoreMode == 0 )
			self iprintln( &"OW_NOFRAGS_FOR_MARTYRDOM" );
	}
}

controlFragsForMartyrdom()
{
	self endon("disconnect");
	self endon("stop_frags_control");
	self endon("unfrozen_player");
	level endon( "game_ended" );
	
	while(1) {
		// Wait for the player to throw a grenade
		self waittill ( "grenade_fire", grenade, weaponName );
		
		// Check if it was a frag grenade
		if ( weaponName == level.weapons["frag"] ) {
			// Check if the player has no more frag grenades left
			if ( self getAmmoCount( level.weapons["frag"] ) == 0 ) {
				// Remove the perk from the player
				self unsetPerk( "specialty_grenadepulldeath" );
				self.hasFragsForMartyrdom = false;
			}
		}
	}
}
