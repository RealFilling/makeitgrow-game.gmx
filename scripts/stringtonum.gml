var buildnum, workstr, a, thischr;
workstr = argument0;
buildnum = 0;

for (a=global.charspernum;a>0;a-=1) {
//for (a=0;a<global.charspernum;a+=1) {
  buildnum = buildnum << NUMBITSSAVE;
  thischr = string_char_at(workstr,a);
  buildnum |= (ord(thischr)-CHAROFFSET);
  if (buildnum < 0) {
    show_error("BAD buildnum in stringtonum():"+
               " workstr:"+workstr+
               " a:"+string(a)+
               " thischr:"+thischr+" "+string(ord(thischr))+
               " buildnum:"+string(buildnum)
               ,false);
    }
  }
//addtochecksum(buildnum);
return buildnum;
