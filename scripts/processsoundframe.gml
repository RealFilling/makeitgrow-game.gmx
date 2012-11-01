var a;
for (a=0;a<SOUNDFRAMESIZE;a+=1) {
  if (global.soundframe[a] > 0) {
    sound_play_respectdisable(global.soundframesounds[a]);
    global.soundframe[a] = 0;
    }
  }

