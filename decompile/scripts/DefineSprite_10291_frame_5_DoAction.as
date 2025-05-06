//! status=pending
_root.save.viewStat += 1;
onEnterFrame = function()
{
   elapsed_days = Math.floor(_root.save.totalPlayTime / 86400);
   remaining = _root.save.totalPlayTime - elapsed_days * 86400;
   elapsed_hours = Math.floor(remaining / 3600);
   remaining -= elapsed_hours * 3600;
   elapsed_minutes = Math.floor(remaining / 60);
   remaining -= elapsed_minutes * 60;
   elapsed_seconds = Math.floor(remaining / 1);
   remaining -= elapsed_seconds * 1;
   if(elapsed_hours < 10)
   {
      elapsed_hours = "0" + elapsed_hours;
   }
   if(elapsed_minutes < 10)
   {
      elapsed_minutes = "0" + elapsed_minutes;
   }
   if(elapsed_seconds < 10)
   {
      elapsed_seconds = "0" + elapsed_seconds;
   }
   _root.timeelapseddisp = elapsed_days + "day " + elapsed_hours + "hr " + elapsed_minutes + "min " + elapsed_seconds + "sec";
   elapsed_days = Math.floor(_root.save.ascendPlayTime / 86400);
   remaining = _root.save.ascendPlayTime - elapsed_days * 86400;
   elapsed_hours = Math.floor(remaining / 3600);
   remaining -= elapsed_hours * 3600;
   elapsed_minutes = Math.floor(remaining / 60);
   remaining -= elapsed_minutes * 60;
   elapsed_seconds = Math.floor(remaining / 1);
   remaining -= elapsed_seconds * 1;
   if(elapsed_hours < 10)
   {
      elapsed_hours = "0" + elapsed_hours;
   }
   if(elapsed_minutes < 10)
   {
      elapsed_minutes = "0" + elapsed_minutes;
   }
   if(elapsed_seconds < 10)
   {
      elapsed_seconds = "0" + elapsed_seconds;
   }
   _root.ascendelapseddisp = elapsed_days + "day " + elapsed_hours + "hr " + elapsed_minutes + "min " + elapsed_seconds + "sec";
   elapsed_days = Math.floor((_root.systemtimenow - _root.save.firstPlayed) / 1000 / 86400);
   remaining = (_root.systemtimenow - _root.save.firstPlayed) / 1000 - elapsed_days * 86400;
   elapsed_hours = Math.floor(remaining / 3600);
   remaining -= elapsed_hours * 3600;
   elapsed_minutes = Math.floor(remaining / 60);
   remaining -= elapsed_minutes * 60;
   elapsed_seconds = Math.floor(remaining / 1);
   remaining -= elapsed_seconds * 1;
   if(elapsed_hours < 10)
   {
      elapsed_hours = "0" + elapsed_hours;
   }
   if(elapsed_minutes < 10)
   {
      elapsed_minutes = "0" + elapsed_minutes;
   }
   if(elapsed_seconds < 10)
   {
      elapsed_seconds = "0" + elapsed_seconds;
   }
   _root.knowndisp = elapsed_days + "day " + elapsed_hours + "hr " + elapsed_minutes + "min " + elapsed_seconds + "sec";
   elapsed_days = Math.floor(_root.thisSession / 86400);
   remaining = _root.thisSession - elapsed_days * 86400;
   elapsed_hours = Math.floor(remaining / 3600);
   remaining -= elapsed_hours * 3600;
   elapsed_minutes = Math.floor(remaining / 60);
   remaining -= elapsed_minutes * 60;
   elapsed_seconds = Math.floor(remaining / 1);
   remaining -= elapsed_seconds * 1;
   if(elapsed_hours < 10)
   {
      elapsed_hours = "0" + elapsed_hours;
   }
   if(elapsed_minutes < 10)
   {
      elapsed_minutes = "0" + elapsed_minutes;
   }
   if(elapsed_seconds < 10)
   {
      elapsed_seconds = "0" + elapsed_seconds;
   }
   _root.cursecdisp = elapsed_days + "day " + elapsed_hours + "hr " + elapsed_minutes + "min " + elapsed_seconds + "sec";
   elapsed_days = Math.floor(_root.save.longestSession / 86400);
   remaining = _root.save.longestSession - elapsed_days * 86400;
   elapsed_hours = Math.floor(remaining / 3600);
   remaining -= elapsed_hours * 3600;
   elapsed_minutes = Math.floor(remaining / 60);
   remaining -= elapsed_minutes * 60;
   elapsed_seconds = Math.floor(remaining / 1);
   remaining -= elapsed_seconds * 1;
   if(elapsed_hours < 10)
   {
      elapsed_hours = "0" + elapsed_hours;
   }
   if(elapsed_minutes < 10)
   {
      elapsed_minutes = "0" + elapsed_minutes;
   }
   if(elapsed_seconds < 10)
   {
      elapsed_seconds = "0" + elapsed_seconds;
   }
   _root.bestsecdisp = elapsed_days + "day " + elapsed_hours + "hr " + elapsed_minutes + "min " + elapsed_seconds + "sec";
   elapsed_days = Math.floor(_root.save.longestQuit / 24);
   remaining = _root.save.longestQuit - elapsed_days * 24;
   elapsed_hours = Math.floor(remaining);
   if(elapsed_hours < 10)
   {
      elapsed_hours = "0" + elapsed_hours;
   }
   _root.longestquit = elapsed_days + "day " + elapsed_hours + "hr";
   _root.sessionamnt = _root.save.totalPlays;
   _root.onlineFreq = "[" + Math.ceil(_root.save.totalPlayTime / (_root.systemtimenow - _root.save.firstPlayed) * 10000000) / 100 + "%]";
};
