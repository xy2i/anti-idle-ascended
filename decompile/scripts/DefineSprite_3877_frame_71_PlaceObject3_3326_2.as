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
   if(_root.save.apocSecretKill >= 200)
   {
      _root.fightStat2 = "Voice: \"Run, run for your lives!\"";
      _root.house.arena.travel(destination);
   }
   else
   {
      _root.showPopup("Access Denied","Get rid of the triangles first!");
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(load){
   destination = 71;
   reqRank = 1;
   areaName = "Pirate Ship";
}


