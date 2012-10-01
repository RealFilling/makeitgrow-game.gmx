var a;
a = argument0;
if (a<128) {
  return -cos(pi*(a/128)/2);
  }
else if (a<256) {
  return cos(pi+(pi*(a/128)/2));
  }
else if (a<384) {
  return -cos((pi*2)+(pi*(a/128)/2));
  }
else if (a<512) {
  return cos((pi*3)+(pi*(a/128)/2));
  }
else {
  show_message("ERROR: improper parameter passed to polary: "+string(a));
  }
