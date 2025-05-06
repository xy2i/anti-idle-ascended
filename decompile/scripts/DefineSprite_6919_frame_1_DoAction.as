//! status=pending
onEnterFrame = function()
{
   if(this.hitTest(_parent.stadiumHero.hitBox))
   {
      _root.gainWhiteCoin(1);
      _Y = 1000;
   }
   i = 1;
   while(i <= 4)
   {
      if(this.hitTest(_parent["stadiumEnemy" + i].hitBox))
      {
         _Y = 1000;
      }
      i++;
   }
};
