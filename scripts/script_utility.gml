globalvar screenheight, screenwidth;
screenheight = view_hport[0];
screenwidth = view_wport[0];
screentileheight = floor((screenheight+1)/TILEHEIGHT);
screentilewidth = floor((screenwidth+1)/TILEWIDTH);

// An array of the four cardinal directions
globalvar dirx, diry;
dirx[0]=0;
dirx[1]=1;
dirx[2]=0;
dirx[3]=-1;
diry[0]=-1;
diry[1]=0;
diry[2]=1;
diry[3]=0;
// An array of the cardinal and diagonal directions
globalvar dirxa, dirya;
dirxa[0]=0;
dirxa[1]=1;
dirxa[2]=1;
dirxa[3]=1;
dirxa[4]=0;
dirxa[5]=-1;
dirxa[6]=-1;
dirxa[7]=-1;
dirya[0]=-1;
dirya[1]=-1;
dirya[2]=0;
dirya[3]=1;
dirya[4]=1;
dirya[5]=1;
dirya[6]=0;
dirya[7]=-1;
// An array of just the four diagonal directions
globalvar dirxd, diryd;
dirxd[0]=1;
dirxd[1]=1;
dirxd[2]=-1;
dirxd[3]=-1;
diryd[0]=-1;
diryd[1]=1;
diryd[2]=1;
diryd[3]=-1;

// An array of hexagonal directions.
// An important note --
//   Our hexmap implementation uses different cell-to-cell relationships between
//   odd and even rows.  So, we're defining two different sets of offsets:
//   one for even rows, and one for odd.
globalvar dirxh0, diryh0, dirxh1, diryh1;
dirxh0[0]= 0; // Up-right
dirxh0[1]= 1; // Right
dirxh0[2]= 0; // Down-right
dirxh0[3]= -1; // Down-left
dirxh0[4]= -1; // Left
dirxh0[5]= -1; // Up-left
diryh0[0]= -1;
diryh0[1]= 0;
diryh0[2]= 1;
diryh0[3]= 1;
diryh0[4]= 0;
diryh0[5]= -1;
dirxh1[0]= 1; // Up-right
dirxh1[1]= 1; // Right
dirxh1[2]= 1; // Down-right
dirxh1[3]= 0; // Down-left
dirxh1[4]= -1; // Left
dirxh1[5]= 0; // Up-left
diryh1[0]= -1;
diryh1[1]= 0;
diryh1[2]= 1;
diryh1[3]= 1;
diryh1[4]= 0;
diryh1[5]= -1;
//
globalvar dirxhp, diryhp;
dirxhp[0] = 0.5;
dirxhp[1] = 1.0;
dirxhp[2] = 0.5;
dirxhp[3] = -0.5;
dirxhp[4] = -1.0;
dirxhp[5] = -0.5;
diryhp[0] = -0.75;
diryhp[1] = 0.0;
diryhp[2] = +0.75;
diryhp[3] = +0.75;
diryhp[4] = 0.0;
diryhp[5] = -0.75;
/*
dirxhp[0] = 0.33333333;
dirxhp[1] = 1.0;
dirxhp[2] = 0.33333333;
dirxhp[3] = -0.33333333;
dirxhp[4] = -1.0;
dirxhp[5] = -0.33333333;
diryhp[0] = -0.66666666;
diryhp[1] = 0.0;
diryhp[2] = +0.66666666;
diryhp[3] = +0.66666666;
diryhp[4] = 0.0;
diryhp[5] = -0.66666666;
*/

