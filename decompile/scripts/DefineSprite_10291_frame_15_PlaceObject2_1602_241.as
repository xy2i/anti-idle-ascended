//! status=pending
on(release){
   if(_root.save.coin >= 250000000 && _parent.petName != "")
   {
      _root.save.coin -= 250000000;
      _root.save.petName = _parent.petName;
      _root.save.petExist = 1;
      _root.save.petFullness = 50;
      _root.save.petHealth = 50;
      _root.save.petMana = 0;
      _root.save.petStat[1] = 1;
      _root.save.petStat[2] = 1;
      _root.save.petStat[3] = 1;
      _root.save.petStat[4] = 1;
      _root.save.petStat[5] = 1;
      _root.save.petStat[6] = 1;
      _root.save.petStat[7] = 1;
      _root.save.petStat[8] = 1;
      _parent.gotoAndStop(14);
   }
}


