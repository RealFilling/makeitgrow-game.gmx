var month;
month = argument0;
switch (month) {
  case 11:
  case 0:
  case 1:
    return 3; // Winter
    break;
  case 2:
  case 3:
  case 4:
    return 0; // Spring
    break;
  case 5:
  case 6:
  case 7:
    return 1; // Summer
    break;
  case 8:
  case 9:
  case 10:
    return 2; // Autumn
    break;
  }
