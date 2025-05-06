//! status=pending
onEnterFrame = function()
{
   if(this.hitTest(_parent.stadiumHero.hitBox) && Key.isDown(16))
   {
      if(_parent.stadiumHero.xspeed > 0)
      {
         _parent.stadiumHero.xspeed += _parent.stadiumHero.boost;
      }
      else if(_parent.stadiumHero.xspeed < 0)
      {
         _parent.stadiumHero.xspeed -= _parent.stadiumHero.boost;
      }
   }
   i = 1;
   while(i <= 4)
   {
      if(this.hitTest(_parent["stadiumEnemy" + i].hitBox) && Math.random() < 0.4 && _parent["stadiumEnemy" + i].darkDur <= 0 || this.hitTest(_parent["stadiumEnemy" + i].hitBox) && Math.random() < 0.08)
      {
         if(_parent["stadiumEnemy" + i].xspeed > 0)
         {
            _parent["stadiumEnemy" + i].xspeed += _parent["stadiumEnemy" + i].boost;
         }
         else if(_parent["stadiumEnemy" + i].xspeed < 0)
         {
            _parent["stadiumEnemy" + i].xspeed -= _parent["stadiumEnemy" + i].boost;
         }
      }
      i++;
   }
};
