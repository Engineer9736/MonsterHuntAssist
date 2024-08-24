class MonsterHuntAssist expands Mutator;

// Note: CreatureFactory is a subclass of ThingFactory. So CreatureFactory will have all the same properties that ThingFactory has.
// Also ThingFactory variables can be used to deal with CreatureFactories.

function Mutate(string MutateString, PlayerPawn Sender) {
	local ShowFactories SF;
	
	if(Left(Caps(MutateString),4) == "HELP") {
		Sender.BroadcastMessage("Command overview for MonsterHuntAssist:");
		Sender.BroadcastMessage("- mutate ssupershockrifle");
		Sender.BroadcastMessage("- mutate superwarshell");
		Sender.BroadcastMessage("- mutate teleportto <playername>");
		Sender.BroadcastMessage("- mutate guidedwarshell");
		Sender.BroadcastMessage("- mutate showfactories");
		Sender.BroadcastMessage("- mutate saveloc");
		Sender.BroadcastMessage("- mutate loadloc");
	}
	
	if(Left(Caps(MutateString), 20) == "SSUPERSHOCKRIFLE") {
		
		// Spawn the SSuperShockRifle.
		Spawn( class'MonsterHuntAssist.SSuperShockRifle',,,Sender.Location + 72 * Vector(Sender.Rotation) + vect(0,0,1) * 15 );
	}
	
	if(Caps(MutateString) == "SUPERWARSHELL") {
		
		// Spawn a subclassed Botpack.Warshell which has the damage radius greatly increased.
	
	}
	
	if(Caps(MutateString) == "TELEPORTTO") {
	
		// Move the player to the other player. (This functionality can be stolen from another mutator I made in the past)
	
	}
	
	if(Caps(MutateString) == "GUIDEDWARSHELL") {
	
		// Look in the Redeemer class how this functionality is started and mimic it.
		
		/*Owner = Sender;
		
		PlayerPawn(Owner).ShakeView(ShakeTime, ShakeMag, ShakeVert);
		bPointing=True;
		Pawn(Owner).PlayRecoil(FiringSpeed);
		PlayFiring();
		GuidedShell = GuidedWarShell(ProjectileFire(AltProjectileClass, ProjectileSpeed, bWarnTarget));
		if (GuidedShell != none)
		{
		    GuidedShell.SetOwner(Owner);
		    PlayerPawn(Owner).ViewTarget = GuidedShell;
		    GuidedShell.Guider = PlayerPawn(Owner);
		    ClientAltFire(0);
		    GotoState('Guiding');
		}*/
	}
	
	if(Caps(MutateString) == "SHOWFACTORIES") {
		SF = Spawn(class'CommandShowFactories');
		SF.ShowFactories(Sender);
		Sender.BroadcastMessage("ShowFactories command finished.");
	}
	
	if(Caps(MutateString) == "SAVELOC") {
		
		// Save the current player location into a variable. This will be an array with the PlayerName as key and location as value.
		
		// This functionality can be stolen from another mutator i made in the past.
	}
	
	if(Caps(MutateString) == "LOADLOC") {
		// This functionality can be stolen from another mutator i made in the past.
	}
}
