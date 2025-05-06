//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "<b><font color=\'#FFFF00\'>Boost Generator</font></b>\nIf you have <b>Boost Generator</b> in the Feature Shop purchased, you can click this button to refill or upgrade your Boost. Don\'t forget, Boost is very important!";
}


on(release){
   if(_root.save.featureBoostGen == true)
   {
      if(_root.optionsScreen._currentframe != 4)
      {
         _root.optionsScreen.gotoAndStop(4);
      }
      else
      {
         _root.optionsScreen.gotoAndStop(1);
      }
   }
   else
   {
      _root.showPopup("Boost Generator needed!","You have to purchase the Boost Generator to buy Boost! The Boost Generator can be purchased in the Feature Shop.");
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(enterFrame){
   if(_root.save.featureBoostGen == true)
   {
      if(_root.save.boost < _root.boostMax - 50)
      {
         gotoAndStop(2);
      }
      else
      {
         gotoAndStop(1);
      }
   }
   else
   {
      gotoAndStop(1);
   }
}


