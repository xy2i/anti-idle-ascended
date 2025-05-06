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
      possibility = 1 + random(10);
      if(possibility == 1)
      {
         _root.save.eventToken += 5000;
         itemName = "5,000 Event Tokens";
      }
      else if(possibility == 2)
      {
         _root.save.eventToken += 2500;
         itemName = "2,500 Event Tokens";
      }
      else if(possibility == 3)
      {
         _root.save.eventToken += 1000;
         itemName = "1,000 Event Tokens";
      }
      else if(possibility == 4)
      {
         _root.save.shinyToken += 10;
         itemName = "10 Shiny Tokens";
      }
      else if(possibility == 5)
      {
         _root.save.shinyToken += 5;
         itemName = "5 Shiny Tokens";
      }
      else if(possibility == 6)
      {
         _root.save.gardenMegaFertilizer += 2;
         itemName = "2 Mega Fertilizers";
      }
      else if(possibility == 7)
      {
         _root.save.megaCareerPotion += 2;
         itemName = "2 Mega Career Potions";
      }
      else if(possibility == 8)
      {
         _root.save.awesomeRefill += 20;
         itemName = "20 Energy Refills";
      }
      else if(possibility == 9)
      {
         _root.save.ripoffCard[3] += 1;
         itemName = "1.5x Coin Card";
      }
      else if(possibility == 10)
      {
         _root.save.ripoffCard[1] += 1;
         itemName = "1.5x EXP Card";
      }
      if(doFr < 300)
      {
         _root.dispNews(165,"Gained: " + itemName + "!");
      }
      if(isNaN(_root.save["mysteryBoxCollect" + boxID][possibility]))
      {
         _root.save["mysteryBoxCollect" + boxID][possibility] = 0;
      }
      _root.save["mysteryBoxCollect" + boxID][possibility] += 1;
   }
   boxID = 6;
   doFr = 0;
}


