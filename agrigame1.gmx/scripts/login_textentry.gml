var keyentered;

keyentered = argument0;

if (keyentered == vk_enter) {
  if (state == LOGINFORMSTATE_USERNAMEENTRY) {
    username = currenttext;
    currenttext = "";
    password = "";
    state = LOGINFORMSTATE_PASSWORDENTRY;
    return 0;
    }
  else if (state == LOGINFORMSTATE_PASSWORDENTRY) {
    password = currenttext;
    currenttext = "";
    state = LOGINFORMSTATE_DONEENTRY;
    return 0;
    }
  }
else if ((keyentered == vk_backspace) or (keyentered == vk_delete)) {
  if (string_length(currenttext) == 0) {
    if (state == LOGINFORMSTATE_PASSWORDENTRY) {
      currenttext = username;
      password = "";
      state = LOGINFORMSTATE_USERNAMEENTRY;
      }
    return 0;
    }
  else {
    currenttext = string_copy(currenttext, 1, string_length(currenttext-1) );
    return 0;
    }
  }

if (string_length(currenttext) >= 20) {
  return 0;  
  }

// Here we've handled all the special characters.  Now we need to filter the input.
if (string_pos(keyentered,LOGIN_ACCEPTCHARS) == 0) {
  return 0;
  }
  
currenttext += keyentered;
return 0;
