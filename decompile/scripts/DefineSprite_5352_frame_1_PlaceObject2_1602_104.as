//! status=pending
on(dragOver,rollOver){
   updateStat();
   _root.actiondescription = "Increase base Attack Power by 500\nCost: <font color=\'#FFFF00\'>" + _root.withComma(cost) + "</font> Pixels";
}


on(release){
   if(_root.save.arenaPixel >= cost)
   {
      _root.save.arenaPixel -= cost;
      _root.save.arenaAttack += 500;
      updateStat();
      _root.actiondescription = "Increase base Attack Power by 500\nCost: <font color=\'#FFFF00\'>" + _root.withComma(cost) + "</font> Pixels";
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(load){
   function updateStat()
   {
      cost = Math.floor(Math.pow(_root.save.arenaAttack,1.3) * 0.1) * 400;
      if(_root.save.arenaAttack >= 65000 || _root.save.bannedB >= 1)
      {
         cost = Infinity;
      }
      if(_root.save.arenaAttack < 200)
      {
         cost = Math.floor(cost * 0.5);
      }
      if(_root.save.arenaPixel >= cost)
      {
         _alpha = 100;
      }
      else
      {
         _alpha = 30;
      }
   }
   updateStat();
}


