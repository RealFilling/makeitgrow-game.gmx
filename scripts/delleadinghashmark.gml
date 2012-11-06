var instring;
instring = argument0;
if (string_char_at(instring,1) == "#") {
  return string_copy(instring,2,string_length(instring)-1);
  }
else {
  return instring;
  }

