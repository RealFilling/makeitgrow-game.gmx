/*
After you've gotten the proper sprites created and entered into animaldefs, you
  must still make sure your animal walk cycle is correct or the animal will
  act funny when it moves around.
  
The walk cycles for all six directions are kept in the same sprite; the game
  takes care of which one is displayed properly.  The game detects how many
  frames are in the cycle and uses that to figure our where the cycles begin
  and end.  The result is, it doesn't matter how many frames there are, so
  long as there are six sequences of the same length, in order, counting
  hex sides, of going up-and-right for the first direction, then clockwise
  from there.  So, the second sequence is walking to the right, the third
  is down-and-right, the fourth is down-and-left, the fifth is left,
  and the sixth and last is up-and-left.
  
But what if the art supplied isn't in that format?  Is there an easy way
  to get it in the proper setup?  It turns out that there is, but it
  requires creative use of some of Game Maker's tools.
  
Step 1: First, you should get each walk cycle out and into its own sprite.
          Make one duplicate (right-click and select Duplicate) of the
          sprite for each walk cycle in it.  Then edit each and delete
          all the frames that are not part of the cycle you want to
          preserve.
        So, if you have a cycle that only has going down-and-left and
          up-and-right, make two copies.  In one, delete all the
          down-and-left frames and rename that sprite direction0.  In the
          other, remove all the up-and-right frames and rename that one
          direction3.
        During this step, take note of what the width and height of the 
          sprite are.  Write them down somewhere, or open up Notepad
          and put them there.  You'll need this information in Step 4.

Step 2: Now's your chance to create any additional cycles you'll need,
          by mirroring.  So to make direction5 out of direction0,
          make a duplicate of direction0, open that copy, then click
          under Transform in the Sprite Editor (the view with all the
          frames visible).  Any operations you perform from this view
          will apply to all the sprites in the sequence.  So to make
          the sprites for direction5, up-and-left, you should go
          under Transform>Mirror/Flip and check Mirror Horizontally.
          Be sure to rename the flipped copy as direction5.
        We do the same thing with direction3 to make direction2.

Step 3: Now you should have all the walk cycles you need.  In this example,
          we don't have walk cycles for directions 1 or 4, so we'll have to
          make due.
        Now, the task is to export each sprite out into a PNG strip, which
          you can do under File in the Sprite Editor.  The default name for
          the PNG file will follow the name of the sprite resource it came
          from, which is why you want to make sure to name them properly
          first.  GameMaker will also helpfully append the number of frames
          in the sprite.

Step 4: Now create a new sprite to contain all the sequences together.  Open
          that sprite and enter the Sprite Editor.  It should have no frames.
        Go under file and select Add From Strip; open up the PNG for
          direction0.
        You'll find a very helpful window that will show you the contents of
          the file.  An array of text fields on the left side will let you
          specify exactly how GameMaker will interpret the image and turn
          it into sprite frames.
        Fill in these values:
          Number of images: the number of frames in the strip.
          Images per row: again, the number of frames in the strip.
          Image height & width: the values you wrote down in step 1.
          Remaining values: all 0.
        Click OK, and you'll have the beginning of your walk cycle.
        Now, just do this with the other walk cycles.  Any missing cycles
          will have to be made up for somehow; I suggest importing direction0
          and direction3 a second time, to fill up those frames with at least
          slightly relevent images.

When you're done with that, the sprite will be ready to go.  Be sure to name
  it something meaningful.  To go with the naming scheme I use elsewhere,
  you'd name it spr_(animal name)_walk(version number)
Make sure the walk cycle sprite for this animal in animaldefs is supplied
  with the new name.
Now that you have one sprite with all the frames in it, you can perform
  every-frame transformations, like scaling, quickly on all the images
  at once.
    
*/
