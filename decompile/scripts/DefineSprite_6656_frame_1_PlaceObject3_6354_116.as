//! status=pending
onClipEvent(enterFrame){
   targetScale = _root.arcadeMultiplierProgress;
   insideBar._xscale += (targetScale - insideBar._xscale) / 5;
   if(_root.arcadeMultiplierProgress >= 100 && _root.arcadeMultiplier < 15)
   {
      _root.arcadeMultiplierProgress -= 100;
      _root.arcadeMultiplier += 1;
      if(_root.arcadeMultiplier == 6 || _root.arcadeMultiplier == 9)
      {
         _root.gainWhiteCoin(1);
      }
      if(_root.arcadeMultiplier == 12)
      {
         _root.gainWhiteCoin(2);
      }
      if(_root.arcadeMultiplier == 15)
      {
         _root.gainWhiteCoin(3);
      }
   }
   else if(_root.arcadeMultiplier == 15)
   {
      _root.arcadeMultiplierProgress = 100;
   }
}


onClipEvent(load){
   insideBar._xscale = 0;
   insideBar.gotoAndStop(3);
}


