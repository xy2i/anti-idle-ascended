//! status=pending
onClipEvent(enterFrame){
   if(Key.isDown(38) && holdingup == 0)
   {
      holdingup = 1;
      if(chain == 0 || chain == 1)
      {
         chain += 1;
      }
      else
      {
         chain = 0;
      }
   }
   if(Key.isDown(40) && holdingdown == 0)
   {
      holdingdown = 1;
      if(chain == 2 || chain == 3)
      {
         chain += 1;
      }
      else
      {
         chain = 0;
      }
   }
   if(Key.isDown(37) && holdingleft == 0)
   {
      holdingleft = 1;
      if(chain == 4 || chain == 6)
      {
         chain += 1;
      }
      else
      {
         chain = 0;
      }
   }
   if(Key.isDown(39) && holdingright == 0)
   {
      holdingright = 1;
      if(chain == 5 || chain == 7)
      {
         chain += 1;
      }
      else
      {
         chain = 0;
      }
   }
   if(Key.isDown(66) && holdingb == 0)
   {
      holdingb = 1;
      if(chain == 8)
      {
         chain += 1;
      }
      else
      {
         chain = 0;
      }
   }
   if(Key.isDown(65) && holdinga == 0)
   {
      holdinga = 1;
      if(chain == 9)
      {
         chain = 10;
         if(_root.save.recentCheat != _root.save.level || _root.save.level >= 9001)
         {
            _root.save.recentCheat = _root.save.level;
            _root.gainBoost(10,2);
            if(_root.save.cheat != 1337)
            {
               _root.save.cheat = 1337;
            }
         }
      }
      else
      {
         chain = 0;
      }
   }
   if(!Key.isDown(38))
   {
      holdingup = 0;
   }
   if(!Key.isDown(40))
   {
      holdingdown = 0;
   }
   if(!Key.isDown(37))
   {
      holdingleft = 0;
   }
   if(!Key.isDown(39))
   {
      holdingright = 0;
   }
   if(!Key.isDown(66))
   {
      holdingb = 0;
   }
   if(!Key.isDown(65))
   {
      holdinga = 0;
   }
}


onClipEvent(load){
   chain = 0;
   holdingup = 0;
   holdingdown = 0;
   holdingleft = 0;
   holdingright = 0;
   holdingb = 0;
   holdinga = 0;
   count = 0;
}


