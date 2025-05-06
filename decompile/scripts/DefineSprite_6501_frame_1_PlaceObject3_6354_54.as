//! status=pending
onClipEvent(enterFrame){
   targetScale = _root.arcadeMathPower;
   if(targetScale > 100)
   {
      targetScale = 100;
   }
   insideBar._xscale += (targetScale - insideBar._xscale) / 5;
   if(_root.arcadeMathPower >= 100 && _root.arcadeMultiplier < 9)
   {
      _root.arcadeMathPower -= 100;
      _root.arcadeMultiplier += 1;
      if(_root.arcadeMultiplier >= 8)
      {
         _root.gainWhiteCoin(2);
      }
      else if(_root.arcadeMultiplier >= 4)
      {
         _root.gainWhiteCoin(1);
      }
   }
   else if(_root.arcadeMultiplier == 9)
   {
      _root.arcadeMathPower = 100;
      insideBar.gotoAndStop(2);
   }
}


onClipEvent(load){
   insideBar._xscale = 0;
   insideBar.gotoAndStop(3);
}