// An array of offets to 16 cells in a 4x4 grid, in staggered order
// No two consecutive cells are adjacent orthogonally or diagonally.
globalvar staggerx, staggery;
staggerx[0*4+0]=0;
staggerx[0*4+1]=0+4;
staggerx[0*4+2]=0;
staggerx[0*4+3]=0+4;
staggerx[1*4+0]=1;
staggerx[1*4+1]=1+4;
staggerx[1*4+2]=1;
staggerx[1*4+3]=1+4;
staggerx[2*4+0]=2;
staggerx[2*4+1]=2+4;
staggerx[2*4+2]=2;
staggerx[2*4+3]=2+4;
staggerx[3*4+0]=3;
staggerx[3*4+1]=3+4;
staggerx[3*4+2]=3;
staggerx[3*4+3]=3+4;
staggerx[4*4+0]=1;
staggerx[4*4+1]=1+4;
staggerx[4*4+2]=1;
staggerx[4*4+3]=1+4;
staggerx[5*4+0]=2;
staggerx[5*4+1]=2+4;
staggerx[5*4+2]=2;
staggerx[5*4+3]=2+4;
staggerx[6*4+0]=3;
staggerx[6*4+1]=3+4;
staggerx[6*4+2]=3;
staggerx[6*4+3]=3+4;
staggerx[7*4+0]=0;
staggerx[7*4+1]=0+4;
staggerx[7*4+2]=0;
staggerx[7*4+3]=0+4;
staggerx[8*4+0]=2;
staggerx[8*4+1]=2+4;
staggerx[8*4+2]=2;
staggerx[8*4+3]=2+4;
staggerx[9*4+0]=3;
staggerx[9*4+1]=3+4;
staggerx[9*4+2]=3;
staggerx[9*4+3]=3+4;
staggerx[10*4+0]=0;
staggerx[10*4+1]=0+4;
staggerx[10*4+2]=0;
staggerx[10*4+3]=0+4;
staggerx[11*4+0]=1;
staggerx[11*4+1]=1+4;
staggerx[11*4+2]=1;
staggerx[11*4+3]=1+4;
staggerx[12*4+0]=3;
staggerx[12*4+1]=3+4;
staggerx[12*4+2]=3;
staggerx[12*4+3]=3+4;
staggerx[13*4+0]=0;
staggerx[13*4+1]=0+4;
staggerx[13*4+2]=0;
staggerx[13*4+3]=0+4;
staggerx[14*4+0]=1;
staggerx[14*4+1]=1+4;
staggerx[14*4+2]=1;
staggerx[14*4+3]=1+4;
staggerx[15*4+0]=2;
staggerx[15*4+1]=2+4;
staggerx[15*4+2]=2;
staggerx[15*4+3]=2+4;
//
staggery[0*4+0]=0;
staggery[0*4+1]=0;
staggery[0*4+2]=0+4;
staggery[0*4+3]=0+4;
staggery[1*4+0]=2;
staggery[1*4+1]=2;
staggery[1*4+2]=2+4;
staggery[1*4+3]=2+4;
staggery[2*4+0]=0;
staggery[2*4+1]=0;
staggery[2*4+2]=0+4;
staggery[2*4+3]=0+4;
staggery[3*4+0]=2;
staggery[3*4+1]=2;
staggery[3*4+2]=2+4;
staggery[3*4+3]=2+4;
staggery[4*4+0]=1;
staggery[4*4+1]=1;
staggery[4*4+2]=1+4;
staggery[4*4+3]=1+4;
staggery[5*4+0]=3;
staggery[5*4+1]=3;
staggery[5*4+2]=3+4;
staggery[5*4+3]=3+4;
staggery[6*4+0]=1;
staggery[6*4+1]=1;
staggery[6*4+2]=1+4;
staggery[6*4+3]=1+4;
staggery[7*4+0]=3;
staggery[7*4+1]=3;
staggery[7*4+2]=3+4;
staggery[7*4+3]=3+4;
staggery[8*4+0]=2;
staggery[8*4+1]=2;
staggery[8*4+2]=2+4;
staggery[8*4+3]=2+4;
staggery[9*4+0]=0;
staggery[9*4+1]=0;
staggery[9*4+2]=0+4;
staggery[9*4+3]=0+4;
staggery[10*4+0]=2;
staggery[10*4+1]=2;
staggery[10*4+2]=2+4;
staggery[10*4+3]=2+4;
staggery[11*4+0]=0;
staggery[11*4+1]=0;
staggery[11*4+2]=0+4;
staggery[11*4+3]=0+4;
staggery[12*4+0]=3;
staggery[12*4+1]=3;
staggery[12*4+2]=3+4;
staggery[12*4+3]=3+4;
staggery[13*4+0]=1;
staggery[13*4+1]=1;
staggery[13*4+2]=1+4;
staggery[13*4+3]=1+4;
staggery[14*4+0]=3;
staggery[14*4+1]=3;
staggery[14*4+2]=3+4;
staggery[14*4+3]=3+4;
staggery[15*4+0]=1;
staggery[15*4+1]=1;
staggery[15*4+2]=1+4;
staggery[15*4+3]=1+4;

