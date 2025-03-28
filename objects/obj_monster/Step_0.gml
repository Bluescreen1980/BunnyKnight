depth = -y
//image_angle = direction;
sprite_change_counter += 1;
attack_cooldown_current = attack_cooldown_current-1;

if (monsterHP <= 0) //die
{
	//spawn corpse, delete instance
	var inst = instance_create_layer(x+irandom_range(0,25)-50, y+irandom_range(0,25), "Instances", obj_corpse);
		with (inst)
		{
		}
	instance_destroy();	
	
}


if (pathing_on == 1)
{
path = path_add();
mp_grid_path(global.grid,path,x,y,target_x,target_y,1);
path_start(path,monster_currentspeed,path_action_stop,true);
pathing_on = 1;
}

target_x = obj_player.x;
target_y = obj_player.y;

if (direction > 300 || direction < 60){
	monster_direction = "east";
	}
else if (direction >= 60 && direction < 150){
	monster_direction = "north"
	;}
else if (direction >= 150 && direction < 210){
	monster_direction = "west";
	}
else {
	monster_direction = "south";
	}


if (sprite_change_counter >= 20){

switch (monster_direction) {
	    case "north":
	        image_xscale = global.sprite_scale;
			image_yscale = global.sprite_scale;
			sprite_index = spr_skeleton_north_walk
			sword_spawn_x_temp = 8;
			sword_spawn_y_temp = -32;
	        break;
		case "south":
		    image_xscale = global.sprite_scale;
			image_yscale = global.sprite_scale;
			sprite_index = spr_skeleton_south_walk
			sword_spawn_x_temp = 12;
			sword_spawn_y_temp = -16;
			break;
		case "east":
		   image_xscale = global.sprite_scale;
		   image_yscale = global.sprite_scale;
		   sprite_index = spr_skeleton_east_walk
		   sword_spawn_x_temp = 36;
		   sword_spawn_y_temp = -32;
	        break;	
		case "west":
		    image_xscale = global.sprite_scale*-1;
			image_yscale = global.sprite_scale;
			sprite_index = spr_skeleton_east_walk
			sword_spawn_x_temp = -36;
			sword_spawn_y_temp = -32;
	        break;
	    default:
	        
	        break;
	}

sprite_change_counter = 0;
}


global.temp_monster_dir = monster_direction;
global.temp_number = depth;
if (attack_cooldown_current <= 0){
	if (point_distance(x,y-35,global.bunny_x,global.bunny_y-30) < 150)
	{
		var inst = instance_create_layer(x+sword_spawn_x_temp, y+ sword_spawn_y_temp, "Instances", obj_sword_180enemy);
		with (inst)
		{
			var offhandstrike = 1
			var strike_dir = global.temp_monster_dir;
			var deepness = global.temp_number-1;
		}
		monster_currentspeed = 0;
		alarm[2] = 40;

		attack_cooldown_current = attack_cooldown_max+10;
	}
	else {
	attack_cooldown_current = attack_cooldown_max}
}
 