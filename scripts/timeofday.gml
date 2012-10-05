var hours,minutes;
hours = global.tick div global.ticksperhour;

minutes = (global.tick mod global.ticksperhour)*MINUTESPERTICK;

return string_replace_all(string_format(hours,2,0)," ","0")+":"+string_replace_all(string_format(minutes,2,0)," ","0");

