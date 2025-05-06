//! status=pending
onClipEvent(enterFrame){
   if(_parent._parent.hero.Xalpha == 30)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}


