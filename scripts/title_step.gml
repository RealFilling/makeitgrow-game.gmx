timer += 1;
x = view_xview[0] + (view_wview[0]/2);
y = view_yview[0] + (view_hview[0]/2);
if (timer < TITLEFRAMELENGTH) {
  image_alpha = 1.0;
  }
else if (timer < (TITLEFRAMELENGTH*2)) {
  image_alpha = ( (TITLEFRAMELENGTH-(timer-TITLEFRAMELENGTH)) /TITLEFRAMELENGTH);
  }
else {
  instance_destroy();
  }

