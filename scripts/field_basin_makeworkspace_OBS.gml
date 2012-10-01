var xa,ya,unassigned,blocked;
unassigned = -1;
blocked = -2;
// Arrays workspace
for (ya=0;ya<BOARDHEIGHT;ya+=1) {
  for (xa=0;xa<BOARDWIDTH;xa+=1) {
    global.bworkspace[xa,ya]=unassigned;
    }
  }


