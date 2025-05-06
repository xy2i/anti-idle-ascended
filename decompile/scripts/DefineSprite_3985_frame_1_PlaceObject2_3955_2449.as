//! status=pending
onClipEvent(enterFrame){
   if(_root.save.disableManaEffect == true)
   {
      if(_currentframe != 2)
      {
         gotoAndStop(2);
      }
   }
   else if(_root.spiritHeal > 0)
   {
      if(_currentframe == 2)
      {
         gotoAndStop(1);
      }
      if(_alpha < 50)
      {
         _alpha = _alpha + 10;
      }
   }
   else if(_root.spiritHeal <= 0 && _currentframe == 1)
   {
      _alpha = _alpha - 10;
      if(_alpha <= 0)
      {
         _alpha = 0;
         gotoAndStop(2);
      }
   }
}


onClipEvent(load){
   gotoAndStop(2);
   _alpha = 0;
}


