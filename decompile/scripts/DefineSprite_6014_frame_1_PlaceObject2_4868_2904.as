//! status=pending
onClipEvent(enterFrame){
   if(_root.save.rangeAnimate == false)
   {
      _Y = 1000;
   }
   else
   {
      _Y = 0;
   }
   alt = !alt;
   if(alt == true)
   {
      if(_alpha > 0)
      {
         _alpha = _alpha - 10;
         if(_root.save.rangeAnimate == false)
         {
            _alpha = 0;
            gotoAndStop(1);
         }
      }
   }
}


onClipEvent(load){
   _alpha = 0;
   alt = false;
}


