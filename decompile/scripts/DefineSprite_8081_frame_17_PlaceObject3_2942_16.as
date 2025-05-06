//! status=pending
on(release){
   if(_root.save.mysteryBox[boxID] > 0 && !isNaN(_root.save.mysteryBox[boxID]) && _parent.popScreen._currentframe == 1 && _root.optionsScreen._currentframe == 1)
   {
      _root.save.mysteryBox[boxID] -= 1;
      openBox();
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
      _root.save.mysteryBox[boxID] -= itr;
      while(itr > 0)
      {
         itr -= 1;
         openBox();
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
      if(Math.random() < 0.1)
      {
         rarity = 2;
         possibility = 2 + random(3);
         if(Math.random() < 0.01)
         {
            rarity = 3;
            possibility = 5;
         }
      }
      else
      {
         possibility = 1;
      }
      if(_root.save["mysteryBoxBan" + boxID][possibility] == true)
      {
         possibility = 0;
         rarity = 0;
      }
      if(possibility == 0)
      {
         if(_root.save.greenCoinOvercap < 300)
         {
            _root.save.greenCoin += 12000;
         }
         itemName = "12,000 Green Coins (refund)";
      }
      if(possibility == 1)
      {
         itemName = "Nothing";
      }
      else if(possibility == 2)
      {
         _root.save.mysteryBox[4] += 4;
         itemName = "4 Legendary Boxes";
      }
      else if(possibility == 3)
      {
         _root.save.mysteryBox[3] += 20;
         itemName = "20 Pixelated Mystery Boxes";
      }
      else if(possibility == 4)
      {
         if(_root.save.blueCoinOvercap < 300)
         {
            _root.save.blueCoin += 10000;
            _root.save.blueCoinSauce[41] += 10000;
            _root.save.blueCoinSauce[40] += 10000;
            _root.save.blueCoinTotal[41] += 10000;
            _root.save.blueCoinTotal[40] += 10000;
            _root.save.blueCoinGraph[7] += 10000;
            _root.save.blueCoinGraph2[7] += 10000;
         }
         itemName = "10,000 Blue Coins";
      }
      else if(possibility == 5)
      {
         _root.addArenaAccessory("Four-Leaf Clover",40,"Medal",3,0,0,0,"Drop Rate","Double Hit Chance",1,0,10,100,0,Infinity,true,true,true,false,4,4,4,"This is a four-leaf clover, but simply because Tukkun said it is. This is obviously the wrong way to pixelate something. Either way, it works and adds stats, so who cares?");
         itemName = "Four-Leaf Clover";
      }
      if(doFr < 300)
      {
         if(possibility > 1)
         {
            _root.dispNews(124 + rarity,"Gained: " + itemName + "!");
         }
         else
         {
            _root.dispNews(124,"The box contained nothing. FFFFFFFUUUUUUUU-");
         }
      }
      if(isNaN(_root.save["mysteryBoxCollect" + boxID][possibility]))
      {
         _root.save["mysteryBoxCollect" + boxID][possibility] = 0;
      }
      _root.save["mysteryBoxCollect" + boxID][possibility] += 1;
   }
   boxID = 2;
   doFr = 0;
}


