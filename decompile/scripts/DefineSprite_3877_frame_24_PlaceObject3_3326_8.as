//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "<b>Defend the \'???\' Generator!</b>\nPrevent the aliens from destroying the \'??? Generator\' and repair it. Hold SHIFT to switch to Defend Mode.";
}


on(release){
   if(_root.house.arena.enemy.enemyID == 0)
   {
      _parent._parent.kommanderDialog.gotoAndStop(17);
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(load){
   destination = 24;
}


