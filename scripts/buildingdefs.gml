// Names for buildings, blah blah
globalvar buildingnames;
buildingnames[BLDGO_SMALLBARN] = "Small Barn";
buildingnames[BLDGO_BIGBARN] = "Large Barn";
buildingnames[BLDGO_FEED] = "Feed Trough";
buildingnames[BLDGO_PIPE] = "Irrigation Pipe";
buildingnames[BLDGO_GREENHOUSE] = "Greenhouse";
buildingnames[BLDGO_FENCE] = "Fencepost";
buildingnames[BLDGO_SCARECROW] = "Scarecrow";
buildingnames[BLDGO_PIPEPUMP] = "Water Pump";
buildingnames[BLDGO_COOP] = "Chicken Coop";
buildingnames[BLDGO_FENCEGATECLOSED] = "Fence Gate";
buildingnames[BLDGO_SMALLCOOP] = "Small Coop";
buildingnames[BLDGO_MEDCOOP] = "Medium Coop";
buildingnames[BLDGO_BIGCOOP] = "Large Coop";
buildingnames[BLDGO_WOODFENCE] = "Wooden Fence";
buildingnames[BLDGO_WIREFENCE] = "Wire Fence";
buildingnames[BLDGO_FENCEGATEOPEN] = "Fence Gate (open)";

// Sprites for buildings
globalvar buildingsprites;
buildingsprites[BLDGO_SMALLBARN] = spr_smallbarn;
buildingsprites[BLDGO_BIGBARN] = spr_bigbarn;
buildingsprites[BLDGO_FEED] = spr_feedtrough;
buildingsprites[BLDGO_PIPE] = spr_scarecrow; // Shouldn't appear
buildingsprites[BLDGO_GREENHOUSE] = spr_greenhouse2;
buildingsprites[BLDGO_FENCE] = spr_fence_wirenet;
buildingsprites[BLDGO_SCARECROW] = spr_scarecrow;
buildingsprites[BLDGO_PIPEPUMP] = spr_waterpump;
buildingsprites[BLDGO_COOP] = spr_smallcoop;
buildingsprites[BLDGO_FENCEGATECLOSED] = spr_fence_wirenet;
buildingsprites[BLDGO_SMALLCOOP] = spr_coop_s;
buildingsprites[BLDGO_MEDCOOP] = spr_coop_m;
buildingsprites[BLDGO_BIGCOOP] = spr_coop_l;
buildingsprites[BLDGO_WOODFENCE] = spr_woodfence;
buildingsprites[BLDGO_WIREFENCE] = spr_fence_wire;
buildingsprites[BLDGO_FENCEGATEOPEN] = spr_nothing;

// Descriptions
globalvar buildingdescs;
buildingdescs[BLDGO_SMALLBARN] = "Can house one large animal.";
buildingdescs[BLDGO_BIGBARN] = "Can house three large animals.";
buildingdescs[BLDGO_FEED] = "Used to feed animals.";
buildingdescs[BLDGO_PIPE] = "Connect to pumps to irrigate land.";
buildingdescs[BLDGO_GREENHOUSE] = "Provides a small region where plants grow easily.";
buildingdescs[BLDGO_FENCE] = "Useful for keeping animals where you want them.";
buildingdescs[BLDGO_SCARECROW] = "May scare away bird pests.";
buildingdescs[BLDGO_PIPEPUMP] = "Build this next to a lake.";
buildingdescs[BLDGO_COOP] = "Can house up to four chickens.";
buildingdescs[BLDGO_FENCEGATECLOSED] = "Can be opened or closed to limit animal movement.";
buildingdescs[BLDGO_SMALLCOOP] = "Houses a couple of chickens.";
buildingdescs[BLDGO_MEDCOOP] = "Houses several chickens.";
buildingdescs[BLDGO_BIGCOOP] = "Houses many chickens.";
buildingdescs[BLDGO_WOODFENCE] = "Wooden fences.";
buildingdescs[BLDGO_WIREFENCE] = "Wire fences.";
buildingdescs[BLDGO_FENCEGATEOPEN] = "An opened gate.  (Shouldn't be here....)";

