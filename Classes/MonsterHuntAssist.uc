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
}
