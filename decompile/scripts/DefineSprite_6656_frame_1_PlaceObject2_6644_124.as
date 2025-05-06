//! status=pending
onClipEvent(enterFrame){
   if((Key.isDown(_root.saveGlobal.keyBalLeft1) || Key.isDown(_root.saveGlobal.keyBalLeft2)) && holdingLeft == false)
   {
      holdingLeft = true;
      _parent.addBlock(1,curType);
      _parent.balanceFlash[1] = 300;
      reset();
   }
   if((Key.isDown(_root.saveGlobal.keyBalDown1) || Key.isDown(_root.saveGlobal.keyBalDown2)) && holdingDown == false)
   {
      holdingDown = true;
      _parent.addBlock(2,curType);
      _parent.balanceFlash[2] = 300;
      reset();
   }
   if((Key.isDown(_root.saveGlobal.keyBalRight1) || Key.isDown(_root.saveGlobal.keyBalRight2)) && holdingRight == false)
   {
      holdingRight = true;
      _parent.addBlock(3,curType);
      _parent.balanceFlash[3] = 300;
      reset();
   }
   if(!Key.isDown(_root.saveGlobal.keyBalLeft1) && !Key.isDown(_root.saveGlobal.keyBalLeft2))
   {
      holdingLeft = false;
   }
   if(!Key.isDown(_root.saveGlobal.keyBalDown1) && !Key.isDown(_root.saveGlobal.keyBalDown2))
   {
      holdingDown = false;
   }
   if(!Key.isDown(_root.saveGlobal.keyBalRight1) && !Key.isDown(_root.saveGlobal.keyBalRight2))
   {
      holdingRight = false;
   }
}


onClipEvent(load){
   function reset()
   {
      oldCurType = curType;
      curType = 1;
      if(Math.random() < 0.5)
      {
         curType = 2;
         if(Math.random() < 0.5)
         {
            curType = 3;
         }
      }
      if(_root.save.arcadeDifficulty[7] >= 3 && Math.random() < 0.1 && purpleChain <= 0)
      {
         purpleChain = 3;
      }
      if(purpleChain > 0 && Math.random() < 0.85)
      {
         purpleChain -= 1;
         curType = 4;
      }
      if(_root.save.arcadeDifficulty[7] == 1 && Math.random() < 0.3 && !isNaN(oldCurType))
      {
         curType = oldCurType;
      }
      gotoAndStop(curType);
      count -= 1;
      if(count < 25 && count < _root.arcadeBlock / 10 && purpleChain <= 0 && curType != 4)
      {
         gotoAndStop(5);
         count = 40;
         if(_root.save.rankedMode != true)
         {
            count = 40 + _root.save.unrankedPower[34];
         }
         if(_root.save.arcadeDifficulty[7] == 1)
         {
            count += 10;
         }
         if(_root.save.arcadeDifficulty[7] >= 3)
         {
            count -= 5;
         }
      }
   }
   count = 40;
   if(_root.save.rankedMode != true)
   {
      count = 40 + _root.save.unrankedPower[34];
   }
   purpleChain = 0;
   reset();
   holdingLeft = false;
   holdingDown = false;
   holdingRight = false;
}


