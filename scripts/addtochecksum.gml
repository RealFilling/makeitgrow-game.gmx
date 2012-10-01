global.checksumcount += 1;
global.checksumtotal = (global.checksumtotal + 
                        argument0 * (global.checksumcount*(3 + (global.checksumcount div 3))) mod 9999999999);

