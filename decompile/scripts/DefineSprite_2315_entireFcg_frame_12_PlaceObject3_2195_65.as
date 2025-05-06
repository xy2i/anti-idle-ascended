//! status=pending
on(release){
   if(_root.save.fcgCash >= _root.save.fcgPack4Cost)
   {
      _root.save.fcgCash -= _root.save.fcgPack4Cost;
      cardtowin = random(_parent.maxcard) + 1;
      if(_root.save.fcgPack4 == 1)
      {
         k = 1;
         while(k <= 50)
         {
            if(cardtowin / 2 == Math.floor(cardtowin / 2) || _root.cardList[cardtowin].upgraded != 0)
            {
               cardtowin = random(_parent.maxcard) + 1;
            }
            k++;
         }
      }
      if(_root.save.fcgPack4 == 3)
      {
         k = 1;
         while(k <= 50)
         {
            if(cardtowin / 2 == Math.floor(cardtowin / 2))
            {
               cardtowin = random(_parent.maxcard) + 1;
            }
            k++;
         }
      }
      if(_root.save.fcgPack4 == 4)
      {
         k = 1;
         while(k <= 50)
         {
            if(cardtowin / 2 != Math.floor(cardtowin / 2))
            {
               cardtowin = random(_parent.maxcard) + 1;
            }
            k++;
         }
      }
      if(_root.save.fcgPack4 == 5)
      {
         k = 1;
         while(k <= 50)
         {
            if(_root.cardList[cardtowin].upgraded < 2)
            {
               cardtowin = random(_parent.maxcard) + 1;
            }
            k++;
         }
      }
      if(_root.save.fcgPack4 == 6)
      {
         k = 1;
         while(k <= 50)
         {
            if(_root.cardList[cardtowin].cost != Infinity)
            {
               cardtowin = random(_parent.maxcard) + 1;
            }
            k++;
         }
      }
      if(_root.save.fcgPack4 == 7)
      {
         k = 1;
         while(k <= 50)
         {
            if(_root.cardList[cardtowin].type != "Monster")
            {
               cardtowin = random(_parent.maxcard) + 1;
            }
            k++;
         }
      }
      if(_root.save.fcgPack4 == 8)
      {
         k = 1;
         while(k <= 50)
         {
            if(_root.cardList[cardtowin].type == "Monster")
            {
               cardtowin = random(_parent.maxcard) + 1;
            }
            k++;
         }
      }
      if(_root.save.fcgPack4 == 9)
      {
         k = 1;
         while(k <= 50)
         {
            if(_root.cardList[cardtowin].quanta != 1)
            {
               cardtowin = random(_parent.maxcard) + 1;
            }
            k++;
         }
      }
      if(_root.save.fcgPack4 == 10)
      {
         k = 1;
         while(k <= 50)
         {
            if(_root.cardList[cardtowin].quanta != 2)
            {
               cardtowin = random(_parent.maxcard) + 1;
            }
            k++;
         }
      }
      if(_root.save.fcgPack4 == 11)
      {
         k = 1;
         while(k <= 50)
         {
            if(_root.cardList[cardtowin].quanta != 3)
            {
               cardtowin = random(_parent.maxcard) + 1;
            }
            k++;
         }
      }
      if(_root.save.fcgPack4 == 12)
      {
         k = 1;
         while(k <= 50)
         {
            if(_root.cardList[cardtowin].quanta != 4)
            {
               cardtowin = random(_parent.maxcard) + 1;
            }
            k++;
         }
      }
      if(_root.save.fcgPack4 == 13)
      {
         k = 1;
         while(k <= 50)
         {
            if(_root.cardList[cardtowin].quanta != 5)
            {
               cardtowin = random(_parent.maxcard) + 1;
            }
            k++;
         }
      }
      _root.save.fcgOwned[cardtowin] += 1;
      _root.cardspin = cardtowin;
      _parent.wonCard.gotoAndStop(2);
      reset();
   }
}


onClipEvent(load){
   function reset()
   {
      pack = 7 + random(2);
      if(pack == 1)
      {
         cost = 50;
      }
      if(pack == 2)
      {
         cost = 450 + random(3) * 150;
      }
      if(pack == 3)
      {
         cost = 75 + random(3) * 25;
      }
      if(pack == 4)
      {
         cost = 750 + random(3) * 250;
      }
      if(pack == 5)
      {
         cost = 4000 + random(3) * 1000;
      }
      if(pack == 6)
      {
         cost = 9001;
      }
      if(pack == 7)
      {
         cost = 450 + random(3) * 150;
      }
      if(pack == 8)
      {
         cost = 450 + random(3) * 150;
      }
      if(pack == 9)
      {
         cost = 1500 + random(3) * 500;
      }
      if(pack == 10)
      {
         cost = 450 + random(3) * 150;
      }
      if(pack == 11)
      {
         cost = 450 + random(3) * 150;
      }
      if(pack == 12)
      {
         cost = 450 + random(3) * 150;
      }
      if(pack == 13)
      {
         cost = 450 + random(3) * 150;
      }
      _root.save.fcgPack4 = pack;
      _root.save.fcgPack4Cost = cost;
      gotoAndStop(pack);
      costText.text = _root.withComma(cost);
   }
   gotoAndStop(_root.save.fcgPack4);
   costText.text = _root.withComma(_root.save.fcgPack4Cost);
}


