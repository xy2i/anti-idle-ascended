//! status=pending
on(release){
   if(_parent.craftType != 4)
   {
      _parent.craftType = 4;
      _parent.craftCurrent = 3;
      _parent.craftOffset = 0;
      _parent.craftMaxOffset = _root.craftPotion.length - 13;
      if(_parent.craftMaxOffset < 1)
      {
         _parent.craftMaxOffset = 1;
      }
      _parent.craftRecipe = 1;
      _parent.crystal1Apply = 0;
      _parent.crystal2Apply = 0;
      _parent.specType = 1;
      _parent.checkCraftStat();
   }
}


onClipEvent(enterFrame){
   if(_parent.craftType == 4)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 30;
   }
}


