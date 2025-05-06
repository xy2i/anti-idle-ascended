//! status=pending
on(release){
   toChange = _root.save.arenaMoreBonusPreference1;
   changeBonus();
   _root.save.arenaMoreBonusPreference1 = newBonus;
}


onClipEvent(load){
   function changeBonus()
   {
      curBonus = 0;
      var _loc2_ = 0;
      while(_loc2_ <= _parent.moreBonusArray.length - 1)
      {
         if(toChange == _parent.moreBonusArray[_loc2_])
         {
            curBonus = _loc2_;
         }
         _loc2_ = _loc2_ + 1;
      }
      if(curBonus == _parent.moreBonusArray.length - 1)
      {
         newBonus = _parent.moreBonusArray[0];
      }
      else
      {
         newBonus = _parent.moreBonusArray[curBonus + 1];
      }
   }
}


