var a, subtickstoadv;
subtickstoadv = argument0;

for (a=0; a<subtickstoadv; a+=1) {
  global.subtick += 1;
  if (global.subtick > SUBTICKSPERTICK) {
    global.subtick = 0;
    advancetime(1);
    }
  advanceanimaltime();
  }
