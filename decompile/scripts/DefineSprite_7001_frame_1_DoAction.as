//! status=pending
onEnterFrame = function()
{
   if(this.hitTest(_parent.stadiumHero.hitBox) && _parent.stadiumHero.health > 0)
   {
      _parent.stadiumHero.health += 5;
      if(_parent.stadiumHero.health > 100)
      {
         _parent.stadiumHero.health = 100;
      }
      reset();
   }
   i = 1;
   while(i <= 4)
   {
      if(this.hitTest(_parent["stadiumEnemy" + i].hitBox) && _parent["stadiumEnemy" + i].health > 0)
      {
         _parent["stadiumEnemy" + i].health += 5;
         if(_parent["stadiumEnemy" + i].health > 100)
         {
            _parent["stadiumEnemy" + i].health = 100;
         }
         reset();
      }
      i++;
   }
};
