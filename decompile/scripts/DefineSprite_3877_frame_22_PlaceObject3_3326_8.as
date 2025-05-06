//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "<b>???</b>";
   roll = 1;
}


on(release){
   if(_root.house.arena.enemy.enemyID == 0)
   {
      _parent.islandPass.gotoAndStop(2);
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
   roll = 0;
}


