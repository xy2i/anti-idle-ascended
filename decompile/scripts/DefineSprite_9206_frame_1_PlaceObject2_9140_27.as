//! status=pending
onClipEvent(enterFrame){
   checkFrame();
}


onClipEvent(load){
   function checkFrame()
   {
      fr = Math.floor(_root.save.petStat[6] / 10) + 1;
      if(_currentframe != fr)
      {
         gotoAndStop(fr);
      }
   }
   checkFrame();
}


