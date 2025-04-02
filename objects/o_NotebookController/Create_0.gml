//vars
global.nbvisible = false;
global.pagenum = 0;
global.tryturnleft = false;
global.tryturnright = false;

//map
global.notebook = ds_map_create();

//Phlox
phlox_map = ds_map_create();
ds_map_add(phlox_map, "discovered", false);
ds_map_add(phlox_map, "fully_explored", false);
ds_map_add(phlox_map, "aspects_discovered", [false, false, false, false]);

//Globemallow
globemallow_map = ds_map_create();
ds_map_add(globemallow_map, "discovered", false);
ds_map_add(globemallow_map, "fully_explored", false);
ds_map_add(globemallow_map, "aspects_discovered", [false, false, false, false]);

//Palmers
palmers_map = ds_map_create();
ds_map_add(palmers_map, "discovered", false);
ds_map_add(palmers_map, "fully_explored", false);
ds_map_add(palmers_map, "aspects_discovered", [false, false, false, false]);

//Fremont
fremont_map = ds_map_create();
ds_map_add(fremont_map, "discovered", false);
ds_map_add(fremont_map, "fully_explored", false);
ds_map_add(fremont_map, "aspects_discovered", [false, false, false, false]);

//Mountain
mountain_map = ds_map_create();
ds_map_add(mountain_map, "discovered", false);
ds_map_add(mountain_map, "fully_explored", false);
ds_map_add(mountain_map, "aspects_discovered", [false, false, false, false]);

//add plants
ds_map_add(global.notebook, "Alpine Phlox", phlox_map);
ds_map_add(global.notebook, "Globemallow", globemallow_map);
ds_map_add(global.notebook, "Palmers", palmers_map);
ds_map_add(global.notebook, "Fremont", fremont_map);
ds_map_add(global.notebook, "Mountain", mountain_map);