// Month names
global.months[0] = "January"
global.months[1] = "February"
global.months[2] = "March"
global.months[3] = "April"
global.months[4] = "May"
global.months[5] = "June"
global.months[6] = "July"
global.months[7] = "August"
global.months[8] = "September"
global.months[9] = "October"
global.months[10] = "November"
global.months[11] = "December"

// Season names
global.seasons[0] = "Spring"
global.seasons[1] = "Summer"
global.seasons[2] = "Autumn"
global.seasons[3] = "Winter"

// Number names
global.numnames[0] = "zero"
global.numnames[1] = "one"
global.numnames[2] = "two"
global.numnames[3] = "three"
global.numnames[4] = "four"
global.numnames[5] = "five"
global.numnames[6] = "six"
global.numnames[7] = "seven"
global.numnames[8] = "eight"
global.numnames[9] = "nine"
global.numnames[10] = "ten"
global.numnames[11] = "eleven"
global.numnames[12] = "twelve"
global.numnames[13] = "thirteen"
global.numnames[14] = "fourteen"
global.numnames[15] = "fifteen"
global.numnames[16] = "sixteen"
global.numnames[17] = "seventeen"
global.numnames[18] = "eighteen"
global.numnames[19] = "nineteen"
global.numnames[20] = "twenty"

//Monthly growth qualities
global.mgq[0] = "Bad";
global.mgq[1] = "Poor";
global.mgq[2] = "Fair";
global.mgq[3] = "Good";
global.mgq[4] = "Great";
//Quality percentage changes
global.mgpc[0] = 90;
global.mgpc[1] = 60;
global.mgpc[2] = 40;
global.mgpc[3] = 10;
global.mgpc[4] =  1;

//Red Scattered spread locations
//         *
//       *   *
//          
//      *  X  *
//
//       *   *
//         *
global.rsspread_x[0] = 0; global.rsspread_y[0] = -3;
global.rsspread_x[1] = 0; global.rsspread_y[1] = 3;
global.rsspread_x[2] = 3; global.rsspread_y[2] = 0;
global.rsspread_x[3] = -3; global.rsspread_y[3] = 0;
global.rsspread_x[4] = 2; global.rsspread_y[4] = 2;
global.rsspread_x[5] = 2; global.rsspread_y[5] = -2;
global.rsspread_x[6] = -2; global.rsspread_y[6] = 2;
global.rsspread_x[7] = -2; global.rsspread_y[7] = -2;

//Red Hardy spread locations (like a chess knight)
//          
//        * *
//       *   *   
//         X   
//       *   *
//        * *    
//          
global.rhspread_x[0] = 1; global.rhspread_y[0] = -2;
global.rhspread_x[1] = 2; global.rhspread_y[1] = -1;
global.rhspread_x[2] = 2; global.rhspread_y[2] = 1;
global.rhspread_x[3] = 1; global.rhspread_y[3] = 2;
global.rhspread_x[4] = -1; global.rhspread_y[4] = 2;
global.rhspread_x[5] = -2; global.rhspread_y[5] = 1;
global.rhspread_x[6] = -2; global.rhspread_y[6] = -1;
global.rhspread_x[7] = -1; global.rhspread_y[7] = -2;

