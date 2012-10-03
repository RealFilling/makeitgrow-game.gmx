var processstring, charstobite, returnstring;
processstring = argument0;
charstobite = argument1;

global.bittenchars = string_copy(processstring,1,charstobite);
returnstring = string_copy(processstring,charstobite+1,string_length(processstring)-charstobite);
//show_error("biteoffsubstring: returnstring == "+returnstring,false);
return returnstring

