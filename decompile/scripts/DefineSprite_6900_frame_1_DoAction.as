//! status=pending
onEnterFrame = function()
{
   xDist = Math.abs(_parent.stadiumHero._x - _X);
   yDist = Math.abs(_parent.stadiumHero._y - _Y + 1);
   if(xDist <= 50 && yDist <= 49)
   {
      if(_parent.stadiumHero.yspeed > 0 && _parent.stadiumHero._y < -50 + _Y + _parent.stadiumHero.yspeed)
      {
         _parent.stadiumHero.yspeed = 0;
         _parent.stadiumHero._y = -50 + _Y;
      }
      else if(_parent.stadiumHero._y > -50 + _Y && _parent.stadiumHero._y < 50 + _Y + _parent.stadiumHero.yspeed)
      {
         _parent.stadiumHero._x -= _parent.stadiumHero.xspeed;
         if(_parent.stadiumHero._x < _X + 25)
         {
            _parent.stadiumHero._x = _X - 51;
         }
         else
         {
            _parent.stadiumHero._x = _X + 51;
         }
         _parent.stadiumHero.xspeed *= -1;
      }
      else
      {
         _parent.stadiumHero._y = _Y + 50;
         _parent.stadiumHero.yspeed *= -1;
      }
   }
   i = 1;
   while(i <= 4)
   {
      xDistA = Math.abs(_parent["stadiumEnemy" + i]._x - _X);
      yDistA = Math.abs(_parent["stadiumEnemy" + i]._y - _Y + 1);
      if(xDistA <= 50 && yDistA <= 49)
      {
         if(_parent["stadiumEnemy" + i].yspeed > 0 && _parent["stadiumEnemy" + i]._y < -50 + _Y + _parent["stadiumEnemy" + i].yspeed)
         {
            _parent["stadiumEnemy" + i].yspeed = 0;
            _parent["stadiumEnemy" + i]._y = -50 + _Y;
         }
         if(_parent["stadiumEnemy" + i]._y > -50 + _Y)
         {
            _parent["stadiumEnemy" + i]._x -= _parent["stadiumEnemy" + i].xspeed;
            if(_parent["stadiumEnemy" + i]._x < _X + 25)
            {
               _parent["stadiumEnemy" + i]._x = _X - 51;
            }
            else
            {
               _parent["stadiumEnemy" + i]._x = _X + 51;
            }
            _parent["stadiumEnemy" + i].xspeed *= -1;
         }
      }
      if(isNaN(_parent["stadiumEnemy" + i].dir))
      {
         if(_X - _parent["stadiumEnemy" + i]._x < _parent["stadiumEnemy" + i].power * 550 && _X - _parent["stadiumEnemy" + i]._x > 0 && Math.random() < 0.95)
         {
            if(_parent["stadiumEnemy" + i].darkDur <= 0 || Math.random() < 0.03)
            {
               if(Math.random() < 0.1 + _root.stadiumDifficulty * 0.3)
               {
                  _parent["stadiumEnemy" + i].toJump = true;
               }
            }
         }
      }
      else if(Math.abs(_X - _parent["stadiumEnemy" + i]._x) < _parent["stadiumEnemy" + i].power * 550 && _X - _parent["stadiumEnemy" + i]._x * _parent["stadiumEnemy" + i].dir > 0 && Math.random() < 0.95)
      {
         if(_parent["stadiumEnemy" + i].darkDur <= 0 || Math.random() < 0.025)
         {
            _parent["stadiumEnemy" + i].toJump = true;
         }
      }
      i++;
   }
};
