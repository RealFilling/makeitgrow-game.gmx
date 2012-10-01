thefield = instance_find(obj_field,0);
with (thefield) {
  field_serialize();
  field_initmap();
  field_soilgen();
  field_heightgen();    
  }

