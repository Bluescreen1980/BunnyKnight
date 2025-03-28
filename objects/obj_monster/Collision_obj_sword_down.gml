 

if (taking_damage == false)
{
//take damage
monsterHP = monsterHP - global.playerDamageCurrent;

//do not take more damage from sword strike (cooldown)
taking_damage = true;
alarm[0] = 22;


//pushback
 monster_currentspeed = 0;
alarm[1] = 22;


//Spawn blood sprites to ground

var inst = instance_create_layer(x, y+5, "ground", obj_blood);
		with (inst)
		{
		}



}

 
 

 
