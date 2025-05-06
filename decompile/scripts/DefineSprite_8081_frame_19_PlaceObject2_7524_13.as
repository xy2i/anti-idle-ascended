//! status=pending
on(release){
   if(_parent.feedButton._currentframe == 1)
   {
      _parent.bookOfWisdom.gotoAndStop(2);
   }
}


onClipEvent(load){
   if(_root.save.newbieProgress < 15)
   {
      gotoAndStop(2);
   }
}


