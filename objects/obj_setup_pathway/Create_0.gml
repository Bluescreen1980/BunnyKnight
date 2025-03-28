/// @description Insert description here
// You can write your code in this editor


//create
/// @description Insert description here
// You can write your code in this editor


global.grid = mp_grid_create (0,0,room_width/32, room_height/32, 32,32);

//add walls
//mp_grid_add_instances(grid, obj_wall_parent, 0)

var lay_id = layer_get_id("collision");
var map_id = layer_tilemap_get_id(lay_id);

var cell_size = 32;
var w = room_width / cell_size;
var h = room_height / cell_size;

for (var i = 0; i < w; i++) {
for (var j = 0; j < h; j++) {
    if (tilemap_get_at_pixel(map_id, i * cell_size, j * cell_size) > 0)
    {
        mp_grid_add_cell(global.grid, i, j);
    }
}}

 

 