//! status=pending
on(release){
   toChange = _root.save.filterPref5t;
   changeBonus();
   _root.save.filterPref5t = newBonus;
}


onClipEvent(load){
   function changeBonus()
   {
      curBonus = 0;
      var _loc2_ = 0;
      while(_loc2_ <= _parent.passiveArray.length - 1)
      {
         if(toChange == _parent.passiveArray[_loc2_])
         {
            curBonus = _loc2_;
         }
         _loc2_ = _loc2_ + 1;
      }
      if(curBonus == _parent.passiveArray.length - 1)
      {
         newBonus = _parent.passiveArray[0];
      }
      else
      {
         newBonus = _parent.passiveArray[curBonus + 1];
      }
   }
}


