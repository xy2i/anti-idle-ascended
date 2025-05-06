//! status=pending
function checkDescInside()
{
   skillMaxF = _root.arenaSkillMaxF[skillID];
   skillMaxF2 = _root.arenaSkillMaxF[skillID];
   maxInc = -1;
   if(skillOffset != -1 && !isNaN(skillOffset) && skillMax >= skillMaxF && _root.save.arenaSkillBook >= 1240)
   {
      maxInc = Math.floor((_root.save.battlePoint - skillOffset * 1000) / 40000) + 1;
      if(maxInc > 25)
      {
         maxInc = 25;
      }
      if(maxInc < 0)
      {
         maxInc = 0;
      }
      _root.save.arenaSkillMax[skillID] = skillMaxF + maxInc;
      skillMax = skillMaxF + maxInc;
      if(_root.save.battlePoint >= 500)
      {
         skillMaxF2 += 25;
      }
   }
   if(_root.save.inventorySpirit[_root.save.arenaWeapon] == true)
   {
      skillIcon.gotoAndStop(skillID + 101);
   }
   else
   {
      skillIcon.gotoAndStop(skillID + 1);
   }
   skillNameText.text = skillName;
   skillLevelText.text = "Lv. " + skillLevel + " / " + skillMax;
   if(skillLevel >= skillMax && skillMax > skillMaxF)
   {
      skillLevelText.textColor = 6749952;
   }
   else if(skillLevel >= skillMaxF)
   {
      skillLevelText.textColor = 16738047;
   }
   else if(skillMax >= skillMaxF)
   {
      skillLevelText.textColor = 16776960;
   }
   else
   {
      skillLevelText.textColor = 6750207;
   }
   bar._xscale = skillLevel / skillMax * 100;
   if(skillLevel >= skillMax && skillMax > skillMaxF)
   {
      bar.gotoAndStop(4);
   }
   else if(skillLevel >= skillMaxF)
   {
      bar.gotoAndStop(3);
   }
   else if(skillLevel >= skillMax)
   {
      bar.gotoAndStop(2);
   }
   else
   {
      bar.gotoAndStop(1);
   }
}
stop();
checkDesc();
if(_root.save.arenaLevel < reqRank)
{
   gotoAndStop(2);
}
onEnterFrame = function()
{
   if(skillLevel != _root.save.arenaSkill[skillID])
   {
      checkDesc();
   }
};
