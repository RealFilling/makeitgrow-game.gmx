var mx, my, dx, dy, dcount, dir, thismoist, thatmoist, moistshare, moistremain;
var mweatherfactor, moistexchange, thisheight, thatheight, heightdiff, thistill;
var greenh;
mx = argument0;
my = argument1;
greenh = getgreenh(mx,my);

//
//moistchangeamt = 2;
if (greenh == 0) {
  mweatherfactor = global.weatherevap[global.currentweather];
  }
else {
  mweatherfactor = 3; // Same as "dry"
  }

//if (irandom_range(0,1) == 0) {
//#  // Evaporation
//  thismoist = getmoist(mx,my) - mweatherfactor;
//  }
//else {
//  // No evaporation
//  thismoist = getmoist(mx,my);
//  }

if (global.water[mx,my] >= 1) {
  thistill = 0;
  thismoist = 31;
  thisheight = global.height[mx,my] + getmoist(mx,my); // To make up for the fact that the soil in lakes is shallow.
  }
else {
  thistill = gettill(mx,my);
  thismoist = getmoist(mx,my) - (mweatherfactor * weathertilllookup[thistill]);
  thisheight = global.height[mx,my];
  }
//thismoist = median(0,thismoist,31);
dir = irandom_range(0,6);
for (dcount=0;dcount<6;dcount+=1) {
  dir = (dir+1) mod 6;
  hexadj(mx,my,dir);
  dx = global.hexx;
  dy = global.hexy;
  if (!coordsinbounds(dx,dy)) {
    continue;
    }
  if (global.water[dx,dy] >= 1) {
    continue; // Doesn't need any more moisture
    }
  thatmoist = getmoist(dx,dy);
  thatheight = global.height[dx,dy];
  heightdiff = thisheight - thatheight;
  //heightdiff = round(global.height[mx,my] - global.height[dx,dy])/3;
  if (thismoist > (thatmoist-heightdiff)) {
    //moistexchange = round((thismoist - thatmoist)/2);
    moistexchange = heightdiff+1;
    if (moistexchange > 0) {
      thismoist -= moistexchange;
      thatmoist += moistexchange;
      setmoist(dx,dy,thatmoist);
      }
    }
  }
setmoist(mx,my,thismoist);

