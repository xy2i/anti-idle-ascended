//! status=pending
on(release){
   if(_root.tempOld != true)
   {
      _root.tempOld = true;
   }
   else
   {
      _root.tempOld = false;
   }
}


onClipEvent(enterFrame){
   if(_root.tempOld == false)
   {
      gotoAndStop(1);
   }
   else
   {
      gotoAndStop(2);
   }
}


