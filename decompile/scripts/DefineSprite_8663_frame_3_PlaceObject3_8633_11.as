//! status=pending
onClipEvent(load){
   if(_parent.ago < 86400000)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 0;
   }
}


