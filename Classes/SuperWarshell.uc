class SuperWarshell expands Warshell;

auto state Flying
{
	function Explode(vector HitLocation, vector HitNormal)
	{
		if ( Role < ROLE_Authority )
			return;

		// Modification: Changed 300.0 into 3000.0
		HurtRadius(Damage,3000.0, MyDamageType, MomentumTransfer, HitLocation );	 		 		
 		spawn(class'SuperShockWave',,,HitLocation+ HitNormal*16);	
		RemoteRole = ROLE_SimulatedProxy;	 		 		
 		Destroy();
	}
}

defaultproperties
{
	drawscale=4.0
}
