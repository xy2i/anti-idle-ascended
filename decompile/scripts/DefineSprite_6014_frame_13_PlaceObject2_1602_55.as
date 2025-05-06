//! status=pending
on(release){
   toChange = _root.save.arenaAbilityPreference3;
   changeBonus();
   _root.save.arenaAbilityPreference3 = newBonus;
}


onClipEvent(load){
   function changeBonus()
   {
      curBonus = 0;
      var _loc2_ = 0;
      while(_loc2_ <= _parent.abilityArray.length - 1)
      {
         if(toChange == _parent.abilityArray[_loc2_])
         {
            curBonus = _loc2_;
         }
         _loc2_ = _loc2_ + 1;
      }
      if(curBonus == 0)
      {
         newBonus = _parent.abilityArray[_parent.abilityArray.length - 1];
      }
      else
      {
         newBonus = _parent.abilityArray[curBonus - 1];
      }
   }
}


