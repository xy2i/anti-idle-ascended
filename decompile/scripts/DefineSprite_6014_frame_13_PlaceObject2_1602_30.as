//! status=pending
on(release){
   toChange = _root.save.arenaAbilityPreference1;
   changeBonus();
   _root.save.arenaAbilityPreference1 = newBonus;
}


onClipEvent(load){
   function changeBonus()
   {
      curBonus = 0;
      var _loc2_ = 0;
      while(_loc2_ <= _parent.weaponAbilityArray.length - 1)
      {
         if(toChange == _parent.weaponAbilityArray[_loc2_])
         {
            curBonus = _loc2_;
         }
         _loc2_ = _loc2_ + 1;
      }
      if(curBonus == _parent.weaponAbilityArray.length - 1)
      {
         newBonus = _parent.weaponAbilityArray[0];
      }
      else
      {
         newBonus = _parent.weaponAbilityArray[curBonus + 1];
      }
   }
}


