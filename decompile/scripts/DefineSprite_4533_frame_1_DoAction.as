//! status=pending
stop();
if(isNaN(damageToTake))
{
   damageToTake = 2000000 + _root.save.arenaSkillMax[56] * 200000;
   if(_root.save.arenaSkillMax[56] >= 50)
   {
      damageToTake *= 3;
   }
}
damageToTake += 200000;