//Blue Waves spread locations (pretty dense)
//  Also used by Grass
//          
//        ***
//       *****    
//       **X**  
//       *****  
//        ***    
//          
global.bwspread_x[0] = -1; global.bwspread_y[0] = -2;
global.bwspread_x[1] = 0; global.bwspread_y[1] = -2;
global.bwspread_x[2] = 1; global.bwspread_y[2] = -2;
global.bwspread_x[3] = -2; global.bwspread_y[3] = -1;
global.bwspread_x[4] = -1; global.bwspread_y[4] = -1;
global.bwspread_x[5] = 0; global.bwspread_y[5] = -1;
global.bwspread_x[6] = 1; global.bwspread_y[6] = -1;
global.bwspread_x[7] = 2; global.bwspread_y[7] = -1;
global.bwspread_x[8] = -2; global.bwspread_y[8] = 0;
global.bwspread_x[9] = -1; global.bwspread_y[9] = 0;
global.bwspread_x[10] = 1; global.bwspread_y[10] = 0;
global.bwspread_x[11] = 2; global.bwspread_y[11] = 0;
global.bwspread_x[12] = -2; global.bwspread_y[12] = 1;
global.bwspread_x[13] = -1; global.bwspread_y[13] = 1;
global.bwspread_x[14] = 0; global.bwspread_y[14] = 1;
global.bwspread_x[15] = 1; global.bwspread_y[15] = 1;
global.bwspread_x[16] = 2; global.bwspread_y[16] = 1;
global.bwspread_x[17] = -1; global.bwspread_y[17] = 2;
global.bwspread_x[18] = 0; global.bwspread_y[18] = 2;
global.bwspread_x[19] = 1; global.bwspread_y[19] = 2;

//Green Delicate spread locations
//          
//        * *
//       ** **   
//         X   
//       ** **
//        * *    
//          
global.gdspread_x[0] = 1; global.gdspread_y[0] = -2;
global.gdspread_x[1] = 1; global.gdspread_y[1] = -1;
global.gdspread_x[2] = 2; global.gdspread_y[2] = -1;
global.gdspread_x[3] = 1; global.gdspread_y[3] = 1;
global.gdspread_x[4] = 2; global.gdspread_y[4] = 1;
global.gdspread_x[5] = 1; global.gdspread_y[5] = 2;
global.gdspread_x[6] = -1; global.gdspread_y[6] = -2;
global.gdspread_x[7] = -1; global.gdspread_y[7] = -1;
global.gdspread_x[8] = -2; global.gdspread_y[8] = -1;
global.gdspread_x[9] = -1; global.gdspread_y[9] = 1;
global.gdspread_x[10] = -2; global.gdspread_y[10] = 1;
global.gdspread_x[11] = -1; global.gdspread_y[11] = 2;
//Weed spread locations
//         *
//       ** **
//       *   *
//      *  X  *
//       *   *
//       ** **
//         *
global.wspread_x[0] = 0; global.wspread_y[0] = -3;
global.wspread_x[1] = 0; global.wspread_y[1] = 3;
global.wspread_x[2] = 3; global.wspread_y[2] = 0;
global.wspread_x[3] = -3; global.wspread_y[3] = 0;
global.wspread_x[4] = 2; global.wspread_y[4] = 2;
global.wspread_x[5] = 2; global.wspread_y[5] = -2;
global.wspread_x[6] = -2; global.wspread_y[6] = 2;
global.wspread_x[7] = -2; global.wspread_y[7] = -2;
global.wspread_x[8] = 1; global.wspread_y[8] = -2;
global.wspread_x[9] = 2; global.wspread_y[9] = -1;
global.wspread_x[10] = 2; global.wspread_y[10] = 1;
global.wspread_x[11] = 1; global.wspread_y[11] = 2;
global.wspread_x[12] = -1; global.wspread_y[12] = 2;
global.wspread_x[13] = -2; global.wspread_y[13] = 1;
global.wspread_x[14] = -2; global.wspread_y[14] = -1;
global.wspread_x[15] = -1; global.wspread_y[15] = -2;

// Tree extents
global.treeupdir[0] = 1; global.treeupdir[1] = 2;
global.treedowndir[0] = 2; global.treedowndir[1] = 3;

