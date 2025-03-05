//vars
global.nbvisible = false;
global.pagenum = 0;
global.tryturnleft = false;
global.tryturnright = false;

//map
global.notebook = ds_map_create();

//Alpine Phlox - phlox
phlox_map = ds_map_create();
ds_map_add(phlox_map, "discovered", false);
ds_map_add(phlox_map, "fully_explored", false);
ds_map_add(phlox_map, "aspects_discovered", [false, false, false, false]);

//Globemallow
globemallow_map = ds_map_create();
ds_map_add(globemallow_map, "discovered", false);
ds_map_add(globemallow_map, "fully_explored", false);
ds_map_add(globemallow_map, "aspects_discovered", [false, false, false, false]);

//add plants
ds_map_add(global.notebook, "Alpine Phlox", phlox_map);
ds_map_add(global.notebook, "Globemallow", globemallow_map);