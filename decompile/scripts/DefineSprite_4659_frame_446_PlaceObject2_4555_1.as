//! status=pending
onClipEvent(enterFrame){
   if(_root.house.arena._currentframe == 1)
   {
      del += 1;
      if(del >= 30)
      {
         curRot += rotDirection;
      }
      if(del >= 40)
      {
         del = 0;
         if(_root.save.arenaSkillMax[59] >= 50)
         {
            del = 10;
         }
      }
      if(curRot > 75)
      {
         curRot = 75;
         rotDirection = -15;
         damageToTake += 50000;
      }
      if(curRot < -75)
      {
         curRot = -75;
         rotDirection = 15;
      }
      if(curRot == 45)
      {
         _root.house.arena.takeDamage(damageToTake,"Cannot Dodge");
      }
      realRot += (curRot - realRot) / 5;
      _rotation = realRot;
   }
}


onClipEvent(load){
   curRot = 75;
   rotDirection = 15;
   realRot = 0;
   damageToTake = 2000000 + _root.save.arenaSkillMax[59] * 200000;
   if(_root.save.arenaSkillMax[59] >= 50)
   {
      damageToTake *= 3;
   }
   del = 0;
}


