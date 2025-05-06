//! status=pending
on(release){
   skillLoadArray = _parent.skillCodeInput.split(",");
   errorText = "";
   validSoFar = 2;
   skillPointNeeded = 0;
   if(skillLoadArray.length == 67)
   {
      i = 0;
      while(i <= 66)
      {
         if(isNaN(skillLoadArray[i]) || skillLoadArray[i] < 0 || Math.round(skillLoadArray[i]) != skillLoadArray[i])
         {
            validSoFar = 0;
            _root.showPopup("Error","Invalid code. Please check again.");
         }
         else
         {
            skillLoadArray[i] *= 1;
            if(skillLoadArray[i] > _root.save.arenaSkillMax[i])
            {
               skillLoadArray[i] = _root.save.arenaSkillMax[i];
               validSoFar = 1;
            }
            if(skillLoadArray[i] > 0 && _root.arenaSkillRankF[i] > _root.save.arenaLevel)
            {
               skillLoadArray[i] = 0;
               validSoFar = 1;
            }
            k = 1;
            while(k <= skillLoadArray[i])
            {
               if(k < 10)
               {
                  tmpNeed = k;
               }
               else
               {
                  tmpNeed = 10;
               }
               if(skillPointNeeded + tmpNeed <= _root.save.arenaLevel * 20 + _root.save.arenaUltimateSP * 10)
               {
                  skillPointNeeded += tmpNeed;
               }
               else
               {
                  skillLoadArray[i] = k - 1;
                  validSoFar = 1;
               }
               k++;
            }
         }
         i++;
      }
   }
   else
   {
      _root.showPopup("Error","Invalid code. Please check again.");
      validSoFar = 0;
   }
   if(validSoFar > 0)
   {
      _root.save.arenaTotalSkill = 0;
      _root.save.arenaTotalSP = skillPointNeeded * 1;
      _root.save.arenaSP = (_root.save.arenaLevel * 20 + _root.save.arenaUltimateSP * 10 - skillPointNeeded) * 1;
      i = 1;
      while(i <= 66)
      {
         _root.save.arenaTotalSkill += skillLoadArray[i] * 1;
         _root.save.arenaSkill[i] = skillLoadArray[i] * 1;
         i++;
      }
      _parent.gotoAndStop(10);
      if(validSoFar == 2)
      {
         _root.showPopup("Success","Skill build successfully loaded! Please check the results.");
      }
      else
      {
         _root.showPopup("Success","Skill build partially loaded! Some skills or skill levels are missing due to insufficient SP/Skill Books/Rank. Please check the results.");
      }
   }
}


