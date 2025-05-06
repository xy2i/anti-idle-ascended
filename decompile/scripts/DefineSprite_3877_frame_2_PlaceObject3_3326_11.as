//! status=pending
on(dragOver,rollOver){
   if(areaName != "")
   {
      _root.actiondescription = "<font color=\'#FFFF00\'><b>Special Training Zone</b></font>\nA special zone where you can test your damage per second and gain awesome rewards for that!\nOnly available to players who are Rank 500 or have at least 1 Rebirth.";
   }
}


on(release){
   if(_root.save.battlePoint >= 500 && _root.house.arena.enemy.enemyID == 0)
   {
      _root.house.arena.kommanderDialog.gotoAndStop(9);
      _root.house.arena.travel(80);
   }
   else
   {
      _root.showPopup("Too dangerous!","This area is too dangerous for you. Better avoid it for now.");
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(load){
   if(_root.save.battlePoint < 500)
   {
      _Y = _Y + 500;
      _alpha = 0;
   }
}


