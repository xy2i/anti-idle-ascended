//! status=pending
on(release,keyPress "<Left>"){
   if(_root.selectedEvent > 1)
   {
      _root.selectedEvent -= 1;
   }
}


onClipEvent(enterFrame){
   if(_root.selectedEvent > 1)
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


