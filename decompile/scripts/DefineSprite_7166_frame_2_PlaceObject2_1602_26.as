//! status=pending
on(release){
   if(_root.save.lolCooldown <= 0)
   {
      i = 1;
      while(i <= 10)
      {
         _root.save.lolDemand[i] -= 5 + random(3 + i);
         if(_root.save.careerLevel[9] >= 200)
         {
            if(_root.save.lolGems[i] >= Math.ceil(_root.save.lolCapacity / 2))
            {
               _root.save.lolDemand[i] += 4;
            }
            else if(_root.save.lolGems[i] < Math.ceil(_root.save.lolCapacity / 2))
            {
               _root.save.lolDemand[i] -= 6;
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


