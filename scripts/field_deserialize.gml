var hx, hy, pos, charspernum, instring, hsvar;
var astrplants,astrsoil,astrharvest,astrwater,astrheight,astrbugs,astrext,checksum;
instring = argument0;

gd_log("Deserializer received string....");
gd_log("Serialized string length:"+string(string_length(instring)));
gd_log("First ten characters of instring:"+string_copy(instring,1,10));
//show_message("instring checksum:" + string(stringchecksum(instring)));

instring = biteoffsubstring(instring,4);
hsvar = real(string_digits(global.bittenchars));
global.hstime = global.ticksperhour * hsvar;
    
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
  gd_log("Load progress: separated out field strings.");
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
  gd_log("Load progress: done with field.");
  }
  
//show_message("field_deserialize: length of instring after fields is "+string(string_length(instring)));
instring = deserializemisc(instring);

checksum = reportchecksum();

gd_log("Load is done");
gd_log("Load checksum is "+string(checksum));
  
// Initialize building totals
resetbuildingtotals();

return instring;
