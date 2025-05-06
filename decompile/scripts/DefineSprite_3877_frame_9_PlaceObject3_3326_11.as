//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "<b>Epic Pyramid Battle</b>\nA raid for all levels!\n\nEntries left: <b>" + _root.save.arenaPyramidEntry + "</b>";
   roll = 1;
}


on(release){
   if(_root.house.arena.enemy.enemyID == 0)
   {
      if(_root.save.gDifficulty < 3 || _root.save.level >= 1500)
      {
         _parent._parent.kommanderDialog.gotoAndStop(11);
      }
      else
      {
         _root.showPopup("Impossible Ascension","You have to reach level 1,500 to access the Dark Pyramid.");
      }
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
   roll = 0;
}


onClipEvent(load){
   travelPrice = 0;
   destination = 20;
   if(_root.save.featureTravelingTicket == true)
   {
      travelPrice = Math.floor(travelPrice * 0.05);
   }
}


