var filename, handle;
filename = argument0;
handle = file_text_open_write(filename);
file_text_write_string(handle, "Reached point.");
file_text_writeln(handle);
file_text_close(handle);
