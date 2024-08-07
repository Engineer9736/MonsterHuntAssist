class MonsterHuntAssist expands Mutator;

function Mutate(string MutateString, PlayerPawn Sender) {
	if(Caps(MutateString) == "HELP") {
		Sender.SendMessage("Command overview for MonsterHuntAssist:");
		Sender.SendMessage("- mutate supersupershockrifle");
		Sender.SendMessage("- mutate superwarshell");
		Sender.SendMessage("- mutate teleportto <playername>");
		Sender.SendMessage("- mutate guidedwarshell");
		Sender.SendMessage("- mutate showfactories");
		Sender.SendMessage("- mutate saveloc");
		Sender.SendMessage("- mutate loadloc");
	}
	
	if(Caps(MutateString) == "SUPERSUPERSHOCKRIFLE") {
		
		// Spawn a regular SuperShockRifle.
		
		// Set the hitdamage variable to 100000.
	}
	
	if(Caps(MutateString) == "SUPERWARSHELL") {
		
		// Spawn a subclassed Botpack.Warshell which has the damage radius greatly increased.
	
	}
	
	if(Caps(MutateString) == "TELEPORTTO") {
	
		// Move the player to the other player. (This functionality can be stolen from another mutator I made in the past)
	
	}
	
	if(Caps(MutateString) == "GUIDEDWARSHELL") {
	
		// Todo: Look in the Redeemer class how this functionality is started and mimic it.
	}
	
	if(Caps(MutateString) == "SHOWFACTORIES") {
		
		// Set the display style of all factories to visible.
		
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
