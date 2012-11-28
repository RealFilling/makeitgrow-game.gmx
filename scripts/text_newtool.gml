// To add a new tool:
// * Add the new icon to sprite spr_itemicons_2
// * Under Resources|Define Constants:
//     add a new identifier to the group of TOOL_ constants, in the proper order
//     add one to NUMTOOLS
//     increase TOOL_NOTOOL to make room for it (should be at end of sequence)
// * Add a name for the tool and other properties in global.toolname (at end of 
//     Scripts/farmer/toolactions/seedselector())
//     the new tool should come after item 0; renumber higher-numbered tools
// * In Scripts/farmer/farmer_executeaction, add a new case to the
//     switch(action) block.
// * To test it, you should add it to starterinventory().  It should also be
//     added if the player should begin with it, of course.
