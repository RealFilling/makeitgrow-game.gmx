//Step 1: Add new plant images to bkgd_planttiles.  Numbering
//          should follow the plants already there.  Plant tiles there are
//          arranged in groups of eight; make sure your first frame is a
//          multiple of 8.  Six of the eight frames are currently important:
//          in order, they're Sprout, Young, Adult, Mature, Dead and Sick.
//Step 2: Add named constants to the list beginning with P_
//          (under Resources|Define Constants).  Continue numbering
//          from highest P_ constant.  While you're here, increase NUMPLANTTYPES
//          by the number of new plants added.
//Step 3: There's a lot of other things that need to be changed now to make
//          room for plants, all in the Resources|Define Constants:
//            * Increase NUMPLANTTYPES
//            * Increase the C_* constants for compost types.
//            * Increase the P_COMPOST_START and P_COMPOST_END values.
//            * Increase P_TREE_START and the T_* constants.
//            * Increse BLDG_START and BLDG_END, and the BLDG_* constants.
//            Note: don't touch BLDGO_*, or COMPOST_*, those start from
//                    zero and don't need to be renumbered to make room
//                    for new plants, only new types of their own
//                    class.
//Step 4: Add the necessary entries in plantdefs.  Pay close attention
//          especially to the seasonal growth levels.  There are a lot of these
//          values to add, but it can't be helped.
//Step 5: If there are special cases for plant mineral consumption that are
//          not handled by setting MS_REPLENISH or MS_ALL for plantmineral,
//          this should be implemented in the early part of cellturn.
//Step 6: Implement plant growth behavior in the big switch statement in
//          spreadplant.  Ideally, you'll write your own script for this, and
//          call that.  Use the other scripts here as a guide for formatting.
//Step 7: Used in spreadplant is the script isempty_growth, which is used to determine
//          whether a plant is blocked from growing by a pre-existing plant.
//          Under current rules, grass and green delicate are considered
//          empty for purposes of other plant growth, and red hardy and weeds
//          always consider other plants as empty.  If you don't change this,
//          default rules are used: plants are generally blocked from growing
//          by the presence of any other plant, with the above exceptions.
//Step 8: In seedselector, add the names of your new plant after the previous
//          highest plant type, adding the requisite new entries in the 
//          global.itemname, global.itemtype and global.itemicon arrays.
//          Remember to renumber the tree and mulch types after it to avoid your
//          plant being overwritten by the mulch item selection data.
//          The ordering here is intended to match that of the plant species.
//Step 9: To test, you'll want to add code that gives the new seed to a debugging
//          player, in that part of inventory/starterinventory().  If the player
//          is intended to start with it, then add it to that part of the function.
//Step 10:If this plant is a tree, make sure in addition to all this you reflect
//          this in istree().


