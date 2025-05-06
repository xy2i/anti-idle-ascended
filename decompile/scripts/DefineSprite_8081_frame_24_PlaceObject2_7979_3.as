//! status=pending
onClipEvent(load){
   if(_root.save.curBusiness != 0)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}


