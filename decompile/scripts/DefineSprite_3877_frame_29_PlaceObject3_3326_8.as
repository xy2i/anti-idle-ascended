//! status=pending
on(dragOver,rollOver){
   if(_root.save.arenaLevel >= 150)
   {
      _root.actiondescription = "<b>Censor Ship</b>\nTravel Cost\n" + _root.withComma(travelPrice) + " Coins";
   }
   roll = 1;
}


on(release){
   if(_root.save.arenaLevel >= 150)
   {
      _root.house.arena.travel(destination,travelPrice);
   }
   else
   {
      _root.showPopup("Hmm...","There\'s something strange about this...");
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
   roll = 0;
}


onClipEvent(load){
   travelPrice = 400000000;
   destination = 58;
   if(_root.save.featureTravelingTicket == true)
   {
      travelPrice = Math.floor(travelPrice * 0.05);
   }
}


