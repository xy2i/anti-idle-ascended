//! status=pending
onClipEvent(enterFrame){
   del += 1;
   if(del == 10)
   {
      _root.raidDamage = 0;
   }
   parLeft = 0;
   parThis = 1;
   i = 0;
   while(i <= pars.length - 1)
   {
      if(_root.raidDamage >= pars[i])
      {
         _root.raidBonus = i;
         parLeft = _root.raidDamage - pars[i];
         parThis = pars[i + 1] - pars[i];
      }
      i++;
   }
   scoreText.text = "Damage: " + _root.withComma(_root.raidDamage);
   bonusText.text = "+" + _root.raidBonus + " Bonus";
}


onClipEvent(load){
   _root.raidDamage = 0;
   _root.raidBonus = 0;
   pars = [0,5000,25000,100000,500000,2500000,10000000,50000000,250000000,1000000000,5000000000,25000000000,100000000000,500000000000,2500000000000,10000000000000,Infinity];
}


