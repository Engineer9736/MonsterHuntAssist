class CommandShowFactories extends Actor;

function ShowFactories(PlayerPawn Sender) {
	local ThingFactory TF;
	local CreatureFactory CF;
	local int i;
	
	i = 0;
	// Set the display style of all factories to visible.
	foreach AllActors(class'ThingFactory', TF) {			
		HandleCreatureOrThingFactory(TF, Sender);
		i++;
	}
	Sender.BroadcastMessage("Made " $ i $ " ThingFactories visible.");
	Sender.BroadcastMessage("");
	
	i = 0;
	// Set the display style of all factories to visible.
	foreach AllActors(class'CreatureFactory', CF) {			
		HandleCreatureOrThingFactory(CF, Sender);
		i++;
	}
	Sender.BroadcastMessage("Made " $ i $ " CreatureFactories visible.");
	Sender.BroadcastMessage("");
}

function HandleCreatureOrThingFactory(ThingFactory ourFactory, PlayerPawn Sender) {
	local int j;
	local SpawnPoint SP;
	
	// Make it visible and message the details.
	ourFactory.bHidden = false;
	Sender.BroadcastMessage(" > Made " $ ourFactory.class $ " with tag " $ ourFactory.Tag $ " visible.");
	
	// Make all related SpawnPoints visible.
	j = 0;
	foreach AllActors(class'SpawnPoint', SP) {
		if (SP.Tag == ourFactory.Tag) {
			j++;
			SP.bHidden = false;
		}
	}
	
	Sender.BroadcastMessage(" --> Made " $ j $ " actors with tag " $ ourFactory.Tag $ ", capacity " $ ourFactory.capacity $ " visible.");
	
	// Make counters visible too.
	
	// Find a way to display the remaining spawncount. Perhaps this can be taken from FBar.
}

defaultproperties
{
	bHidden=True
}