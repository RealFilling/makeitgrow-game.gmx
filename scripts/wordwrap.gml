var intext, maxlinelength, outtext, position, nextpiece;
intext = argument0;
maxlinelength = argument1; // in pixels

// Note: string_width uses the current font and font size to do its measuring
//         of character widths.

outtext = "";
worktext = "";

while (string_length(intext) > 0) {
  position = string_pos(" ", intext);
  if (position == 0) {// case of no remaining spaces
    if (outtext == "") {
      return worktext + intext; // Nothing to do
      }
    else {
      if (string_width(worktext + intext) < maxlinelength) {
        outtext = outtext + "#" + worktext + intext;
        return outtext;
        }
      else {
        outtext = outtext + "#" + worktext + "#" + intext;
        return outtext;
        }
      }
    }
  nextpiece = string_copy(intext, 1, position);
  intext = string_copy(intext, position+1, string_length(intext)-position);
  if (string_width(worktext + nextpiece) < maxlinelength) {
    worktext += nextpiece
    }
  else {
    outtext = outtext + "#" + worktext;
    worktext = nextpiece;
    }
  }
return outtext + "#" + worktext;

