//! status=pending
on(dragOver,rollOver){
   checkUpgrade();
   showDesc();
}


on(release){
   checkUpgrade();
   if(_root.save.arenaEnhancerFragment >= fragCost && _root.save.arenaSuperiorCraft >= scmCost && _root.save.arenaUnobtainium >= unobCost)
   {
      _root.save.arenaEnhancerFragment -= fragCost;
      _root.save.arenaSuperiorCraft -= scmCost;
      _root.save.arenaUnobtainium -= unobCost;
      _root.save.arenaRuneLevel[runeID] += 1;
   }
   checkUpgrade();
   showDesc();
   _parent.checkRuneLevel();
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(enterFrame){
   del += 1;
   if(del >= 40)
   {
      del = 0;
      checkUpgrade();
   }
}


onClipEvent(load){
   function checkUpgrade()
   {
      runeLevel = _root.save.arenaRuneLevel[runeID];
      if(runeLevel < 100)
      {
         fragCost = (runeLevel + 1) * (runeLevel + 1) * 1000 - 1;
         scmCost = (runeLevel + 1) * (runeLevel + 1) * 10;
         unobCost = (runeLevel + 1) * (runeLevel + 1) * 5;
         if(runeLevel >= 50)
         {
            scmCost *= 2;
            unobCost *= 2;
         }
         if(runeLevel % 10 == 9)
         {
            scmCost *= 5;
            unobCost *= 5;
         }
      }
      else
      {
         fragCost = Infinity;
         scmCost = Infinity;
         unobCost = Infinity;
      }
      if(_root.save.arenaEnhancerFragment >= fragCost && _root.save.arenaSuperiorCraft >= scmCost && _root.save.arenaUnobtainium >= unobCost)
      {
         _alpha = 100;
      }
      else
      {
         _alpha = 30;
      }
   }
   function showDesc()
   {
      _root.actiondescription = "<font color=\'#FFFF00\'><b>" + runeName + "</b></font>";
      _root.actiondescription += "\nLevel: <b>" + runeLevel + " / 100</b>";
      if(runeLevel < 100)
      {
         _root.actiondescription += "\n\nUpgrade cost (Owned / Required):";
         _root.actiondescription += "\n\nEnhancer Fragment";
         if(_root.save.arenaEnhancerFragment >= fragCost)
         {
            _root.actiondescription += "\n<b><font color=\'#99FF33\'>" + _root.withComma(_root.save.arenaEnhancerFragment) + "</font> / " + _root.withComma(fragCost) + "</b>";
         }
         else
         {
            _root.actiondescription += "\n<b><font color=\'#FF3333\'>" + _root.withComma(_root.save.arenaEnhancerFragment) + "</font> / " + _root.withComma(fragCost) + "</b>";
         }
         _root.actiondescription += "\n\nSuperior Crafting Material";
         if(_root.save.arenaSuperiorCraft >= scmCost)
         {
            _root.actiondescription += "\n<b><font color=\'#99FF33\'>" + _root.withComma(_root.save.arenaSuperiorCraft) + "</font> / " + _root.withComma(scmCost) + "</b>";
         }
         else
         {
            _root.actiondescription += "\n<b><font color=\'#FF3333\'>" + _root.withComma(_root.save.arenaSuperiorCraft) + "</font> / " + _root.withComma(scmCost) + "</b>";
         }
         _root.actiondescription += "\n\nUnobtainium";
         if(_root.save.arenaUnobtainium >= unobCost)
         {
            _root.actiondescription += "\n<b><font color=\'#99FF33\'>" + _root.withComma(_root.save.arenaUnobtainium) + "</font> / " + _root.withComma(unobCost) + "</b>";
         }
         else
         {
            _root.actiondescription += "\n<b><font color=\'#FF3333\'>" + _root.withComma(_root.save.arenaUnobtainium) + "</font> / " + _root.withComma(unobCost) + "</b>";
         }
      }
      else
      {
         _root.actiondescription += "\n\nThis Rune cannot be further upgraded.";
      }
   }
   del = 0;
   runeID = 6;
   runeName = "Rune of Greed";
   checkUpgrade();
}


