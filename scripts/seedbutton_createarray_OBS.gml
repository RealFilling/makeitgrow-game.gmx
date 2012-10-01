var a, newbutton;
// Seed button array
for (a=0;a<NUMPLANTTYPES;a+=1) {
  newbutton = instance_create(obj_seedbutton,a*48,0);
  newbutton.buttontype = a;
  newbutton.x = ax(24);
  newbutton.y = ay(24 + (a*32));
  newbutton.ypersist = 24+(a*32);
  global.buttonarray[a] = newbutton;
  }
  

