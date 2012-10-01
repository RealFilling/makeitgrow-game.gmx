var soiltype;
soiltype = argument0;
r = getred(soiltype);
g = getgreen(soiltype);
b = getblue(soiltype);
t = max(0,195-(r+g+b));
//t = 765-(r+g+b)
return (t div 33)+1
//return t mod 7

