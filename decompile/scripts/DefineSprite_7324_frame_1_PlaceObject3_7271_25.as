//! status=pending
onClipEvent(enterFrame){
   if(_root.save.awesomeBless <= 0 && _alpha > 0)
   {
      _alpha = _alpha - 2;
   }
   else if(_root.save.awesomeBless > 0 && _alpha > 80)
   {
      _alpha = _alpha - 2;
   }
   if(_root.save.awesomeBless != tempBless)
   {
      _alpha = 100;
      tempBless = _root.save.awesomeBless;
      blessText.text = "Daily 2x Adventure EXP! - " + tempBless + " remaining";
   }
}


onClipEvent(load){
   _alpha = 0;
   tempBless = 0;
   blessText.text = "Daily 2x Adventure EXP! - " + tempBless + " remaining";
}


