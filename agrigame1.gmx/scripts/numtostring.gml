var buildstring, worknum, a;
worknum = argument0;
// Sanity check
if (worknum < 0) {
  show_error("numtostring() ERROR: negative argument "+string(worknum)+"!",true);
  }

addtochecksum(worknum);
buildstring = "";
for (a=0;a<global.charspernum;a+=1) {
  buildstring += chr((worknum & global.sbitmask)+CHAROFFSET);
  worknum = (worknum div (global.sbitmask+1));
  }
return buildstring;
