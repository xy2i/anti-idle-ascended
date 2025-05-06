//! status=pending
onClipEvent(enterFrame){
   _root.raidTimeLeft = timeLeft;
   if(_root.house.arena.enemy.enemyID == 0)
   {
      timeLeft -= 1 / _root.fps;
   }
   else
   {
      timeLeft -= 0.025;
   }
   if(timeLeft > 0)
   {
      i = 0;
      while(i <= pars.length - 1)
      {
         if(timeLeft > pars[i])
         {
            _root.raidBonus = i;
            parLeft = timeLeft - pars[i];
            parThis = pars[i + 1] - pars[i];
         }
         i++;
      }
   }
   else
   {
      _root.raidBonus = 0;
      parLeft = 0;
      parThis = 9001;
   }
   scoreText.text = "Par Time: " + _root.convertSec(parLeft);
   bonusText.text = "+" + _root.raidBonus + " Bonus";
}


onClipEvent(load){
   timeLeft = 610;
   if(_root.save.arenaHardcore == true)
   {
      timeLeft += 45;
   }
   if(_root.worstMoon == true)
   {
      timeLeft += 75;
   }
   if(_root.apocalypse == true)
   {
      timeLeft += 20;
   }
   if(_root.raidDiff == 3)
   {
      timeLeft += 200;
   }
   pars = [0,120,240,360,420,480,540,600,630,660,680,700,800,850,880,900,950,9999];
}


