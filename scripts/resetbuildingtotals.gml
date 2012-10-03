// buildingtotals & buildingcounts
// Instead of adding buildings to the building totals as the player adds them,
//   we take the slightly more roundabout approach of counting up the buildings
//   on the field each pass through the field.  This way, miscellaneous things
//   could destroy buildings, and eventually those changes will become
//   recognized by the game without having to "officially" acknowledge the
//   destruction of a building.
// buildingcounts is the number of buildings found so far on this pass through
//   the field; buildingtotals is the number of buildings found on the last
//   complete pass.
for (a=0;a<NUMBUILDINGS;a+=1) {
  global.buildingcounts[a] = 0;
  global.buildingtotals[a] = 0;
  }
