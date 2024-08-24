class MonsterHuntAssistWRI expands WRI;

var MonsterHuntAssist MonsterHuntAssistMutator;

replication
{
   // Variables the server should send to the client.
   //reliable if( Role==ROLE_Authority )
}

simulated function bool SetupWindow ()
{	
   //log("WRI SetupWindow");
   if ( Super.SetupWindow() )
   {
      settimer(1,false);
   }
   else
      log("Super.SetupWindow() = false");
	  
	// Give a handle to this WRI from the Mapvote window, so that it can give the instruction to reload the maplist with a filter on it.
	//MonsterHuntAssistTabWindow(TheWindow).MapWindow.WRI = self;

	return true;
}

simulated function timer()
{
   local int i;
}

function GetServerConfig() // executes on server
{
 
}

defaultproperties
{
     WindowClass=Class'MonsterHuntAssist.MonsterHuntAssistTabWindow'
     WinLeft=50
     WinTop=30
     WinWidth=410
     WinHeight=330
}
