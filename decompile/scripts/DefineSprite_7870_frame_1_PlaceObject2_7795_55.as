//! status=pending
onClipEvent(enterFrame){
   if(_root.save.fishRod != 8)
   {
      _alpha = 0;
   }
   else
   {
      if(_root.save.fishShield > 100)
      {
         _root.save.fishShield = 100;
      }
      if(_root.save.fishShield < 0)
      {
         _root.save.fishShield = 0;
      }
      targetScale = _root.save.fishShield;
      tmp += Math.ceil((targetScale - tmp) / 2);
      shieldBar._yscale = tmp * 2;
      if(tmp > 50)
      {
         shieldBar._yscale = 100;
      }
      shieldBar2._yscale = tmp * 2 - 100;
      if(tmp < 50)
      {
         shieldBar2._yscale = 0;
      }
      shieldText.text = Math.floor(_root.save.fishShield / 50);
      _alpha = 100;
   }
}


onClipEvent(load){
   _alpha = 0;
   shieldBar._yscale = 0;
   tmp = 0;
}


