//! status=pending
onClipEvent(enterFrame){
   if(_root.save.featureEpicLicense == true)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 0;
   }
}