// Names for buildings, blah blah
globalvar buildingsizes;
buildingsizes[BLDGO_SMALLBARN] = BLDGSIZE_MEDIUM;
buildingsizes[BLDGO_BIGBARN] = BLDGSIZE_LARGE;
buildingsizes[BLDGO_FEED] = BLDGSIZE_SMALL;
buildingsizes[BLDGO_PIPE] = BLDGSIZE_SMALL;
buildingsizes[BLDGO_GREENHOUSE] = BLDGSIZE_GREENHOUSE;
buildingsizes[BLDGO_FENCE] = BLDGSIZE_SMALL;
buildingsizes[BLDGO_SCARECROW] = BLDGSIZE_SMALL;
buildingsizes[BLDGO_PIPEPUMP] = BLDGSIZE_SMALL;
buildingsizes[BLDGO_COOP] = BLDGSIZE_SMALL;
buildingsizes[BLDGO_FENCEGATECLOSED] = BLDGSIZE_SMALL;
buildingsizes[BLDGO_SMALLCOOP] = BLDGSIZE_SMALLCOOP;
buildingsizes[BLDGO_MEDCOOP] = BLDGSIZE_MEDCOOP;
buildingsizes[BLDGO_BIGCOOP] = BLDGSIZE_BIGCOOP;
buildingsizes[BLDGO_WOODFENCE] = BLDGSIZE_SMALL;
buildingsizes[BLDGO_WIREFENCE] = BLDGSIZE_SMALL;
buildingsizes[BLDGO_FENCEGATEOPEN] = BLDGSIZE_SMALL;

