if (global.gamestate != GSTATE_PRECALC && (global.hour mod 8) == 0) {
  savegame();
}