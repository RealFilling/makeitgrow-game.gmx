var a, count, thisx, thisy, distance, animaltype, thisanimal, avgxtotal, avgytotal, searchtype;
thisx = argument0;
thisy = argument1;
animaltype = argument2;
avgxtotal = 0;
avgytotal = 0;
count = 0;

searchtype = animaltosearchtype(animaltype, true);
return searchfrom(thisx, thisy, searchtype, MAXANIMALAVGRANGE);

