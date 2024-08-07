# MonsterHuntAssist
An Unreal Tournament mutator with several functions to assist with the MonsterHunt gameplay

**How to continue development:**
Go to your UnrealTournament directory
Run: `git clone <cloneurl>`
This will create a MonsterHuntAssist directory with all the contents.

**How to compile**
Add `EditPackages=MonsterHuntAssist` to UnrealTournament.ini
Run `ucc make` in a Command Prompt.

**Proposed functionalities:**
* A `mutate help` command which lists all available functions.
* A `mutate supersupershockrifle` command which spawns a SuperShockRifle with 100000 hitdamage.
* A `mutate superwarshell` command which spawns a warshell with a big radius?
* A `mutate teleportto <playername>` command.
* A `mutate guidedwarshell` command which spawns a warshell and lets the spawner fly around with it.
* A `mutate showfactories` command which makes all SpawnFactories visible and shows the remaining spawn count for each of them.
* `mutate saveloc` and `mutate loadloc` commands to save a location and teleport back to it later.
