// Timing for flashing and pulsing objects and UI elements
// Timing assumes 30 fps.
timer += 1;
// Blinking & flashing
if ((timer mod 7) < 4) {
  blinkfourthon = true;
  }
else {
  blinkfourthon = false;
  }
//
if ((timer mod 15) < 8) {
  blinkhalfon = true;
  }
else {
  blinkhalfon = false;
  }
//
if ((timer mod 30) < 15) {
  blinkoneon = true;
  }
else {
  blinkoneon = false;
  }
//
if ((timer mod 60) < 30) {
  blinktwoon = true;
  }
else {
  blinktwoon = false;
  }
// Pulsing
pulset = timer mod 15;
if (pulset < 8) {
  pulsefourth = (8-pulset)/8;
  }
else {
  pulsefourth = (pulset-7)/8;
  }
//
pulset = timer mod 30;
if (pulset < 15) {
  pulsehalf = (15-pulset)/15;
  }
else {
  pulsehalf = (pulset-15)/15;
  }
//
pulset = timer mod 60;
if (pulset < 30) {
  pulseone = (30-pulset)/30;
  }
else {
  pulseone = (pulset-30)/30;
  }
//
pulset = timer mod 120;
if (pulset < 60) {
  pulsetwo = (60-pulset)/60;
  }
else {
  pulsetwo = (pulset-60)/60;
  }
//
pulset = timer mod 240;
if (pulset < 120) {
  pulsefour = (120-pulset)/120;
  }
else {
  pulsefour = (pulset-120)/120;
  }
