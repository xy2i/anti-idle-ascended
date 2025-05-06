//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "You can buy permanent access to this Technical Battleground for <b>25,000,000,000</b> Crafting Material by Shift + Clicking this button. Make sure you have selected the correct Technical Battleground. PLEASE NOTE THAT THERE IS NO CONFIRMATION!";
}


on(release){
   if(Key.isDown(16))
   {
      if(_root.save.arenaCraft >= 25000000000 && _root.save.arenaEventKey[_root.selectedEvent] != 1 && _root.systemtimenow >= _root.eventEndTime[_root.selectedEvent])
      {
         _root.save.arenaCraft -= 25000000000;
         _root.save.arenaEventKey[_root.selectedEvent] = 1;
      }
      else
      {
         _root.showPopup("Error","You don\'t have enough Crafting Material.");
      }
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(enterFrame){
   if(_root.save.arenaCraft >= 25000000000)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 30;
   }
}


onClipEvent(load){
   _alpha = 30;
}


