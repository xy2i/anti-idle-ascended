//! status=pending
nameText.text = _root.careerName[_root.save.curBusiness];
displayText.text = "Show Business Reminder";
onEnterFrame = function()
{
   elapsed_days = Math.floor((_root.save.curBusinessOnline + _root.save.curBusinessOffline) / 86400);
   remaining = _root.save.curBusinessOnline + _root.save.curBusinessOffline - elapsed_days * 86400;
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
   timeText.text = elapsed_days + "d + " + elapsed_hours + ":" + elapsed_minutes + ":" + elapsed_seconds;
   if(_root.save.curBusiness == 3 || _root.save.curBusiness == 4)
   {
      itemText.text = "Receive inventory items as rewards.";
   }
   else
   {
      itemText.text = "";
   }
};
