depth = -1;
sprite_index = spr_nothing;
global.parameter1 = 7; global.parameter2 = 90; //parameter1: x on screen, parameter2: y on screen
instance_create(x,y,obj_seedbutton);
global.parameter1 = 7; global.parameter2 = 131;
instance_create(x,y,obj_compostbutton);
global.parameter1 = 7; global.parameter2 =172;
instance_create(x,y,obj_toolbutton);
global.parameter1 = 7; global.parameter2 = 213;
instance_create(x,y,obj_treebutton);
global.parameter1 = 7; global.parameter2 = 254;
instance_create(x,y,obj_buildingbutton);
global.parameter1 = view_wview[0]-154; global.parameter2 = 27;
instance_create(x,y,obj_speedbutton1);
global.parameter1 = view_wview[0]-126; global.parameter2 = 27;
instance_create(x,y,obj_speedbutton2);
global.parameter1 = view_wview[0]-98; global.parameter2 = 27;
instance_create(x,y,obj_speedbutton3);


