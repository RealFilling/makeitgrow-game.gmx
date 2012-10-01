draw_sprite(sprite_index, image_index, x, y);
draw_set_font(font_hud);
draw_set_halign(fa_center);
draw_set_valign(fa_top);


drawshadowedtext(cx(),cy()-60,"USERNAME:");
drawshadowedtext(cx(),cy()-40,username);
drawshadowedtext(cx(),cy()+0,"PASSWORD:");
drawshadowedtext(cx(),cy()+20,password);



switch(state) {
  case LOGINFORMSTATE_OPENING:
    break;
  case LOGINFORMSTATE_USERNAMEENTRY:
    break;
  case LOGINFORMSTATE_PASSWORDENTRY:
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
