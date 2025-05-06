//! status=pending
on(dragOver,rollOver){
   focus = true;
   if(_alpha == 100)
   {
      _root.actiondescription = "<b>Open Box</b>\nCost: 1 Key";
   }
}


on(release){
   doThis();
}


on(rollOut,dragOut){
   focus = false;
   _root.actiondescription = "";
}


onClipEvent(enterFrame){
   if(_root.save.fishLeft[_parent.ID + 3] > 0 && _root.save.fishLeft[_parent.ID] > 0 && _parent.ID <= 3)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 30;
   }
   if(Key.isDown(16) && focus == true)
   {
      doThis();
   }
}


onClipEvent(load){
   function doThis()
   {
      if(_root.save.fishLeft[_parent.ID + 3] > 0 && _root.save.fishLeft[_parent.ID] > 0 && _parent.ID <= 3)
      {
         _root.save.fishLeft[_parent.ID] -= 1;
         _root.save.fishLeft[_parent.ID + 3] -= 1;
         if(_parent.ID == 1)
         {
            itemToGet = random(6) + 1;
            if(_root.save.fishLevel >= 30 && itemToGet == 3)
            {
               if(Math.random() < 0.4)
               {
                  itemToGet = random(2) + 1;
               }
               else
               {
                  itemToGet = random(3) + 4;
               }
            }
            if(itemToGet == 1)
            {
               _root.save.fishLeft[2] += 1;
               _root.save.fishFound[2] += 1;
               _root.accomplishPop.targetX = 10;
               _root.accomplishPop.count = 0;
               _root.accomplishPop.gotoAndStop(6);
               _root.accomplishPop.lolMessage.text = "You have gained 1 Silver Treasure Box!";
               _root.dispNews(119,"Gained: Silver Treasure Box!");
            }
            else if(itemToGet == 2)
            {
               _root.save.fishLeft[5] += 1;
               _root.save.fishFound[5] += 1;
               _root.accomplishPop.targetX = 10;
               _root.accomplishPop.count = 0;
               _root.accomplishPop.gotoAndStop(6);
               _root.accomplishPop.lolMessage.text = "You have gained 1 Silver Key!";
               _root.dispNews(119,"Gained: Silver Key!");
            }
            else if(itemToGet == 3)
            {
               _root.save.fishExp += 200;
               _root.accomplishPop.targetX = 10;
               _root.accomplishPop.count = 0;
               _root.accomplishPop.gotoAndStop(6);
               _root.accomplishPop.lolMessage.text = "You have gained 200 Fishing Mastery!";
               _root.dispNews(119,"Gained: 200 Fishing Mastery!");
            }
            else if(itemToGet == 4)
            {
               _root.save.fishFound[7] += 2;
               _root.save.fishLeft[7] += 2;
               _root.accomplishPop.targetX = 10;
               _root.accomplishPop.count = 0;
               _root.accomplishPop.gotoAndStop(6);
               _root.accomplishPop.lolMessage.text = "You have gained 2 Regular Energy Drink!";
               _root.dispNews(119,"Gained: 2 Regular Energy Drink!");
            }
            else if(itemToGet == 5)
            {
               _root.save.fishFound[9] += 2;
               _root.save.fishLeft[9] += 2;
               _root.accomplishPop.targetX = 10;
               _root.accomplishPop.count = 0;
               _root.accomplishPop.gotoAndStop(6);
               _root.accomplishPop.lolMessage.text = "You have gained 2 Regular Pet Food!";
               _root.dispNews(119,"Gained: 2 Regular Pet Food!");
            }
            else if(itemToGet == 6)
            {
               _root.gainBlueCoin(500);
               _root.accomplishPop.targetX = 10;
               _root.accomplishPop.count = 0;
               _root.accomplishPop.gotoAndStop(6);
               _root.accomplishPop.lolMessage.text = "You have gained 500 Blue Coins!";
               _root.dispNews(119,"Gained: 500 Blue Coins!");
            }
         }
         else if(_parent.ID == 2)
         {
            itemToGet = random(6) + 1;
            if(_root.save.fishLevel >= 30 && itemToGet == 3)
            {
               if(Math.random() < 0.4)
               {
                  itemToGet = random(2) + 1;
               }
               else
               {
                  itemToGet = random(3) + 4;
               }
            }
            if(itemToGet == 1)
            {
               _root.save.fishLeft[3] += 1;
               _root.save.fishFound[3] += 1;
               _root.accomplishPop.targetX = 10;
               _root.accomplishPop.count = 0;
               _root.accomplishPop.gotoAndStop(6);
               _root.accomplishPop.lolMessage.text = "You have gained 1 Golden Treasure Box!";
               _root.dispNews(119,"Gained: Golden Treasure Box!");
            }
            else if(itemToGet == 2)
            {
               _root.save.fishLeft[6] += 1;
               _root.save.fishFound[6] += 1;
               _root.accomplishPop.targetX = 10;
               _root.accomplishPop.count = 0;
               _root.accomplishPop.gotoAndStop(6);
               _root.accomplishPop.lolMessage.text = "You have gained 1 Golden Key!";
               _root.dispNews(119,"Gained: Golden Key!");
            }
            else if(itemToGet == 3)
            {
               _root.save.fishExp += 1000;
               _root.accomplishPop.targetX = 10;
               _root.accomplishPop.count = 0;
               _root.accomplishPop.gotoAndStop(6);
               _root.accomplishPop.lolMessage.text = "You have gained 1,000 Fishing Mastery!";
               _root.dispNews(119,"Gained: 1,000 Fishing Mastery!");
            }
            else if(itemToGet == 4)
            {
               _root.save.fishFound[7] += 5;
               _root.save.fishLeft[7] += 5;
               _root.accomplishPop.targetX = 10;
               _root.accomplishPop.count = 0;
               _root.accomplishPop.gotoAndStop(6);
               _root.accomplishPop.lolMessage.text = "You have gained 5 Regular Energy Drink!";
               _root.dispNews(119,"Gained: 5 Regular Energy Drink!");
            }
            else if(itemToGet == 5)
            {
               _root.save.fishFound[9] += 5;
               _root.save.fishLeft[9] += 5;
               _root.accomplishPop.targetX = 10;
               _root.accomplishPop.count = 0;
               _root.accomplishPop.gotoAndStop(6);
               _root.accomplishPop.lolMessage.text = "You have gained 5 Regular Pet Food!";
               _root.dispNews(119,"Gained: 5 Regular Pet Food!");
            }
            else if(itemToGet == 6)
            {
               _root.gainBlueCoin(2500);
               _root.accomplishPop.targetX = 10;
               _root.accomplishPop.count = 0;
               _root.accomplishPop.gotoAndStop(6);
               _root.accomplishPop.lolMessage.text = "You have gained 2,500 Blue Coins!";
               _root.dispNews(119,"Gained: 2,500 Blue Coins!");
            }
         }
         else if(_parent.ID == 3)
         {
            itemToGet = random(4) + 1;
            if(_root.save.fishLevel >= 30 && itemToGet == 1)
            {
               itemToGet = random(3) + 2;
            }
            if(_root.save.fishRodUnlock[3] != 1 && Math.random() < 0.05)
            {
               _root.save.fishRodUnlock[3] = 1;
               _root.accomplishPop.targetX = 10;
               _root.accomplishPop.count = 0;
               _root.accomplishPop.gotoAndStop(6);
               _root.accomplishPop.lolMessage.text = "You have gained Golden Fishing Rod!";
               _root.dispNews(119,"Gained: Golden Fishing Rod!");
            }
            else if(itemToGet == 1)
            {
               _root.save.fishExp += 4000;
               _root.accomplishPop.targetX = 10;
               _root.accomplishPop.count = 0;
               _root.accomplishPop.gotoAndStop(6);
               _root.accomplishPop.lolMessage.text = "You have gained 4,000 Fishing Mastery!";
               _root.dispNews(119,"Gained: 4,000 Fishing Mastery!");
            }
            else if(itemToGet == 2)
            {
               _root.save.fishFound[8] += 5;
               _root.save.fishLeft[8] += 5;
               _root.accomplishPop.targetX = 10;
               _root.accomplishPop.count = 0;
               _root.accomplishPop.gotoAndStop(6);
               _root.accomplishPop.lolMessage.text = "You have gained 5 Elite Energy Drink!";
               _root.dispNews(119,"Gained: 5 Elite Energy Drink!");
            }
            else if(itemToGet == 3)
            {
               _root.save.fishFound[10] += 5;
               _root.save.fishLeft[10] += 5;
               _root.accomplishPop.targetX = 10;
               _root.accomplishPop.count = 0;
               _root.accomplishPop.gotoAndStop(6);
               _root.accomplishPop.lolMessage.text = "You have gained 5 Elite Pet Food!";
               _root.dispNews(119,"Gained: 5 Elite Pet Food!");
            }
            else if(itemToGet == 4)
            {
               _root.gainBlueCoin(10000);
               _root.accomplishPop.targetX = 10;
               _root.accomplishPop.count = 0;
               _root.accomplishPop.gotoAndStop(6);
               _root.accomplishPop.lolMessage.text = "You have gained 10,000 Blue Coins!";
               _root.dispNews(119,"Gained: 10,000 Blue Coins!");
            }
         }
         _parent.checkStat();
      }
   }
   _alpha = 30;
   focus = false;
}


