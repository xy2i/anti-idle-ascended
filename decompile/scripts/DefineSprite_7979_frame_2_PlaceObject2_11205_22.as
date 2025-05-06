//! status=pending
on(release){
   if(_root.save.businessDisplay == true)
   {
      _root.save.businessDisplay = false;
   }
   else
   {
      _root.save.businessDisplay = true;
   }
}


onClipEvent(enterFrame){
   if(_root.save.businessDisplay == true)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}


onClipEvent(load){
   if(isNaN(_root.save.businessDisplay))
   {
      _root.save.businessDisplay = false;
   }
}


