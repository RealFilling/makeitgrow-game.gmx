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
buildingnames[BLDG_WOODFENCE] = "Wooden Fence";
buildingnames[BLDG_WIREFENCE] = "Wire Fence";
buildingnames[BLDG_FENCEGATEOPEN] = "Fence Gate (open)";

// Sprites for buildings
globalvar buildingsprites;
buildingsprites[BLDGO_SMALLBARN] = spr_smallbarn;
buildingsprites[BLDGO_BIGBARN] = spr_bigbarn;
buildingsprites[BLDGO_FEED] = spr_feedtrough;
buildingsprites[BLDGO_PIPE] = spr_scarecrow; // Shouldn't appear
buildingsprites[BLDGO_GREENHOUSE] = spr_scarecrow; // Shouldn't appear
buildingsprites[BLDGO_FENCE] = spr_fence_wirenet;
buildingsprites[BLDGO_SCARECROW] = spr_scarecrow;
buildingsprites[BLDGO_PIPEPUMP] = spr_waterpump;
buildingsprites[BLDGO_COOP] = spr_smallcoop;
buildingsprites[BLDGO_FENCEGATECLOSED] = spr_fence_wirenet;
buildingsprites[BLDGO_SMALLCOOP] = spr_coop_s;
buildingsprites[BLDGO_MEDCOOP] = spr_coop_m;
buildingsprites[BLDGO_BIGCOOP] = spr_coop_l;
buildingsprites[BLDG_WOODFENCE] = spr_woodfence;
buildingsprites[BLDG_WIREFENCE] = spr_fence_wire;
buildingsprites[BLDG_FENCEGATEOPEN] = spr_nothing;

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
buildingdescs[BLDG_WOODFENCE] = "Wooden fences.";
buildingdescs[BLDG_WIREFENCE] = "Wire fences.";
buildingdescs[BLDG_FENCEGATEOPEN] = "An opened gate.  (Shouldn't be here....)";

// Names for buildings, blah blah
globalvar buildingsizes;
buildingsizes[BLDGO_SMALLBARN] = BLDGSIZE_MEDIUM;
buildingsizes[BLDGO_BIGBARN] = BLDGSIZE_LARGE;
buildingsizes[BLDGO_FEED] = BLDGSIZE_SMALL;
buildingsizes[BLDGO_PIPE] = BLDGSIZE_SMALL;
buildingsizes[BLDGO_GREENHOUSE] = BLDGSIZE_GREENHOUSE;//Special
buildingsizes[BLDGO_FENCE] = BLDGSIZE_SMALL;
buildingsizes[BLDGO_SCARECROW] = BLDGSIZE_SMALL;
buildingsizes[BLDGO_PIPEPUMP] = BLDGSIZE_SMALL;
buildingsizes[BLDGO_COOP] = BLDGSIZE_SMALL;
buildingsizes[BLDGO_FENCEGATECLOSED] = BLDGSIZE_SMALL;
buildingsizes[BLDGO_SMALLCOOP] = BLDGSIZE_SMALLCOOP;
buildingsizes[BLDGO_MEDCOOP] = BLDGSIZE_MEDCOOP;
buildingsizes[BLDGO_BIGCOOP] = BLDGSIZE_BIGCOOP;
buildingsizes[BLDG_WOODFENCE] = BLDGSIZE_SMALL;
buildingsizes[BLDG_WIREFENCE] = BLDGSIZE_SMALL;
buildingsizes[BLDG_FENCEGATEOPEN] = BLDGSIZE_SMALL;

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




