counter -= 1;
image_alpha = counter/15;
image_xscale = 4.0-(counter/5);
image_yscale = 4.0-(counter/5);
if (counter <= 0) {
  instance_destroy();
  }
