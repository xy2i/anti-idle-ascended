//! status=pending
onClipEvent(enterFrame){
   alt = !alt;
   if(alt == true)
   {
      checkFrame();
   }
}


onClipEvent(load){
   function checkFrame()
   {
      if(_root.save.featureButtonMachine == true)
      {
         fr = 4;
      }
      else if(_root.save.level < reqLevel)
      {
         fr = 2;
      }
      else if(_root.save.coin < coinCost)
      {
         fr = 3;
      }
      else
      {
         fr = 1;
      }
      if(_currentframe != fr)
      {
         gotoAndStop(fr);
      }
   }
   coinCost = 150000;
   reqLevel = 40;
   alt = false;
   checkFrame();
}


