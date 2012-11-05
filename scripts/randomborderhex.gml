if (fiftyfifty()==0) { // left or right edge
  global.hexy = irandom_range(1, BOARDHEIGHT-2);
  if (fiftyfifty()==0) { //left
    global.hexx = 1;
    }
  else { //right
    global.hexx = BOARDWIDTH-1;
    }
  }
else { //top or bottom edge
  global.hexx = irandom_range(1, BOARDWIDTH-2);
  if (fiftyfifty()==0) { // top
    global.hexy = 1;
    }
  else { // bottom
   global.hexy = BOARDHEIGHT-1;
    }
  }
