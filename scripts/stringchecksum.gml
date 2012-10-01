var instring, total, character;
instring = argument0;
total = 0;

for (a=1; a<= string_length(instring); a+=1) {
  character = string_copy(instring,a,1);
  total += ord(character);    
  }

return total;
