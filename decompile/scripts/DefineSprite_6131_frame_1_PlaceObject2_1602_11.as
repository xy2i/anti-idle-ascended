//! status=pending
on(dragOver,rollOver){
   checkUpgrade();
   if(_root.save.unrankedPower[_parent.powID] < 5)
   {
      _root.actiondescription = "<b>Upgrade</b>\nThis upgrade will cost you <b>" + _root.withComma(cost) + "</b> Arcade 100k Medals.";
   }
   else
   {
      _root.actiondescription = "";
   }
}


on(release){
   checkUpgrade();
   if(_root.save.unrankedPower[_parent.powID] < 5 && _root.save.arcade100kMedal >= cost)
   {
      _root.save.unrankedPower[_parent.powID] += 1;
      _root.totalUnrankedPower = 0;
      i = 1;
      while(i <= 40)
      {
         _root.totalUnrankedPower += _root.save.unrankedPower[i];
         i++;
      }
      _root.save.arcade100kMedal -= cost;
      checkUpgrade();
      if(_root.save.unrankedPower[_parent.powID] < 5)
      {
         _root.actiondescription = "<b>Upgrade</b>\nThis upgrade will cost you <b>" + _root.withComma(cost) + "</b> Arcade 100k Medals.";
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
   function checkUpgrade()
   {
      cost = 0;
      if(_root.save.unrankedPower[_parent.powID] == 0)
      {
         cost = Math.floor(_parent.baseCost * 1);
      }
      if(_root.save.unrankedPower[_parent.powID] == 1)
      {
         cost = Math.floor(_parent.baseCost * 5);
      }
      if(_root.save.unrankedPower[_parent.powID] == 2)
      {
         cost = Math.floor(_parent.baseCost * 25);
      }
      if(_root.save.unrankedPower[_parent.powID] == 3)
      {
         cost = Math.floor(_parent.baseCost * 100);
      }
      if(_root.save.unrankedPower[_parent.powID] == 4)
      {
         cost = Math.floor(_parent.baseCost * 500);
      }
   }
}


