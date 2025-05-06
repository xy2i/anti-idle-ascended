//! status=pending
if(_root.house.arena._currentframe != 1)
{
   stop();
}
if(isNaN(damageToTake))
{
   damageToTake = 750000 + _root.save.arenaSkillMax[60] * 75000;
   if(_root.save.arenaSkillMax[60] >= 50)
   {
      damageToTake *= 3;
   }
}
damageToTake += 25000;
