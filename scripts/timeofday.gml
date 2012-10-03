var hours,minutes;
hours = global.tick div TICKSPERHOUR;

minutes = (global.tick mod TICKSPERHOUR)*MINUTESPERTICK;

return string_replace_all(string_format(hours,2,0)," ","0")+":"+string_replace_all(string_format(minutes,2,0)," ","0");

