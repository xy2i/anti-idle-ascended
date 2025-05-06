//! status=pending
onClipEvent(enterFrame){
   if(_root.house.arena._currentframe == 2 || _root.house._currentframe == 10 && _root.house.mainArcade._currentframe >= 21 && _root.house.mainArcade._currentframe <= 28 || _root.house.mainArcade._currentframe == 2 && _root.house.mainArcade.shop._currentframe != 1)
   {
      targetY = -50;
      canOpen = false;
   }
   else
   {
      if(_root._ymouse > 130 && _currentframe == 1 && _root.save.bestLevel > 30)
      {
         targetY = -50;
      }
      else
      {
         targetY = 0;
      }
      canOpen = true;
   }
   _Y = _Y + (targetY - _Y) / 5;
   if(canOpen == true)
   {
      if(this.hitTest(_root.cursor))
      {
         fr = 2;
      }
      else
      {
         fr = 1;
      }
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


onClipEvent(load){
   gotoAndStop(1);
   targetY = 0;
}


