var number,workstring,formattedstring;
number = argument0;
workstring = string(number);
if (string_length(workstring)<=3) {
  return workstring;
  }
thresholdlength = 3;
while (string_length(workstring)>thresholdlength) {
  workstring = string_insert(",",workstring,string_length(workstring)-(thresholdlength-1));
  thresholdlength += 4;
  }
return workstring;

