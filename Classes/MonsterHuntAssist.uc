class MonsterHuntAssist expands Mutator;

function Mutate(string MutateString, PlayerPawn Sender) {
	local SuperShockRifle ssr;
	local ThingFactory TF;
	local CreatureFactory CF;
	local int i;
	local Actor Owner;
	
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
		
		i = 0;
		
		// Set the display style of all factories to visible.
		foreach AllActors(class'ThingFactory', TF) {
			TF.bHidden = false;
			i++;
		}
		
		foreach AllActors(class'CreatureFactory', CF) {
			CF.bHidden = false;
			i++;
		}
		
		Sender.BroadcastMessage("Made " $ i $ " factories visible.");
		
		// Find a way to display the remaining spawncount. Perhaps this can be taken from FBar.
		
	}
	
	if(Caps(MutateString) == "SAVELOC") {
		
		// Save the current player location into a variable. This will be an array with the PlayerName as key and location as value.
		
		// This functionality can be stolen from another mutator i made in the past.
	}
	
	if(Caps(MutateString) == "LOADLOC") {
		// This functionality can be stolen from another mutator i made in the past.
	}
}
