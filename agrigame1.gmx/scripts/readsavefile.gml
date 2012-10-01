filehandle = file_text_open_read("greendreamsave.txt");
instring = file_text_read_string(filehandle);
file_text_close(filehandle);
return instring;
