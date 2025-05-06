//! status=pending
onClipEvent(enterFrame){
   loc = new Array();
   prior = new Array();
   if(_parent.monsterBalanceCooldown <= 0)
   {
      i = 1;
      while(i <= 3)
      {
         loc[i] = 7 - _parent.balanceBlock[i];
         prior[i] = 2000 - _parent.balanceLoc[i] + loc[i] * 100;
         if(_currentframe != 4)
         {
            if(_parent.balanceBar[i][loc[i] + 1] == curType)
            {
               prior[i] += 200 * (7 - loc[i]) + 300;
               if(_parent.balanceBar[i][loc[i] + 2] == curType)
               {
                  prior[i] += 400;
               }
            }
            if(loc[i] < 3 && _parent.balanceBar[i][loc[i] + 1] != curType)
            {
               prior[i] -= 1000;
            }
         }
         i++;
      }
      cur = 0;
      maxPrior = 0;
      i = 1;
      while(i <= 3)
      {
         if(prior[i] > maxPrior)
         {
            cur = i;
            maxPrior = prior[i];
         }
         i++;
      }
      if(cur != 0)
      {
         _parent.addBlock(cur,curType);
         _parent.balanceFlash[cur] = 300;
         reset();
         _parent.monsterBalanceCooldown = 0.4 + Math.random() * 0.2;
      }
   }
}


onClipEvent(load){
   function reset()
   {
      curType = 1;
      if(Math.random() < 0.5)
      {
         curType = 2;
         if(Math.random() < 0.5)
         {
            curType = 3;
         }
      }
      gotoAndStop(curType);
      count -= 1;
      if(count < 25 && count < _root.arcadeBlock / 10)
      {
         gotoAndStop(4);
         count = 40;
      }
   }
   count = 40;
   reset();
   holdingLeft = false;
   holdingDown = false;
   holdingRight = false;
}


