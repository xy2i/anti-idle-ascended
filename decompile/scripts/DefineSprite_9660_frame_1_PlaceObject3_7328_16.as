//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "<b>" + skillName + "</b>\nLevel: <b>" + skillLevel + "</b> / " + maxLevel + "\nWhen you claim a reward, <b><font color=\'#99FF00\'>" + skillLevel + "%</font></b> chance to " + skillDesc;
   if(skillLevel < maxLevel)
   {
      _root.actiondescription += "\n\nUpgrade Cost: <b>" + _root.withComma(skillCost) + "</b> Coins\n(+1% activation chance)";
   }
}


on(release){
   if(_root.save.epicSkill[ID] < maxLevel && _root.save.coin >= skillCost)
   {
      _root.save.coin -= skillCost;
      _root.save.epicSkill[ID] += 1;
      _root.totalEpicSkill += 1;
      skillLevel = _root.save.epicSkill[ID];
      calcSkillCost();
      disp.text = skillLevel;
      _root.actiondescription = "<b>" + skillName + "</b>\nLevel: <b>" + skillLevel + "</b> / " + maxLevel + "\nWhen you claim a reward, <b><font color=\'#99FF00\'>" + skillLevel + "%</font></b> chance to " + skillDesc;
      if(skillLevel < maxLevel)
      {
         _root.actiondescription += "\n\nUpgrade Cost: <b>" + _root.withComma(skillCost) + "</b> Coins\n(+1% activation chance)";
      }
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(enterFrame){
   skillLevel = _root.save.epicSkill[ID];
   calcSkillCost();
   disp.text = skillLevel;
}


onClipEvent(load){
   function calcSkillCost()
   {
      skillCost = baseCost * (_root.save.epicSkill[ID] + 1);
      if(_root.save.epicSkill[ID] >= baseMaxLevel)
      {
         skillCost *= 10;
      }
   }
   ID = 6;
   maxLevel = 10;
   baseMaxLevel = maxLevel;
   baseCost = 500000000;
   if(_root.save.permaBanPenalty[3] == 3)
   {
      maxLevel += 5;
   }
   else if(_root.save.permaBanPenalty[3] == 2)
   {
      maxLevel += 3;
   }
   else if(_root.save.permaBanPenalty[3] == 1)
   {
      maxLevel += 2;
   }
   skillName = "Module Master";
   skillDesc = "make the leftmost equipped Progress Bar Module twice as likely to activate.";
}


