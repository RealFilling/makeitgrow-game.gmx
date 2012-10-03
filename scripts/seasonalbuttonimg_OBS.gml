var item;
item = argument0;
if (item >= NUMPLANTTYPES) {
  return spr_plainbutton2;
  }
else {
  return seasonalselectbuttonimgs[monthaffinity(item+1)];
  }

