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
   timeLeft = 430;
   if(_root.save.arenaHardcore == true)
   {
      timeLeft += 120;
   }
   if(_root.worstMoon == true)
   {
      timeLeft += 220;
   }
   if(_root.apocalypse == true)
   {
      timeLeft += 190;
   }
   if(_root.raidDiff == 1)
   {
      timeLeft -= 60;
   }
   if(_root.raidDiff == 3)
   {
      timeLeft += 840;
   }
   pars = [0,60,150,240,300,360,420,480,540,600,660,780,960,1200,1320,1440,1800,9999];
}


