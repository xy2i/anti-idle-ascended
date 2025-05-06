//! status=pending
on(release){
   if(_parent.rType == "Weapon" && _root.emptyWeaponSlot >= 1)
   {
      _parent.performWeaponFusion();
   }
   else if(_parent.rType == "Armor" && _root.emptyArmorSlot >= 1)
   {
      _parent.performArmorFusion();
   }
   else if(_parent.rType == "Accessory" && _root.emptyAccessorySlot >= 1)
   {
      _parent.performAccessoryFusion();
   }
}


