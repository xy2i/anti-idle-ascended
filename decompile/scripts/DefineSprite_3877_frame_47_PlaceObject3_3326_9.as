//! status=pending
on(dragOver,rollOver){
   if(_root.saveid == 21)
   {
      _root.actiondescription = "<b>The Special Arena</b>\nBeat The Special Arena to finish the Challenge! Are you ready?";
   }
   else
   {
      _root.actiondescription = "<b>The Special Arena</b>\nTHE MEGABOSS is looking for a challenger! Prove that he isn\'t powerful at all!\n\nYou cannot use recovery potions in this raid.\n\nEntries left: <b>" + _root.save.arenaMegabossEntry + "</b>";
   }
   roll = 1;
}


on(release){
   if(_root.save.arenaMegabossEntry > 0 && _root.house.arena.enemy.enemyID == 0)
   {
      _root.save.arenaMegabossEntry -= 1;
      _root.house.arena.travel(destination);
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
   roll = 0;
}


onClipEvent(load){
   destination = 29;
}


