var minutes;

minutes = (global.tick mod global.ticksperhour)*MINUTESPERTICK;

return string_replace_all(string_format(global.hour,2,0)," ","0")+":"+string_replace_all(string_format(minutes,2,0)," ","0");

