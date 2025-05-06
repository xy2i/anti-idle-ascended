//! status=pending
onClipEvent(enterFrame){
   if(_root.cursoridle > 300)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}


