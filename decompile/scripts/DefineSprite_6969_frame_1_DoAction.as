//! status=pending
onEnterFrame = function()
{
   if(this.hitTest(_parent.stadiumHero.hitBox))
   {
      _parent.stadiumHero.curItem = selectItem;
      reset();
   }
   i = 1;
   while(i <= 4)
   {
      if(this.hitTest(_parent["stadiumEnemy" + i].hitBox))
      {
         _parent["stadiumEnemy" + i].curItem = selectItem;
         reset();
      }
      i++;
   }
};
