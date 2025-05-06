//! status=pending
on(release){
   if(_root.save.mysteryBox[boxID] > 0 && !isNaN(_root.save.mysteryBox[boxID]) && _root.save.progBoxNext <= 600 && _parent.popScreen._currentframe == 1 && _root.optionsScreen._currentframe == 1 && _root.save.progBoxToday < progBoxLimit)
   {
      _root.save.mysteryBox[boxID] -= 1;
      openBox();
      _root.save.progBoxToday += 1;
      if(_root.save.gDifficulty == 3 && _root.save.level < 8999)
      {
         _root.save.progBoxAsc += 1;
         if(_root.save.progBoxAsc >= 500)
         {
            _root.save.progBoxNext += 2;
         }
         if(_root.save.progBoxAsc >= 2500)
         {
            _root.save.progBoxNext += 10;
         }
         if(_root.save.progBoxAsc >= 10000)
         {
            _root.save.progBoxNext += 60;
         }
      }
   }
   if(_root.save.progBoxToday >= progBoxLimit)
   {
      _root.showPopup("Daily Limit Reached","You can only open 1,000,000 Progress Boxes per day. This limit cannot be bypassed with Day Skip.");
   }
}


onClipEvent(enterFrame){
   if(Key.isDown(16) && this.hitTest(_root.cursor._x,_root.cursor._y,true) && _parent.popScreen._currentframe == 1 && _root.optionsScreen._currentframe == 1)
   {
      doFr += 1;
      if(Key.isDown(17))
      {
         doFr = 1;
      }
      itr = 1;
      if(doFr >= 101)
      {
         itr = 5;
      }
      if(doFr >= 301)
      {
         itr = 25;
         if(doFr == 301)
         {
            _root.dispNews(1,"Rewards are not displayed to reduce lag.");
            _root.dispNews(1,"Opening boxes at high speed.");
         }
      }
      if(itr > _root.save.mysteryBox[boxID])
      {
         itr = _root.save.mysteryBox[boxID];
      }
      if(isNaN(_root.save.mysteryBox[boxID]))
      {
         itr = 0;
      }
      while(itr > 0)
      {
         itr -= 1;
         if(_root.save.mysteryBox[boxID] > 0 && !isNaN(_root.save.mysteryBox[boxID]) && _root.save.progBoxNext <= 600 && _parent.popScreen._currentframe == 1 && _root.optionsScreen._currentframe == 1 && _root.save.progBoxToday < progBoxLimit)
         {
            _root.save.mysteryBox[boxID] -= 1;
            openBox();
            _root.save.progBoxToday += 1;
            if(_root.save.gDifficulty == 3 && _root.save.level < 8999)
            {
               _root.save.progBoxAsc += 1;
               if(_root.save.progBoxAsc >= 500)
               {
                  _root.save.progBoxNext += 2;
               }
               if(_root.save.progBoxAsc >= 2500)
               {
                  _root.save.progBoxNext += 10;
               }
               if(_root.save.progBoxAsc >= 10000)
               {
                  _root.save.progBoxNext += 60;
               }
            }
         }
         if(_root.save.progBoxToday >= progBoxLimit)
         {
            _root.showPopup("Daily Limit Reached","You can only open 1,000,000 Progress Boxes per day. This limit cannot be bypassed with Day Skip.");
         }
      }
   }
   else
   {
      doFr = 0;
   }
}


onClipEvent(load){
   function openBox()
   {
      _root.save.progBoxCount += 1;
      if(_root.save.progBoxCount >= 2500)
      {
         _root.save.progBoxCount = 0;
         _root.save.megaBoostPotion += 1;
         _root.dispNews(183,"You have gained 1 Mega Boost Potion!");
      }
      if(Math.random() < 0.001)
      {
         possibility = 1;
         rarity = 3;
      }
      else if(Math.random() < 0.003)
      {
         possibility = 2;
         rarity = 2;
      }
      else if(Math.random() < 0.006)
      {
         possibility = 3;
         rarity = 2;
      }
      else if(Math.random() < 0.02)
      {
         possibility = 4;
         rarity = 1;
      }
      else if(Math.random() < 0.05)
      {
         possibility = 5;
         rarity = 1;
      }
      else if(Math.random() < 0.1)
      {
         possibility = 6;
         rarity = 1;
      }
      else
      {
         possibility = 7;
         rarity = 1;
      }
      if(_root.save["mysteryBoxBan" + boxID][possibility] == true)
      {
         possibility = 0;
         rarity = 0;
      }
      if(possibility == 0)
      {
         _root.save.greenCoin += 3000;
         itemName = "3,000 Green Coins (refund)";
      }
      if(possibility == 1)
      {
         _root.progPercent += 500000;
         itemName = "5,000 Insta-Progress";
      }
      if(possibility == 2)
      {
         _root.progPercent += 75000;
         itemName = "750 Insta-Progress";
      }
      if(possibility == 3)
      {
         _root.progPercent += 25000;
         itemName = "250 Insta-Progress";
      }
      if(possibility == 4)
      {
         _root.progPercent += 10000;
         itemName = "100 Insta-Progress";
      }
      if(possibility == 5)
      {
         _root.progPercent += 5000;
         itemName = "50 Insta-Progress";
      }
      if(possibility == 6)
      {
         _root.progPercent += 2500;
         itemName = "25 Insta-Progress";
      }
      if(possibility == 7)
      {
         _root.progPercent += 1000;
         itemName = "10 Insta-Progress";
      }
      if(doFr < 300)
      {
         _root.dispNews(124 + rarity,"Gained: " + itemName + "!");
      }
      if(isNaN(_root.save["mysteryBoxCollect" + boxID][possibility]))
      {
         _root.save["mysteryBoxCollect" + boxID][possibility] = 0;
      }
      _root.save["mysteryBoxCollect" + boxID][possibility] += 1;
   }
   progBoxLimit = 1000000;
   boxID = 5;
   doFr = 0;
}


