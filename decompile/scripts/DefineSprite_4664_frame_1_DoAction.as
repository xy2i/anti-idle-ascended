//! status=pending
stop();
_xscale = 0;
if(isNaN(maxScale))
{
   maxScale = 100;
}
onEnterFrame = function()
{
   if(targetScale < 0)
   {
      targetScale = 0;
   }
   if(targetScale > maxScale)
   {
      targetScale = maxScale;
   }
   _xscale = _xscale + (targetScale - _xscale) / 5;
   if(_root.house.arena.enemy.enemyID != 0 && _root.house.arena.enemy.tankMode == true)
   {
      fr = 3;
   }
   else
   {
      fr = 2;
   }
   if(_currentframe != fr)
   {
      gotoAndStop(fr);
   }
};
