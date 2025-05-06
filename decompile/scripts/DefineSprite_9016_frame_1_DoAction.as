//! status=pending
stop();
onEnterFrame = function()
{
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
   totalMin = Math.floor(_root.save.ascendPlayTime / 60);
   elapsedText.text = elapsed_days + " day(s) + " + elapsed_hours + ":" + elapsed_minutes + ":" + elapsed_seconds + " (" + totalMin + " min.)";
   ascCount1.text = _root.withComma(_root.save.banned);
   ascCount2.text = _root.withComma(_root.save.bannedHard);
   ascCount3.text = _root.withComma(_root.save.bannedImpossible);
   if(_root.save.banned > 0)
   {
      ascSpeed1.text = _root.withComma(_root.save.speedRunAscend) + " min.";
   }
   else
   {
      ascSpeed1.text = "";
   }
   if(_root.save.bannedHard > 0)
   {
      ascSpeed2.text = _root.withComma(_root.save.speedRunAscendHard) + " min.";
   }
   else
   {
      ascSpeed2.text = "";
   }
   if(_root.save.bannedImpossible > 0)
   {
      ascSpeed3.text = _root.withComma(_root.save.speedRunAscendImpossible) + " min.";
   }
   else
   {
      ascSpeed3.text = "";
   }
};