// Directions for trees (oriented up, centered on bottom-left)
global.dirtreeup[0,0] = -1;
global.dirtreeup[0,1] = -1;  // No displacement
global.dirtreeup[1,0] = 5;
global.dirtreeup[1,1] = -1;
global.dirtreeup[2,0] = 4;
global.dirtreeup[2,1] = -1;
global.dirtreeup[3,0] = 0;
global.dirtreeup[3,1] = -1;
global.dirtreeup[4,0] = 1;
global.dirtreeup[4,1] = -1;
global.dirtreeup[5,0] = 2;
global.dirtreeup[5,1] = -1;
global.dirtreeup[6,0] = 3;
global.dirtreeup[6,1] = -1;
global.dirtreeup[7,0] = 5;
global.dirtreeup[7,1] = 0;
global.dirtreeup[8,0] = 5;
global.dirtreeup[8,1] = 5;
global.dirtreeup[9,0] = 5;
global.dirtreeup[9,1] = 4;
global.dirtreeup[10,0] = 4;
global.dirtreeup[10,1] = 4;
global.dirtreeup[11,0] = 3;
global.dirtreeup[11,1] = 4;

// Directions for trees (oriented down, centered on bottom)
global.dirtreedown[0,0] = -1;
global.dirtreedown[0,1] = -1;  // No displacement
global.dirtreedown[1,0] = 5;
global.dirtreedown[1,1] = -1;
global.dirtreedown[2,0] = 0;
global.dirtreedown[2,1] = -1;
global.dirtreedown[3,0] = 1;
global.dirtreedown[3,1] = -1;
global.dirtreedown[4,0] = 2;
global.dirtreedown[4,1] = -1;
global.dirtreedown[5,0] = 3;
global.dirtreedown[5,1] = -1;
global.dirtreedown[6,0] = 4;
global.dirtreedown[6,1] = -1;
global.dirtreedown[7,0] = 5;
global.dirtreedown[7,1] = 4;
global.dirtreedown[8,0] = 5;
global.dirtreedown[8,1] = 5;
global.dirtreedown[9,0] = 5;
global.dirtreedown[9,1] = 0;
global.dirtreedown[10,0] = 0;
global.dirtreedown[10,1] = 0;
global.dirtreedown[11,0] = 0;
global.dirtreedown[11,1] = 1;

// Directions two tiles away
global.dirtwoaway[0,0] = 0;
global.dirtwoaway[0,1] = -1;
global.dirtwoaway[1,0] = 1;
global.dirtwoaway[1,1] = -1;
global.dirtwoaway[2,0] = 2;
global.dirtwoaway[2,1] = -1;
global.dirtwoaway[3,0] = 3;
global.dirtwoaway[3,1] = -1;
global.dirtwoaway[4,0] = 4;
global.dirtwoaway[4,1] = -1;
global.dirtwoaway[5,0] = 5;
global.dirtwoaway[5,1] = -1;
global.dirtwoaway[6,0] = 0;
global.dirtwoaway[6,1] = 0;
global.dirtwoaway[7,0] = 0;
global.dirtwoaway[7,1] = 1;
global.dirtwoaway[8,0] = 1;
global.dirtwoaway[8,1] = 1;
global.dirtwoaway[9,0] = 1;
global.dirtwoaway[9,1] = 2;
global.dirtwoaway[10,0] = 2;
global.dirtwoaway[10,1] = 2;
global.dirtwoaway[11,0] = 2;
global.dirtwoaway[11,1] = 3;
global.dirtwoaway[12,0] = 3;
global.dirtwoaway[12,1] = 3;
global.dirtwoaway[13,0] = 3;
global.dirtwoaway[13,1] = 4;
global.dirtwoaway[14,0] = 4;
global.dirtwoaway[14,1] = 4;
global.dirtwoaway[15,0] = 4;
global.dirtwoaway[15,1] = 5;
global.dirtwoaway[16,0] = 5;
global.dirtwoaway[16,1] = 5;
global.dirtwoaway[17,0] = 5;
global.dirtwoaway[17,1] = 0;

