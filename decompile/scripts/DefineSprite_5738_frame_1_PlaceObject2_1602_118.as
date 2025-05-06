//! status=pending
on(release){
   if(_parent.craftType != 3)
   {
      _parent.craftType = 3;
      _parent.craftCurrent = 2;
      _parent.craftOffset = 0;
      _parent.craftMaxOffset = _root.craftEnhancer.length - 13;
      if(_parent.craftMaxOffset < 1)
      {
         _parent.craftMaxOffset = 1;
      }
      _parent.craftRecipe = 1;
      _parent.crystal1Apply = 0;
      _parent.crystal2Apply = 0;
      _parent.specType = 6;
      _parent.checkCraftStat();
   }
}


onClipEvent(enterFrame){
   if(_parent.craftType == 3)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 30;
   }
}


