//! status=pending
function getLoot()
{
   if(_root.save.questType == "Loot")
   {
      if(_root.save.questSubtype == "Any" || _root.save.questSubtype == "Coin")
      {
         _root.save.questCount += 1;
      }
   }
   var _loc2_ = 1;
   while(_loc2_ <= _root.todayEvent)
   {
      yy = _root.clock_year % 10;
      mm = _root.clock_month;
      dd = _root.clock_date;
      if(_root.eventList[yy][mm][dd][_loc2_] == "2x Coin from loot drops in Battle Arena")
      {
         lootValue *= 2;
      }
      _loc2_ = _loc2_ + 1;
   }
   amntToGain = lootValue;
   _root.gainCoin(amntToGain);
   _root.house.arena.showDamage("Coin +" + _root.withComma(amntToGain),16776960,_X,_Y - 20);
}
leftChance = 0.3;
magneticChance = 1;
_X = x;
_Y = y - 50;
xVel = Math.random() * 2;
if(Math.random() < leftChance)
{
   xVel = (- Math.random()) * 2;
}
magnetic = false;
if(_root.lootMagnet == true && Math.random() < magneticChance)
{
   magnetic = true;
}
if(_root.save.bouncyLoot == false)
{
   if(magnetic == true)
   {
      _X = 80;
   }
   else if(_root.save.activityLoot == true && (_root.cursoridle < 5 || _root.arenaBot > 0 && _root.arenaBot < 2400))
   {
      _X = 80;
   }
   else if(x > 85)
   {
      _X = x + xVel * 100;
   }
   else
   {
      _X = x;
   }
   _Y = y;
}
yVel = -5;
xalpha = 250;
del = 0;
onEnterFrame = function()
{
   del += 1;
   if(del >= 2)
   {
      del = 0;
      if(_Y > 0)
      {
         xVel *= 0.98;
         if(_root.save.activityLoot == true && (_root.cursoridle < 5 || _root.arenaBot > 0 && _root.arenaBot < 2400))
         {
            xVel -= 1;
            if(_root.save.bouncyLoot == false)
            {
               _X = 80;
            }
         }
      }
      yVel += 1;
      if(_Y > 150 && yVel > 0)
      {
         yVel *= -0.6;
      }
      if(_root.save.bouncyLoot != false)
      {
         if(magnetic == true)
         {
            xVel -= 1;
         }
         if(_Y > 0)
         {
            _X += xVel;
         }
         _Y += yVel;
      }
      if(_X > 500)
      {
         _X = 500;
      }
      if(xalpha > 0)
      {
         xalpha -= 100 / _root.fps;
         if(_X < 85 || _xmouse >= -25 && _xmouse <= 25 && _ymouse >= -50 && _ymouse <= 5 && _root.cursoridle < 60)
         {
            _root.save.arenaLoot += 1;
            getLoot();
            onEnterFrame = null;
            unloadMovie(this);
            this.removeMovieClip();
         }
      }
      else
      {
         onEnterFrame = null;
         unloadMovie(this);
         this.removeMovieClip();
      }
      if(_root._quality == "HIGH" || _root._quality == "BEST")
      {
         _alpha = xalpha;
      }
   }
};
