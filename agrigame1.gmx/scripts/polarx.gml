var a;
a = argument0;
if (a<128) {
  return sin(pi*(a/128)/2);
  }
else if (a<256) {
  return -sin(pi+(pi*(a/128)/2));
  }
else if (a<384) {
  return sin((pi*2)+(pi*(a/128)/2));
  }
else if (a<512) {
  return -sin((pi*3)+(pi*(a/128)/2));
  }
else {
  show_message("ERROR: improper parameter passed to polarx: "+string(a));
  }
