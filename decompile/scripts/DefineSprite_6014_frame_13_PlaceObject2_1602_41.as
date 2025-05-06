//! status=pending
on(release){
   toChange = _root.save.arenaAbilityPreference2;
   changeBonus();
   _root.save.arenaAbilityPreference2 = newBonus;
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
      if(curBonus == _parent.abilityArray.length - 1)
      {
         newBonus = _parent.abilityArray[0];
      }
      else
      {
         newBonus = _parent.abilityArray[curBonus + 1];
      }
   }
}


