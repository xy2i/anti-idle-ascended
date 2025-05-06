//! status=pending
on(release){
   toChange = _root.save.filterPref6t;
   changeBonus();
   _root.save.filterPref6t = newBonus;
}


onClipEvent(load){
   function changeBonus()
   {
      curBonus = 0;
      var _loc2_ = 0;
      while(_loc2_ <= _parent.activeArray.length - 1)
      {
         if(toChange == _parent.activeArray[_loc2_])
         {
            curBonus = _loc2_;
         }
         _loc2_ = _loc2_ + 1;
      }
      if(curBonus == 0)
      {
         newBonus = _parent.activeArray[_parent.activeArray.length - 1];
      }
      else
      {
         newBonus = _parent.activeArray[curBonus - 1];
      }
   }
}


