var teststring;
teststring = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
show_message("teststring: "+teststring);
show_message("length: "+string(string_length(teststring)));
copystring = string_copy(teststring,3,8);
show_message("copystring: "+copystring);
show_message("length: "+string(string_length(copystring)));
delstring1 = string_delete(teststring,1,10);
show_message("delstring1: "+delstring1);
show_message("length: "+string(string_length(delstring1)));
delstring2 = string_delete(teststring,0,10);
show_message("delstring2: "+delstring2);
show_message("length: "+string(string_length(delstring2)));
show_message("teststring: "+teststring);
show_message("length: "+string(string_length(teststring)));
show_error("BLEAH",true);




