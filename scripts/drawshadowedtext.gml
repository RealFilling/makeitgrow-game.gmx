var font, outtext, outcolor, outx, outy, calcoffset;
font = argument0;
outcolor = argument1;
outtext = argument2;
outx = argument3;
outy = argument4;
calcoffset = argument5;

if (calcoffset == true) {
  outx = ax(outx);
  outy = ay(outy);
  }

draw_set_font(font);
draw_set_color(c_black);
draw_text(outx,outy-1,outtext); // Draw shadow
draw_set_color(outcolor);
draw_text(outx,outy,outtext); // Draw text


