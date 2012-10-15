var hx, hy, pos, charspernum, instring;
var astrplants,astrsoil,astrharvest,astrwater,astrheight,astrbugs,astrext,checksum;
instring = argument0;

if (global.savedebug == true) {
  show_message("Deserializer received string....");
  show_message("Serialized string length:"+string(string_length(instring)));
  show_message("First ten characters of instring:"+string_copy(instring,1,10));
  //show_message("instring checksum:" + string(stringchecksum(instring)));
  }

instring = biteoffsubstring(instring,1);
global.hstime = global.ticksperday * string_digits(global.bittenchars);
    
initchecksum();

//instring = gd_load(true);
//instring = readsavefile();
//show_message("field_deserialize: length of instring is "+string(string_length(instring)));

astrplants = string_copy(instring, 1, BOARDWIDTH*BOARDHEIGHT*global.charspernum);
instring = string_delete(instring, 1, (BOARDWIDTH*BOARDHEIGHT*global.charspernum)+1);
astrsoil = string_copy(instring, 1, BOARDWIDTH*BOARDHEIGHT*global.charspernum);
instring = string_delete(instring, 1, (BOARDWIDTH*BOARDHEIGHT*global.charspernum)+1);
astrharvest = string_copy(instring, 1, BOARDWIDTH*BOARDHEIGHT*global.charspernum);
instring = string_delete(instring, 1, (BOARDWIDTH*BOARDHEIGHT*global.charspernum)+1);
astrwater = string_copy(instring, 1, BOARDWIDTH*BOARDHEIGHT*global.charspernum);
instring = string_delete(instring, 1, (BOARDWIDTH*BOARDHEIGHT*global.charspernum)+1);
astrheight = string_copy(instring, 1, BOARDWIDTH*BOARDHEIGHT*global.charspernum);
instring = string_delete(instring, 1, (BOARDWIDTH*BOARDHEIGHT*global.charspernum)+1);
astrbugs = string_copy(instring, 1, BOARDWIDTH*BOARDHEIGHT*global.charspernum);
instring = string_delete(instring, 1, (BOARDWIDTH*BOARDHEIGHT*global.charspernum)+1);
astrsoilext = string_copy(instring, 1, BOARDWIDTH*BOARDHEIGHT*global.charspernum);
instring = string_delete(instring, 1, (BOARDWIDTH*BOARDHEIGHT*global.charspernum)+1);
astrbuildext = string_copy(instring, 1, BOARDWIDTH*BOARDHEIGHT*global.charspernum);
instring = string_delete(instring, 1, (BOARDWIDTH*BOARDHEIGHT*global.charspernum)+1);

if (global.savedebug == true) {
  show_message("Load progress: separated out field strings.");
  }

global.sbitmask = (1<<NUMBITSSAVE) - 1;
global.charspernum = (MAXBITSIZE div NUMBITSSAVE)+1;
charspernum = global.charspernum;

//
pos = 0
for (hy=0;hy<BOARDHEIGHT;hy+=1) {
  for (hx=0;hx<BOARDWIDTH;hx+=1) {
    global.plants[hx,hy] = stringtonum(string_copy(astrplants,(pos*charspernum)+1,charspernum));
    global.soil[hx,hy] = stringtonum(string_copy(astrsoil,(pos*charspernum)+1,charspernum));
    global.harvest[hx,hy] = stringtonum(string_copy(astrharvest,(pos*charspernum)+1,charspernum));
    global.water[hx,hy] = stringtonum(string_copy(astrwater,(pos*charspernum)+1,charspernum));
    global.height[hx,hy] = stringtonum(string_copy(astrheight,(pos*charspernum)+1,charspernum));
    global.bugs[hx,hy] = stringtonum(string_copy(astrbugs,(pos*charspernum)+1,charspernum));
    global.soilext[hx,hy] = stringtonum(string_copy(astrsoilext,(pos*charspernum)+1,charspernum));
    global.buildext[hx,hy] = stringtonum(string_copy(astrbuildext,(pos*charspernum)+1,charspernum));
    pos += 1;
    }
  }
  
if (global.savedebug == true) {
  show_message("Load progress: done with field.");
  }
  
//show_message("field_deserialize: length of instring after fields is "+string(string_length(instring)));
instring = deserializemisc(instring);

checksum = reportchecksum();

if (global.savedebug == true) {
  show_message("Load progress: done with field.");
  show_message("Load checksum is "+string(checksum));
  }
  
// Initialize building totals
resetbuildingtotals();

return instring;
