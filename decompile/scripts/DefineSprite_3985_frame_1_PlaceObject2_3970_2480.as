//! status=pending
onClipEvent(enterFrame){
   if(_root.spiritInvincibility > 0 && _root.save.disableManaEffect != true)
   {
      if(_alpha < 50)
      {
         _alpha = _alpha + 10;
      }
   }
   else if(_alpha > 0)
   {
      _alpha = _alpha - 10;
   }
}


onClipEvent(load){
   _alpha = 0;
}


