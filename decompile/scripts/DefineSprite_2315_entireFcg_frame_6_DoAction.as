//! status=pending
function sortCards(sortType)
{
   cardcount = 0;
   var _loc3_ = 1;
   while(_loc3_ <= maxcard)
   {
      _root["cardx_" + _loc3_] = 0;
      _loc3_ = _loc3_ + 1;
   }
   if(sortType == 1)
   {
      var _loc4_ = 1;
      while(_loc4_ <= 5)
      {
         _loc3_ = 1;
         while(_loc3_ <= maxcard)
         {
            if(_root.cardList[_loc3_].quanta == _loc4_ && _root.cardList[_loc3_].type == "Monster")
            {
               cardcount += 1;
               _root["cardx_" + cardcount] = _loc3_;
            }
            _loc3_ = _loc3_ + 1;
         }
         _loc3_ = 1;
         while(_loc3_ <= maxcard)
         {
            if(_root.cardList[_loc3_].quanta == _loc4_ && _root.cardList[_loc3_].type != "Monster")
            {
               cardcount += 1;
               _root["cardx_" + cardcount] = _loc3_;
            }
            _loc3_ = _loc3_ + 1;
         }
         _loc4_ = _loc4_ + 1;
      }
   }
   else if(sortType == 2)
   {
      _loc4_ = 1;
      while(_loc4_ <= 5)
      {
         var _loc5_ = 0;
         while(_loc5_ <= 40)
         {
            _loc3_ = 1;
            while(_loc3_ <= maxcard)
            {
               if(_root.cardList[_loc3_].quanta == _loc4_ && _root.cardList[_loc3_].req == _loc5_)
               {
                  cardcount += 1;
                  _root["cardx_" + cardcount] = _loc3_;
               }
               _loc3_ = _loc3_ + 1;
            }
            _loc5_ = _loc5_ + 1;
         }
         _loc4_ = _loc4_ + 1;
      }
   }
   else if(sortType == 3)
   {
      _loc4_ = 1;
      while(_loc4_ <= 5)
      {
         _loc3_ = 1;
         while(_loc3_ <= maxcard)
         {
            if(_root.cardList[_loc3_].quanta == _loc4_ && _root.cardList[_loc3_].type == "Monster")
            {
               cardcount += 1;
               _root["cardx_" + cardcount] = _loc3_;
            }
            _loc3_ = _loc3_ + 1;
         }
         _loc4_ = _loc4_ + 1;
      }
      _loc4_ = 1;
      while(_loc4_ <= 5)
      {
         _loc3_ = 1;
         while(_loc3_ <= maxcard)
         {
            if(_root.cardList[_loc3_].quanta == _loc4_ && _root.cardList[_loc3_].type != "Monster")
            {
               cardcount += 1;
               _root["cardx_" + cardcount] = _loc3_;
            }
            _loc3_ = _loc3_ + 1;
         }
         _loc4_ = _loc4_ + 1;
      }
   }
   else if(sortType == 4)
   {
      _loc5_ = 0;
      while(_loc5_ <= 40)
      {
         _loc4_ = 1;
         while(_loc4_ <= 5)
         {
            _loc3_ = 1;
            while(_loc3_ <= maxcard)
            {
               if(_root.cardList[_loc3_].quanta == _loc4_ && _root.cardList[_loc3_].req == _loc5_)
               {
                  cardcount += 1;
                  _root["cardx_" + cardcount] = _loc3_;
               }
               _loc3_ = _loc3_ + 1;
            }
            _loc4_ = _loc4_ + 1;
         }
         _loc5_ = _loc5_ + 1;
      }
   }
   else if(sortType == 5)
   {
      _loc4_ = 50;
      while(_loc4_ <= 5000)
      {
         _loc3_ = 1;
         while(_loc3_ <= maxcard)
         {
            if(_root.cardList[_loc3_].cost == _loc4_)
            {
               cardcount += 1;
               _root["cardx_" + cardcount] = _loc3_;
            }
            _loc3_ = _loc3_ + 1;
         }
         _loc4_ += 25;
      }
      _loc4_ = 10000;
      while(_loc4_ <= 30000)
      {
         _loc3_ = 1;
         while(_loc3_ <= maxcard)
         {
            if(_root.cardList[_loc3_].cost == _loc4_)
            {
               cardcount += 1;
               _root["cardx_" + cardcount] = _loc3_;
            }
            _loc3_ = _loc3_ + 1;
         }
         _loc4_ += 10000;
      }
      _loc3_ = 1;
      while(_loc3_ <= maxcard)
      {
         if(_root.cardList[_loc3_].cost == Infinity)
         {
            cardcount += 1;
            _root["cardx_" + cardcount] = _loc3_;
         }
         _loc3_ = _loc3_ + 1;
      }
   }
   else if(sortType == 6)
   {
      minCard = 0;
      minText = "";
      sel = new Array();
      _loc3_ = 1;
      while(_loc3_ <= maxcard)
      {
         sel[_loc3_] = false;
         _loc3_ = _loc3_ + 1;
      }
      while(minCard != -1)
      {
         minCard = -1;
         minText = "";
         _loc3_ = 1;
         while(_loc3_ <= maxcard)
         {
            if(sel[_loc3_] != true && _root.cardList[_loc3_].name < minText)
            {
               minCard = _loc3_;
               minText = _root.cardList[_loc3_].name;
            }
            _loc3_ = _loc3_ + 1;
         }
         if(minCard != -1)
         {
            cardcount += 1;
            _root["cardx_" + cardcount] = minCard;
            sel[minCard] = true;
         }
      }
   }
   else if(sortType == 9)
   {
      _loc3_ = 1;
      while(_loc3_ <= maxcard)
      {
         cardcount += 1;
         _root["cardx_" + cardcount] = _loc3_;
         _loc3_ = _loc3_ + 1;
      }
   }
   else if(sortType == 7)
   {
      _loc3_ = 1;
      while(_loc3_ <= maxcard)
      {
         if(_root.save.fcgDeck[_loc3_] > 0)
         {
            cardcount += 1;
            _root["cardx_" + cardcount] = _loc3_;
         }
         _loc3_ = _loc3_ + 1;
      }
      _loc3_ = 1;
      while(_loc3_ <= maxcard)
      {
         if(_root.save.fcgDeck[_loc3_] <= 0)
         {
            cardcount += 1;
            _root["cardx_" + cardcount] = _loc3_;
         }
         _loc3_ = _loc3_ + 1;
      }
   }
   else if(sortType == 8)
   {
      _loc3_ = 1;
      while(_loc3_ <= maxcard)
      {
         if(_root.save.fcgOwned[_loc3_] > 0)
         {
            cardcount += 1;
            _root["cardx_" + cardcount] = _loc3_;
         }
         _loc3_ = _loc3_ + 1;
      }
      _loc3_ = 1;
      while(_loc3_ <= maxcard)
      {
         if(_root.save.fcgOwned[_loc3_] <= 0)
         {
            cardcount += 1;
            _root["cardx_" + cardcount] = _loc3_;
         }
         _loc3_ = _loc3_ + 1;
      }
   }
}
_root.bazaarpage = 1;
_root.fcg_dep = 1;
delay = 40;
i = 1;
while(i <= maxcard)
{
   if(_root.save.fcgOwned[i] > 100)
   {
      _root.save.fcgOwned[i] = 100;
   }
   i++;
}
sortCards(1);
_root.sorttype = 1;
onEnterFrame = function()
{
   delay += 1;
   if(delay > 40)
   {
      delay = 0;
      _root.deckcodetukkun = "";
      if(_root.sorttype == 7)
      {
         sortCards(7);
      }
      tempCard = 0;
      myDeckString = "";
      i = 1;
      while(i <= maxcard)
      {
         if(_root.save.fcgDeck[i] > 0)
         {
            if(tempCard == 0)
            {
               tempCard = 1;
               myDeckString += _root.save.fcgDeck[i] + "," + i;
            }
            else
            {
               myDeckString += "," + _root.save.fcgDeck[i] + "," + i;
            }
         }
         i++;
      }
      myDeckArray = myDeckString.split(",");
      myDeckArray2 = myDeckString.split(",").join(".");
      _root.deckcodetukkun += "PvP / Deck Load Code: \n" + myDeckArray2;
      _root.deckcodetukkun += "\n\nDeck List:";
      i = 1;
      while(i <= maxcard)
      {
         if(_root.save.fcgDeck[i] > 0)
         {
            if(_root.cardList[i].upgraded == 0)
            {
               _root.deckcodetukkun += "\n" + _root.save.fcgDeck[i] + " " + _root.cardList[i].name;
            }
            if(_root.cardList[i].upgraded == 1)
            {
               _root.deckcodetukkun += "\n" + _root.save.fcgDeck[i] + " (Upgraded) " + _root.cardList[i].name;
            }
            if(_root.cardList[i].upgraded == 2)
            {
               _root.deckcodetukkun += "\n" + _root.save.fcgDeck[i] + " (Rare) " + _root.cardList[i].name;
            }
            if(_root.cardList[i].upgraded == 3)
            {
               _root.deckcodetukkun += "\n" + _root.save.fcgDeck[i] + " (Rare/Upgraded) " + _root.cardList[i].name;
            }
         }
         i++;
      }
      _root.deckcodetukkun += "\n\nGame Script:";
      _root.deckcodetukkun += "\naddNewDeck (\'" + _root.kongregate_username + "\', [" + myDeckArray + "])";
   }
   cid.text = _root.save.fcgTotalCards;
   fcgpt.text = _root.withComma(_root.save.fcgCash);
};
