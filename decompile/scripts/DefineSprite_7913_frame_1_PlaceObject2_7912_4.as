//! status=pending
onClipEvent(load){
   if(_parent.wpmResult > 100)
   {
      gotoAndStop(4);
   }
   else if(_parent.wpmResult > 40)
   {
      gotoAndStop(3);
   }
   else if(_parent.wpmResult > 20)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}


