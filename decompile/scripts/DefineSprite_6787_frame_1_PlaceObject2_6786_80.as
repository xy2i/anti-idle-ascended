//! status=pending
onClipEvent(enterFrame){
   if(targetAlpha > 0)
   {
      targetAlpha -= 50 / _root.fps;
      _alpha = _alpha + (targetAlpha - _alpha) / 10;
      if(_alpha > 100)
      {
         _alpha = 100;
      }
      gotoAndStop(1);
   }
   else
   {
      gotoAndStop(2);
   }
}


onClipEvent(load){
   function speech(mess)
   {
      gotoAndStop(1);
      messText.text = mess;
      targetAlpha = 125;
   }
   speech("I\'m the Dragon of Wisdom, and you\'re watching me \'play\' Math Master! Have fun!");
}


