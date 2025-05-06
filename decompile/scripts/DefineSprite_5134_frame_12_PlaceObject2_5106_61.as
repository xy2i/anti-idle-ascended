//! status=pending
onClipEvent(enterFrame){
   if(_root.systemtimenow < _root.eventEndTime[_root.selectedEvent] || _root.save.arenaEventKey[_root.selectedEvent] == 1)
   {
      _Y = 500;
   }
   else
   {
      _Y = 150;
   }
}


onClipEvent(load){
   _Y = 500;
}


