//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "";
}


on(release){
   if(_root.systemtimenow >= _root.eventStartTime[_root.selectedEvent] && _root.systemtimenow < _root.eventEndTime[_root.selectedEvent] || _root.save.arenaEventKey[_root.selectedEvent] == 1)
   {
      _root.save.arenaEvent = _root.selectedEvent;
      _root.house.arena.travel(82);
      _parent.gotoAndStop(1);
   }
   else
   {
      _root.showPopup("Event Unavailable","This event is currently unavailable.");
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(enterFrame){
   if(_root.systemtimenow < _root.eventEndTime[_root.selectedEvent] || _root.save.arenaEventKey[_root.selectedEvent] == 1)
   {
      _Y = 150;
   }
   else
   {
      _Y = 500;
   }
   if(_root.systemtimenow >= _root.eventStartTime[_root.selectedEvent] && _root.systemtimenow < _root.eventEndTime[_root.selectedEvent] || _root.save.arenaEventKey[_root.selectedEvent] == 1)
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


