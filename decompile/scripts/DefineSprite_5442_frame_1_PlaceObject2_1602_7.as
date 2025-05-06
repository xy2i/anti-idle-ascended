//! status=pending
on(dragOver,rollOver){
   spCost = _root.save.arenaSkill[_parent.skillID] + 1;
   if(spCost > 10)
   {
      spCost = 10;
   }
   _root.actiondescription = "Click to raise this skill\'s level by 1.\nSP Cost: " + spCost + "\n\nYou can hold Space while clicking to raise skill level by 5 per click, or hold Ctrl + Space while clicking to raise skill level as much as possible.\n\nAlternatively, you can click the skill icon.";
}


on(release){
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
         _root.save.arenaTotalSkill += 1;
         _root.save.arenaTotalSP += spCost;
         _root.save.arenaSkill[_parent.skillID] += 1;
      }
      _parent.checkDesc();
      spCost = _root.save.arenaSkill[_parent.skillID] + 1;
      if(spCost > 10)
      {
         spCost = 10;
      }
      _root.actiondescription = "Click to raise this skill\'s level by 1.\nSP Cost: " + spCost + "\n\nYou can hold Space while clicking to raise skill level by 5 per click, or hold Ctrl + Space while clicking to raise skill level as much as possible.\n\nAlternatively, you can click the skill icon.";
      i++;
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


