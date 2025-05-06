//! status=pending
stop();
if(_root.save.deadPetName == "")
{
   gotoAndStop(2);
}
else
{
   deadPetTotalStat = 0;
   i = 1;
   while(i <= 8)
   {
      deadPetTotalStat += _root.save.deadPetStat[i];
      i++;
   }
   reviveCost = 500000000 + Math.floor(Math.pow(deadPetTotalStat,1.5)) * 1000000;
   if(reviveCost > 10000000000)
   {
      reviveCost = 10000000000;
   }
   t1.text = "You have a dead pet (" + _root.save.deadPetName + ", Lv. " + Math.floor(deadPetTotalStat / 8) + "). You can revive it by paying a rather \'small\' fee. Also, do note that if you buy a new pet, this one will be gone forever.";
   t2.text = "Revive your pet for " + _root.withComma(reviveCost) + " Coins";
}
