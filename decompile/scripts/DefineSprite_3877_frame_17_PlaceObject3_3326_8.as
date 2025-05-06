//! status=pending
on(dragOver,rollOver){
   if(areaName != "")
   {
      _root.actiondescription = "<font color=\'#FFFF00\'><b>" + areaName + "</b></font>\nLet\'s draw stuff!";
   }
}


on(release){
   _root.actiondescription = "";
   if(_root.house.arena.enemy.enemyID == 0)
   {
      _root.house.arena.gotoAndStop(3);
   }
   else
   {
      _root.showPopup("Kill the monster","Let\'s kill that monster first!");
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(load){
   areaName = "Drawing Board";
}


