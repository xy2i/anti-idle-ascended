//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "<font color=\'#FFFF00\'><b>" + areaName + "</b></font>\nRequires 1 Ascension or 1 Rebirth";
}


on(release){
   if(_root.save.banned >= 1 || _root.save.bannedB >= 1)
   {
      _root.house.arena.travel(destination);
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(load){
   destination = 62;
   reqRank = 40;
   areaName = "Fairytale Fight-off!";
}


