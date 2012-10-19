var day, weatherlog, absoluteday;
weatherlog = file_text_open_write(working_directory+"weatherlog.txt");
for (day=0;day<global.daysperyear;day+=1) {
  absoluteday = figureabsoluteday(day);
  if (day==13) {
    file_text_write_string(weatherlog,"***** CURRENT DAY *****");
    file_text_writeln(weatherlog);
    }
  file_text_write_string(weatherlog, "DAY "+string(absoluteday)+
                         ", Month:"+global.months[absoluteday div 28]+
                         ", Seed:"+string(global.weatherseeds[day])+
                         ", Weather:"+global.weathernames[global.weatherrainfall[day]]);
  file_text_writeln(weatherlog);
  if (day==13) {
    file_text_write_string(weatherlog,"************************");
    file_text_writeln(weatherlog);
    }
  }
file_text_write_string(weatherlog,string_format(793,2,0));
file_text_writeln(weatherlog);
file_text_write_string(weatherlog,string_format(793,3,0));
file_text_writeln(weatherlog);
file_text_write_string(weatherlog,string_format(793,4,0));
file_text_writeln(weatherlog);
file_text_write_string(weatherlog,string_format(793,5,0));
file_text_writeln(weatherlog);
file_text_write_string(weatherlog,string_format(793,6,0));
file_text_writeln(weatherlog);
file_text_write_string(weatherlog,string_format(793,7,0));
file_text_writeln(weatherlog);
  
file_text_close(weatherlog);

