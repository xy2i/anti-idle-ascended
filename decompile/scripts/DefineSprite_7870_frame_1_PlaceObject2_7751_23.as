//! status=pending
onClipEvent(enterFrame){
   if(tempLvl != _root.save.fishLevel)
   {
      tempLvl = _root.save.fishLevel;
      checkFrame();
   }
}


onClipEvent(load){
   function checkFrame()
   {
      if(_root.save.fishLevel >= 51)
      {
         gotoAndStop(3);
      }
      else if(_root.save.fishLevel >= 31)
      {
         gotoAndStop(2);
      }
      else
      {
         gotoAndStop(1);
      }
      inside.fishLevelText.text = _root.save.fishLevel;
   }
   tempLvl = _root.save.fishLevel;
   checkFrame();
}


