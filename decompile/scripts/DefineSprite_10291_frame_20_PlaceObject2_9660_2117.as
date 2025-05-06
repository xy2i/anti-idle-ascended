//! status=pending
onClipEvent(load){
   if(_root.save.featureEpicLicense == true)
   {
      gotoAndStop(1);
   }
   else
   {
      gotoAndStop(2);
   }
}


