//! status=pending
onClipEvent(enterFrame){
   if(_root.emptyWeaponSlot > 0 && _root.emptyArmorSlot > 0 && _root.emptyEnhancerSlot > 0 && _root.emptyPotionSlot > 0 && _root.emptyAccessorySlot > 0)
   {
      _alpha = 0;
   }
   else
   {
      _alpha = 100;
   }
}


onClipEvent(load){
   _alpha = 0;
}


