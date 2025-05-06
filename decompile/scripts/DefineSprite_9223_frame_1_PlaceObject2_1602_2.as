//! status=pending
on(release){
   if(_root.save.coin >= _parent.reviveCost && _root.save.deadPetName != "")
   {
      _root.save.coin -= _parent.reviveCost;
      _root.save.petName = _root.save.deadPetName;
      _root.save.petExist = 1;
      _root.save.petFullness = 10;
      _root.save.petHealth = 1;
      _root.save.petMana = 0;
      _root.save.petStat[1] = _root.save.deadPetStat[1];
      _root.save.petStat[2] = _root.save.deadPetStat[2];
      _root.save.petStat[3] = _root.save.deadPetStat[3];
      _root.save.petStat[4] = _root.save.deadPetStat[4];
      _root.save.petStat[5] = _root.save.deadPetStat[5];
      _root.save.petStat[6] = _root.save.deadPetStat[6];
      _root.save.petStat[7] = _root.save.deadPetStat[7];
      _root.save.petStat[8] = _root.save.deadPetStat[8];
      _parent._parent.gotoAndStop(14);
   }
}


