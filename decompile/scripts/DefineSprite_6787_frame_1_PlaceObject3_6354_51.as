//! status=pending
onClipEvent(enterFrame){
   targetScale = _root.arcadeMathPower;
   insideBar._xscale += (targetScale - insideBar._xscale) / 5;
   if(_root.arcadeMathPower >= 100 && _root.arcadeMultiplier < 9)
   {
      _root.arcadeMathPower -= 100;
      _root.arcadeMultiplier += 1;
   }
   else if(_root.arcadeMultiplier == 15)
   {
      _root.arcadeMathPower = 100;
      insideBar.gotoAndStop(2);
   }
}


onClipEvent(load){
   insideBar._xscale = 0;
   insideBar.gotoAndStop(3);
}


