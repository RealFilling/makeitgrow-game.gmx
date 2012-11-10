// Age an existing call
if (global.a_callage != -1) {
  global.a_callage += 1;
  if (global.a_callage > MAXCALLAGE) {
    global.a_callage = -1;
    }
  }

allanimalturns();
