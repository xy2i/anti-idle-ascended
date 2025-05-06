//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "<font color=\'#FFFF00\'><b>" + _parent.skillName + "</b></font>";
   _root.actiondescription += "\nLevel: <b>" + _parent.skillLevel + " / " + _parent.skillMax + "</b>";
   if(_parent.skillMax < _parent.skillMaxF)
   {
      _root.actiondescription += "\n<font color=\'#9900FF\'>[Max: <b>" + _parent.skillMaxF + " with Skill Book]</b></font>";
   }
   else if(_parent.maxInc >= 0 && _parent.maxInc <= 24 && _root.save.battlePoint >= 500)
   {
      _root.actiondescription += "\n<font color=\'#CCFF66\'>[+1 Max Level at <b>" + _root.withComma(_parent.maxInc * 40000 + _parent.skillOffset * 1000) + "</b> BP]\nCurrent BP: <b>" + _root.withComma(_root.save.battlePoint) + "</b></font>";
   }
   _root.actiondescription += "\n__________\n" + _parent.skillDesc + "\n__________";
   if(_parent.skillLevel > 0 || _parent.skillID <= 5 || _parent.skillID == 54)
   {
      _root.actiondescription += "\n\n<font color=\'#FFCCCC\'>[Current Level: " + _parent.skillLevel + "]</font>\n" + _parent.rollDescA;
   }
   if(_parent.skillLevel < _parent.skillMaxF2)
   {
      _root.actiondescription += "\n\n<font color=\'#CCCCFF\'>[Next Level: " + (_parent.skillLevel + 1) + "]</font>\n" + _parent.rollDescB;
   }
}


on(release){
   if(Key.isDown(16))
   {
      maxI = 1;
      if(Key.isDown(32))
      {
         maxI = 5;
         if(Key.isDown(17))
         {
            maxI = 99;
         }
      }
      i = 1;
      while(i <= maxI)
      {
         spCost = _root.save.arenaSkill[_parent.skillID];
         if(spCost > 10)
         {
            spCost = 10;
         }
         if(_root.save.arenaPixel >= _root.resetCost && _root.save.arenaSkill[_parent.skillID] > 0)
         {
            _root.save.arenaPixel -= _root.resetCost;
            _root.save.arenaTotalSkill -= 1;
            _root.save.arenaSP += spCost;
            _root.save.arenaTotalSP -= spCost;
            _root.save.arenaSkill[_parent.skillID] -= 1;
         }
         _parent.checkDesc();
         _root.actiondescription = "<font color=\'#FFFF00\'><b>" + _parent.skillName + "</b></font>";
         _root.actiondescription += "\nLevel: <b>" + _parent.skillLevel + " / " + _parent.skillMax + "</b>";
         if(_parent.skillMax < _parent.skillMaxF)
         {
            _root.actiondescription += "\n<font color=\'#9900FF\'>[Max: <b>" + _parent.skillMaxF + " with Skill Book]</b></font>";
         }
         else if(_parent.maxInc >= 0 && _parent.maxInc <= 24 && _root.save.battlePoint >= 500)
         {
            _root.actiondescription += "\n<font color=\'#CCFF66\'>[+1 Max Level at <b>" + _root.withComma(_parent.maxInc * 40000 + _parent.skillOffset * 1000) + "</b> BP]\nCurrent BP: <b>" + _root.withComma(_root.save.battlePoint) + "</b></font>";
         }
         _root.actiondescription += "\n__________\n" + _parent.skillDesc + "\n__________";
         if(_parent.skillLevel > 0 || _parent.skillID <= 5 || _parent.skillID == 54)
         {
            _root.actiondescription += "\n\n<font color=\'#FFCCCC\'>[Current Level: " + _parent.skillLevel + "]</font>\n" + _parent.rollDescA;
         }
         if(_parent.skillLevel < _parent.skillMaxF2)
         {
            _root.actiondescription += "\n\n<font color=\'#CCCCFF\'>[Next Level: " + (_parent.skillLevel + 1) + "]</font>\n" + _parent.rollDescB;
         }
         i++;
      }
   }
   else
   {
      maxI = 1;
      if(Key.isDown(32))
      {
         maxI = 5;
         if(Key.isDown(17))
         {
            maxI = 99;
         }
      }
      i = 1;
      while(i <= maxI)
      {
         spCost = _root.save.arenaSkill[_parent.skillID] + 1;
         if(spCost > 10)
         {
            spCost = 10;
         }
         if(_root.save.arenaSP >= spCost && _root.save.arenaSkill[_parent.skillID] < _parent.skillMax)
         {
            _root.save.arenaSP -= spCost;
            _root.save.arenaTotalSP += spCost;
            _root.save.arenaTotalSkill += 1;
            _root.save.arenaSkill[_parent.skillID] += 1;
         }
         _parent.checkDesc();
         _root.actiondescription = "<font color=\'#FFFF00\'><b>" + _parent.skillName + "</b></font>";
         _root.actiondescription += "\nLevel: <b>" + _parent.skillLevel + " / " + _parent.skillMax + "</b>";
         if(_parent.skillMax < _parent.skillMaxF)
         {
            _root.actiondescription += "\n<font color=\'#9900FF\'>[Max: <b>" + _parent.skillMaxF + " with Skill Book]</b></font>";
         }
         else if(_parent.maxInc >= 0 && _parent.maxInc <= 24 && _root.save.battlePoint >= 500)
         {
            _root.actiondescription += "\n<font color=\'#CCFF66\'>[+1 Max Level at <b>" + _root.withComma(_parent.maxInc * 40000 + _parent.skillOffset * 1000) + "</b> BP]\nCurrent BP: <b>" + _root.withComma(_root.save.battlePoint) + "</b></font>";
         }
         _root.actiondescription += "\n__________\n" + _parent.skillDesc + "\n__________";
         if(_parent.skillLevel > 0)
         {
            _root.actiondescription += "\n\n<font color=\'#FFCCCC\'>[Current Level: " + _parent.skillLevel + "]</font>\n" + _parent.rollDescA;
         }
         if(_parent.skillLevel < _parent.skillMaxF2)
         {
            _root.actiondescription += "\n\n<font color=\'#CCCCFF\'>[Next Level: " + (_parent.skillLevel + 1) + "]</font>\n" + _parent.rollDescB;
         }
         i++;
      }
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


