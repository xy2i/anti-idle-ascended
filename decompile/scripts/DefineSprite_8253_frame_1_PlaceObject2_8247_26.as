//! status=pending
onClipEvent(enterFrame){
   if(_root.save.boostFreeze > 0)
   {
      gotoAndStop(1);
      _alpha = 100;
      timerText.text = _root.convertSec(_root.save.boostFreeze);
   }
   else if(_currentframe == 1)
   {
      _alpha = _alpha - 5;
      timerText.text = _root.convertSec(0);
      if(_alpha <= 0)
      {
         gotoAndStop(2);
      }
   }
}


onClipEvent(load){
   gotoAndStop(2);
}


