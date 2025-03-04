//vars
global.nbvisible = false;
global.pagenum = 1;

//map
global.notebook = ds_map_create();

//Alpine Phlox - phlox
var phlox_map = ds_map_create();
ds_map_add(phlox_map, "discovered", false);
ds_map_add(phlox_map, "fully_explored", false);
ds_map_add(phlox_map, "aspects_discovered", [false, false, false, false]);

//Globemallow
var globemallow_map = ds_map_create();
ds_map_add(globemallow_map, "discovered", false);
ds_map_add(globemallow_map, "fully_explored", false);
ds_map_add(globemallow_map, "aspects_discovered", [false, false, false, false]);

//add plants
ds_map_add(global.notebook, "Alpine Phlox", phlox_map);
ds_map_add(global.notebook, "Globemallow", globemallow_map);