// Sizes
globalvar buildingsizedirsm;
buildingsizedirsm[0] = 4; // Medium
buildingsizedirsm[1] = 0;
buildingsizedirsm[2] = 1;
buildingsizedirsm[3] = -1;
globalvar buildingsizedirsl;
buildingsizedirsl[0] = 4; // Large
buildingsizedirsl[1] = 4;
buildingsizedirsl[2] = 5;
buildingsizedirsl[3] = 1;
buildingsizedirsl[4] = 1;
buildingsizedirsl[5] = 0;
buildingsizedirsl[6] = 4;
buildingsizedirsl[7] = 4;
buildingsizedirsl[8] = -1;
globalvar buildingsizedirsexl;
buildingsizedirsexl[0] = 4; // Extra Large
buildingsizedirsexl[1] = 4; // NOT COMPLETELY CORRECT YET!
buildingsizedirsexl[2] = 4; // But it doesn't matter so long as we don't have any standard v.big buildings yet.
buildingsizedirsexl[3] = 4;
buildingsizedirsexl[4] = 4;
buildingsizedirsexl[5] = 4;
buildingsizedirsexl[6] = 4;
buildingsizedirsexl[7] = 5;
buildingsizedirsexl[8] = 1;
buildingsizedirsexl[9] = 1;
buildingsizedirsexl[10] = 1;
buildingsizedirsexl[11] = 1;
buildingsizedirsexl[12] = 1;
buildingsizedirsexl[13] = 1;
buildingsizedirsexl[14] = 0;
buildingsizedirsexl[15] = 4;
buildingsizedirsexl[16] = 4;
buildingsizedirsexl[17] = 4;
buildingsizedirsexl[18] = 4;
buildingsizedirsexl[19] = 4;
buildingsizedirsexl[20] = 4;
buildingsizedirsexl[21] = 4;
buildingsizedirsexl[22] = 5;
buildingsizedirsexl[23] = 1;
buildingsizedirsexl[24] = 1;
buildingsizedirsexl[25] = 1;
buildingsizedirsexl[26] = 1;
buildingsizedirsexl[27] = 1;
buildingsizedirsexl[28] = 1;
buildingsizedirsexl[29] = 1;
buildingsizedirsexl[30] = 0;
buildingsizedirsexl[31] = 4;
buildingsizedirsexl[32] = 4;
buildingsizedirsexl[33] = 4;
buildingsizedirsexl[34] = 4;
buildingsizedirsexl[35] = 4;
buildingsizedirsexl[36] = 4;
buildingsizedirsexl[37] = 4;
buildingsizedirsexl[38] = 1;
//
globalvar buildingsizedirs_smallcoop;
buildingsizedirs_smallcoop[0] = 4; // Small Coop; only two tiles in size.
buildingsizedirs_smallcoop[1] = -1; // Small Coop; only two tiles in size.
//
globalvar buildingsizedirs_medcoop;
buildingsizedirs_medcoop[0] = 4; // Medium Coop size
buildingsizedirs_medcoop[1] = 4;
buildingsizedirs_medcoop[2] = 5;
buildingsizedirs_medcoop[3] = 1;
buildingsizedirs_medcoop[4] = 1;
buildingsizedirs_medcoop[5] = 1;
buildingsizedirs_medcoop[6] = 5;
buildingsizedirs_medcoop[7] = 4;
buildingsizedirs_medcoop[8] = 4;
buildingsizedirs_medcoop[9] = -1;
//
globalvar buildingsizedirs_bigcoop;
buildingsizedirs_bigcoop[0] = 4; // Large Coop size
buildingsizedirs_bigcoop[1] = 4;
buildingsizedirs_bigcoop[2] = 5;
buildingsizedirs_bigcoop[3] = 1;
buildingsizedirs_bigcoop[4] = 1;
buildingsizedirs_bigcoop[5] = 1;
buildingsizedirs_bigcoop[6] = 1;
buildingsizedirs_bigcoop[7] = 0;
buildingsizedirs_bigcoop[8] = 4;
buildingsizedirs_bigcoop[9] = 4;
buildingsizedirs_bigcoop[10] = 4;
buildingsizedirs_bigcoop[11] = 0;
buildingsizedirs_bigcoop[12] = 1;
buildingsizedirs_bigcoop[13] = 1;
buildingsizedirs_bigcoop[14] = 1;
buildingsizedirs_bigcoop[15] = 2;
buildingsizedirs_bigcoop[16] = -1;
//
globalvar buildingsizedirs_ghframe;
buildingsizedirs_ghframe[0] = 4; // Outside of a greenhouse
buildingsizedirs_ghframe[1] = 4;
buildingsizedirs_ghframe[2] = 5;
buildingsizedirs_ghframe[3] = 4;
buildingsizedirs_ghframe[4] = 5;
buildingsizedirs_ghframe[5] = 0;
buildingsizedirs_ghframe[6] = 1;
buildingsizedirs_ghframe[7] = 0;
buildingsizedirs_ghframe[8] = 1;
buildingsizedirs_ghframe[9] = 0;
buildingsizedirs_ghframe[10] = 1;
buildingsizedirs_ghframe[11] = 0;
buildingsizedirs_ghframe[12] = 1;
buildingsizedirs_ghframe[13] = 2;
buildingsizedirs_ghframe[14] = 1;
buildingsizedirs_ghframe[15] = 2;
buildingsizedirs_ghframe[16] = 1;
buildingsizedirs_ghframe[17] = 3;
buildingsizedirs_ghframe[18] = 4;
buildingsizedirs_ghframe[19] = 3;
buildingsizedirs_ghframe[20] = 4;
buildingsizedirs_ghframe[21] = 3;
buildingsizedirs_ghframe[22] = 4;
buildingsizedirs_ghframe[23] = -1;
//
globalvar buildingsizedirs_ghinside;
buildingsizedirs_ghinside[0] = 5; // Inside of a greenhouse
buildingsizedirs_ghinside[1] = 0;
buildingsizedirs_ghinside[2] = 1;
buildingsizedirs_ghinside[3] = 0;
buildingsizedirs_ghinside[4] = 1;
buildingsizedirs_ghinside[5] = 0;
buildingsizedirs_ghinside[6] = 4;
buildingsizedirs_ghinside[7] = 5;
buildingsizedirs_ghinside[8] = 3;
buildingsizedirs_ghinside[9] = 3;
buildingsizedirs_ghinside[10] = 5;
buildingsizedirs_ghinside[11] = 3;
buildingsizedirs_ghinside[12] = 4;
buildingsizedirs_ghinside[13] = 2;
buildingsizedirs_ghinside[14] = 3;
buildingsizedirs_ghinside[15] = 5;
buildingsizedirs_ghinside[16] = 4;
buildingsizedirs_ghinside[17] = -1;
//





