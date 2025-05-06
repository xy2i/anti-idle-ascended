//! status=pending
on(release,keyPress "<Right>"){
   if(_root.selectedEvent < _root.eventStartTime.length - 2)
   {
      _root.selectedEvent += 1;
   }
}


onClipEvent(enterFrame){
   if(_root.selectedEvent < _root.eventStartTime.length - 2)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 30;
   }
}


onClipEvent(load){
   _alpha = 0;
}


