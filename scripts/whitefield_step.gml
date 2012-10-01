timer += 1;

if (timer < TITLEFRAMELENGTH) {
  image_alpha = (TITLEFRAMELENGTH-timer)/TITLEFRAMELENGTH;
  }
else {
  instance_destroy();
  }
