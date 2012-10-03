switch(state) {
  case LOGINFORMSTATE_OPENING:
    break;
  case LOGINFORMSTATE_USERNAMEENTRY:
  case LOGINFORMSTATE_PASSWORDENTRY:
    login_textentry(keyboard_lastchar);
    break;
  case LOGINFORMSTATE_DONEENTRY:
    break;
  case LOGINFORMSTATE_IOPROGRESS:
    break;
  case LOGINFORMSTATE_DONE:
    break;
  case LOGINFORMSTATE_ABORT:
    break;
  }
