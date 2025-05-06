//! status=pending
on(release){
   if(_root.save.lolCooldown <= 0)
   {
      i = 1;
      while(i <= 10)
      {
         if(Math.random() < 0.5)
         {
            _root.save.lolDemand[i] += 8 + random(11 + i);
         }
         else
         {
            _root.save.lolDemand[i] -= 8 + random(11 + i);
         }
         if(_root.save.lolGems[i] >= Math.ceil(_root.save.lolCapacity / 2))
         {
            _root.save.lolDemand[i] += 3;
         }
         else if(_root.save.lolGems[i] < Math.ceil(_root.save.lolCapacity / 2))
         {
            _root.save.lolDemand[i] -= 3;
         }
         if(_root.save.careerLevel[9] >= 200)
         {
            if(_root.save.lolGems[i] >= Math.ceil(_root.save.lolCapacity / 2))
            {
               _root.save.lolDemand[i] += 9;
            }
            else if(_root.save.lolGems[i] < Math.ceil(_root.save.lolCapacity / 2))
            {
               _root.save.lolDemand[i] -= 9;
            }
         }
         i++;
      }
      _root.save.lolCooldown = 420;
      if(_root.save.permaBanPenalty[5] == 3)
      {
         _root.save.lolCooldown = 120;
      }
      else if(_root.save.permaBanPenalty[5] == 2)
      {
         _root.save.lolCooldown = 240;
      }
      else if(_root.save.permaBanPenalty[5] == 1)
      {
         _root.save.lolCooldown = 300;
      }
   }
}


