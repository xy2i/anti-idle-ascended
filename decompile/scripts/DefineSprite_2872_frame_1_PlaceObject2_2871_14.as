//! status=pending
onClipEvent(enterFrame){
   checkDelay += 1;
   if(checkDelay > 200)
   {
      gotoAndStop(1);
      checkDelay = 0;
      if(_root.save.awesomeEnergy > 0)
      {
         _alpha = 100;
      }
      else
      {
         _alpha = 30;
      }
      adventureText.text = _root.save.awesomeEnergy;
   }
}


onClipEvent(load){
   checkDelay = 200;
}


