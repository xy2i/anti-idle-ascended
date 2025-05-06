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
   scoreText.text = "Score: " + _root.withComma(_root.raidDamage);
   bonusText.text = "+" + _root.raidBonus + " Bonus";
}


onClipEvent(load){
   _root.raidDamage = 0;
   _root.raidBonus = 0;
   pars = [0,4000000000,8000000000,12000000000,16000000000,20000000000,24000000000,28000000000,32000000000,36000000000,40000000000,Infinity];
}


