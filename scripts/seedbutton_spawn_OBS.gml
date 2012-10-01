var newobj;
//a0 = argument0;
//a1 = argument1;
//a2 = argument2;
newobj = instance_create(view_xview[0],view_yview[0],obj_seedbutton);
//with (newobj) {
  newobj.relx = argument0;
  newobj.rely = argument1;
  newobj.sprite_index = argument2;
  newobj.image_index = 0;
  //depth = -120000
//  }
return newobj;

