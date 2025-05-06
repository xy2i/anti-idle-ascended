//! status=pending
if(_root.house.arena._currentframe != 1)
{
   stop();
}
if(isNaN(damageToTake))
{
   damageToTake = 2000000 + _root.save.arenaSkillMax[58] * 200000;
   if(_root.save.arenaSkillMax[58] >= 50)
   {
      damageToTake *= 3;
   }
}
damageToTake += 200000;
