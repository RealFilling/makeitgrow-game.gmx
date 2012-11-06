var fieldx, fieldy;
hextopix(fieldx,fieldy);
if ((fieldx < view_xview[0]) or
    (fieldx > view_xview[0]+view_wport[0]) or
    (fieldy < view_yview[0]) or
    (fieldy > view_yview[0]+view_hport[0])) {
  return false;
  }
else {
  return true;
  }
