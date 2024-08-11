class SuperShockWave extends ShockWave;

// Code is copied from the original ShockWave. Multiplied some numbers by ten.

simulated function Tick( float DeltaTime )
{
	if ( Level.NetMode != NM_DedicatedServer )
	{
		ShockSize =  130 * (Default.LifeSpan - LifeSpan) + 3.5/(LifeSpan/Default.LifeSpan+0.05);
		ScaleGlow = Lifespan;
		AmbientGlow = ScaleGlow * 255;
		DrawScale = ShockSize;
	}
}

simulated function Timer()
{

	local actor Victims;
	local float damageScale, dist, MoScale;
	local vector dir;

	ShockSize =  130 * (Default.LifeSpan - LifeSpan) + 3.5/(LifeSpan/Default.LifeSpan+0.05);
	if ( Level.NetMode != NM_DedicatedServer )
	{
		if (ICount==4) spawn(class'WarExplosion2',,,Location);
		ICount++;

		if ( Level.NetMode == NM_Client )
		{
			foreach VisibleCollidingActors( class 'Actor', Victims, ShockSize*29, Location,, true)
				if ( Victims.Role == ROLE_Authority )
				{
					dir = Victims.Location - Location;
					dist = FMax(1,VSize(dir));
					dir = dir/dist +vect(0,0,0.3); 
					if ( (dist> OldShockDistance) || (dir dot Victims.Velocity <= 0))
					{
						MoScale = FMax(0, 1100 - 1.1 * Dist);
						Victims.Velocity = Victims.Velocity + dir * (MoScale + 20);	
						Victims.TakeDamage
						(
							MoScale,
							Instigator, 
							Victims.Location - 0.5 * (Victims.CollisionHeight + Victims.CollisionRadius) * dir,
							(1000 * dir),
							'RedeemerDeath'
						);
					}
				}	
			return;
		}
	}

	foreach VisibleCollidingActors( class 'Actor', Victims, ShockSize*29, Location,, true)
	{
		dir = Victims.Location - Location;
		dist = FMax(1,VSize(dir));
		dir = dir/dist + vect(0,0,0.3); 
		if (dist> OldShockDistance || (dir dot Victims.Velocity < 0))
		{
			MoScale = FMax(0, 1100 - 1.1 * Dist);
			if ( Victims.bIsPawn )
				Pawn(Victims).AddVelocity(dir * (MoScale + 20));
			else
				Victims.Velocity = Victims.Velocity + dir * (MoScale + 20);	
			Victims.TakeDamage
			(
				MoScale,
				Instigator, 
				Victims.Location - 0.5 * (Victims.CollisionHeight + Victims.CollisionRadius) * dir,
				(1000 * dir),
				'RedeemerDeath'
			);
		}
	}	
	OldShockDistance = ShockSize*29;	
}
