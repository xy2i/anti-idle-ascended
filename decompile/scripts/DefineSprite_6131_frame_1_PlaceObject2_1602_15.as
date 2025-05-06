//! status=pending
on(dragOver,rollOver){
   checkDowngrade();
   if(_root.save.unrankedPower[_parent.powID] > 0)
   {
      _root.actiondescription = "<b>Downgrade</b>\nYou will gain <b>" + _root.withComma(gainBack) + "</b> Arcade 100k Medals back if you downgrade this.";
   }
   else
   {
      _root.actiondescription = "";
   }
}


on(release){
   checkDowngrade();
   if(_root.save.unrankedPower[_parent.powID] > 0)
   {
      _root.save.unrankedPower[_parent.powID] -= 1;
      _root.totalUnrankedPower = 0;
      i = 1;
      while(i <= 40)
      {
         _root.totalUnrankedPower += _root.save.unrankedPower[i];
         i++;
      }
      _root.save.arcade100kMedal += gainBack;
      checkDowngrade();
      if(_root.save.unrankedPower[_parent.powID] > 0)
      {
         _root.actiondescription = "<b>Downgrade</b>\nYou will gain <b>" + _root.withComma(gainBack) + "</b> Arcade 100k Medals back if you downgrade this.";
      }
      else
      {
         _root.actiondescription = "";
      }
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(load){
   function checkDowngrade()
   {
      gainBack = 0;
      if(_root.save.unrankedPower[_parent.powID] == 1)
      {
         gainBack = Math.floor(_parent.baseCost * 0.8);
      }
      if(_root.save.unrankedPower[_parent.powID] == 2)
      {
         gainBack = Math.floor(_parent.baseCost * 4);
      }
      if(_root.save.unrankedPower[_parent.powID] == 3)
      {
         gainBack = Math.floor(_parent.baseCost * 20);
      }
      if(_root.save.unrankedPower[_parent.powID] == 4)
      {
         gainBack = Math.floor(_parent.baseCost * 80);
      }
      if(_root.save.unrankedPower[_parent.powID] == 5)
      {
         gainBack = Math.floor(_parent.baseCost * 400);
      }
   }
}