// Tries to search for minerals for different ranges (used in eatmineral())
global.rangetries[0] = 3;
global.rangetries[1] = 6;
global.rangetries[2] = 6;
global.rangetries[3] = 8;

// Wave height data
global.waveheight[0] = 0;
global.waveheight[1] = 0;
global.waveheight[2] = 0;
global.waveheight[3] = 0;
global.waveheight[4] = -1;
global.waveheight[5] = -1;
global.waveheight[6] = -1;
global.waveheight[7] = -1;
global.waveheight[8] = 0;
global.waveheight[9] = 0;
global.waveheight[10] = 0;
global.waveheight[11] = 0;
global.waveheight[12] = 1;
global.waveheight[13] = 1;
global.waveheight[14] = 1;
global.waveheight[15] = 1;

// GameMaker's chr() function can produce different results depending on the current font!
//   This is a bit random for my liking, so here we chart out the ASCII characters for
//   use in map serialization.
//globalvar achr;
//for (a=0;a<(1<<NUMBITSSAVE);a+=1) {
//  achr[a] = chr[a+chroffset];
//  }

// Searching order for tiles, starting from a center location, used in animal AI.
global.searchdir[ 0] = 0;
global.searchdir[ 1] = 2;
global.searchdir[ 2] = 3;
global.searchdir[ 3] = 4;
global.searchdir[ 4] = 5;
global.searchdir[ 5] = 0;
global.searchdir[ 6] = 0;
global.searchdir[ 7] = 1;
global.searchdir[ 8] = 2;
global.searchdir[ 9] = 2;
global.searchdir[10] = 3;
global.searchdir[11] = 3;
global.searchdir[12] = 4;
global.searchdir[13] = 4;
global.searchdir[14] = 5;
global.searchdir[15] = 5;
global.searchdir[16] = 0;
global.searchdir[17] = 0;
global.searchdir[18] = 0;
global.searchdir[19] = 1;
global.searchdir[20] = 1;
global.searchdir[21] = 2;
global.searchdir[22] = 2;
global.searchdir[23] = 2;
global.searchdir[24] = 3;
global.searchdir[25] = 3;
global.searchdir[26] = 3;
global.searchdir[27] = 4;
global.searchdir[28] = 4;
global.searchdir[29] = 4;
global.searchdir[30] = 5;
global.searchdir[31] = 5;
global.searchdir[32] = 5;
global.searchdir[33] = 0;
global.searchdir[34] = 0;
global.searchdir[35] = 0;
global.searchdir[36] = 0;
global.searchdir[37] = 1;
global.searchdir[38] = 1;
global.searchdir[39] = 1;
global.searchdir[40] = 2;
global.searchdir[41] = 2;
global.searchdir[42] = 2;
global.searchdir[43] = 2;
global.searchdir[44] = 3;
global.searchdir[45] = 3;
global.searchdir[46] = 3;
global.searchdir[47] = 3;
global.searchdir[48] = 4;
global.searchdir[49] = 4;
global.searchdir[50] = 4;
global.searchdir[51] = 4;
global.searchdir[52] = 5;
global.searchdir[53] = 5;
global.searchdir[54] = 5;
global.searchdir[55] = 5;
global.searchdir[56] = 0;
global.searchdir[57] = 0;
global.searchdir[58] = 0;
global.searchdir[59] = 0;
global.searchdir[60] = -1;
//
global.searchdist[0] = 1;
global.searchdist[1] = 6;
global.searchdist[2] = 18;
global.searchdist[3] = 36;
global.searchdist[4] = 60;
// 
global.reltodirlookup[0,0] = 7;
global.reltodirlookup[1,0] = 0;
global.reltodirlookup[2,0] = 1;
global.reltodirlookup[0,1] = 6;
global.reltodirlookup[1,1] = -1;
global.reltodirlookup[2,1] = 2;
global.reltodirlookup[0,2] = 5;
global.reltodirlookup[1,2] = 4;
global.reltodirlookup[2,2] = 3;



