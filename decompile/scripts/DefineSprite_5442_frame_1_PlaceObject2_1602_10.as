//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "Click to drop this skill\'s level by 1 and gain all the SP spent back.\n\nYou can hold Space while clicking to drop skill level by 5 per click, or hold Ctrl + Space while clicking to drop skill level as much as possible.\n\nAlternatively, you can Shift + Click the skill icon.";
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
      i++;
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


