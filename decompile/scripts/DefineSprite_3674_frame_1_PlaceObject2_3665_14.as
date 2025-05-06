//! status=pending
on(dragOver,rollOver){
   if(areaName != "")
   {
      _root.actiondescription = "<font color=\'#FFFF00\'><b>" + areaName + "</b></font>";
      if(_root.save.arenaLevel >= reqRank)
      {
         _root.actiondescription += "\n\n<font color=\'#00FF00\'>Required Rank: <b>" + reqRank + "</b></font>\nClick here to travel!";
      }
      else
      {
         _root.actiondescription += "\n\n<font color=\'#FF0000\'>Required Rank: <b>" + reqRank + "</b></font>\nYour Arena Rank is not high enough.";
      }
   }
}


on(release){
   if(_root.save.au >= 2)
   {
      _root.house.arena.travel(destination);
   }
   else
   {
      _root.showPopup("Access Denied","Upon attempting to enter, you hear a terrifying voice: Tm8gd2F5IHdlJ3JlIGxldHRpbmcgeW91IGVudGVyIQ==\nWhat does this mean, hmm...");
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(load){
   destination = 68;
   reqRank = 180;
   areaName = "";
}


