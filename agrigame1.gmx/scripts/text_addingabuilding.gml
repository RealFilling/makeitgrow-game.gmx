// To add a new building:

// 1. Add new BLDG_ and BLDGO_ constants.  BLDG_ is the "species" of the building
//      and should follow the highest constant currently defined, BLDGO_ is the
//      ordinal number of the building.  While you're here, increase BLDG_END by the
//      number of buildings you're adding.
// 2. Add new elements to each of the arrays in
//      Scripts/multitile/buildings/buildingdefs
//      This is where basic things like name and size are defined.
// 3. Put behavior in Scripts/multitile/buildings/buildingturn
// 4. If the building has special behavior that requires storage, try to put the
//      data in global.buildingext, create scripts in Scripts/bitmath/buildext using
//      the scripts already there as a model.  Currently, the first 10 bits are used
//      for greenhouse and pipe flow support.
// 5. New entries have to be made in Scripts/farmer/toolactions/seedselector
// 6. Don't forget to add new icons in Sprites/UI/spr_buildingicons, and new
//      building graphics for constructing, built and damaged states in 
//      Sprites/Tilemap/spr_buildings
// I've probably forgotten something, but this should get you started.



