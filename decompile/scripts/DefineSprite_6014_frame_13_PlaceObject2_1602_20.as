//! status=pending
on(release){
   toChange = _root.save.arenaBonusPreference2;
   changeBonus();
   _root.save.arenaBonusPreference2 = newBonus;
}


onClipEvent(load){
   function changeBonus()
   {
      curBonus = 0;
      var _loc2_ = 0;
      while(_loc2_ <= _parent.bonusArray.length - 1)
      {
         if(toChange == _parent.bonusArray[_loc2_])
         {
            curBonus = _loc2_;
         }
         _loc2_ = _loc2_ + 1;
      }
      if(curBonus == _parent.bonusArray.length - 1)
      {
         newBonus = _parent.bonusArray[0];
      }
      else
      {
         newBonus = _parent.bonusArray[curBonus + 1];
      }
   }
}


