//! status=pending
on(release){
   _parent.deckCodeInput.split(" ").join("");
   if(_parent.deckCodeInput.indexOf(".") != -1)
   {
      tempDeckArray = _parent.deckCodeInput.split(".");
      myDeckArray = new Array();
      i = 0;
      while(i <= tempDeckArray.length - 1)
      {
         if(tempDeckArray[i] > 100)
         {
            tempDeckArray[i] = 100;
         }
         if(isNaN(tempDeckArray[i]))
         {
            tempDeckArray[i] = 0;
            _parent.errorText.text += "\nInvalid deck. Please (don\'t) try again.";
            validSoFar = 0;
         }
         j = 1;
         while(j <= tempDeckArray[i])
         {
            myDeckArray.push(tempDeckArray[i + 1]);
            j++;
         }
         i += 2;
      }
   }
   else
   {
      myDeckArray = _parent.deckCodeInput.split(",");
   }
   _parent.errorText.text = "";
   validSoFar = 1;
   planDeck = new Array();
   i = 1;
   while(i <= 400)
   {
      planDeck[i] = 0;
      i++;
   }
   if(myDeckArray.length > 24 && myDeckArray.length <= 100)
   {
      i = 0;
      while(i <= myDeckArray.length - 1)
      {
         planDeck[myDeckArray[i]] += 1;
         if(_root.cardList[myDeckArray[i]].upgraded == 0)
         {
            cardName = _root.cardList[i].name;
         }
         if(_root.cardList[myDeckArray[i]].upgraded == 1)
         {
            cardName = "(Upgraded) " + _root.cardList[i].name;
         }
         if(_root.cardList[myDeckArray[i]].upgraded == 2)
         {
            cardName = "(Rare) " + _root.cardList[i].name;
         }
         if(_root.cardList[myDeckArray[i]].upgraded == 3)
         {
            cardName = "(Rare/Upgraded) " + _root.cardList[i].name;
         }
         if(Math.ceil(myDeckArray[i] / 2) != myDeckArray[i] / 2 && myDeckArray[i] > 26)
         {
            sameCards = planDeck[myDeckArray[i]] + planDeck[myDeckArray[i] * 1 + 1];
            if(sameCards > 7)
            {
               _parent.errorText.text += "\nThis deck contains " + sameCards + " " + cardName + ".";
               validSoFar = 0;
            }
         }
         if(Math.ceil(myDeckArray[i] / 2) == myDeckArray[i] / 2 && myDeckArray[i] > 26)
         {
            sameCards = planDeck[myDeckArray[i]] + planDeck[myDeckArray[i] - 1];
            if(sameCards > 7)
            {
               _parent.errorText.text += "\nThis deck contains " + sameCards + " " + cardName + ".";
               validSoFar = 0;
            }
         }
         if(myDeckArray[i] > _parent.maxcard || myDeckArray[i] < 1)
         {
            _parent.errorText.text += "\nThis deck contains a non-existent card.";
            validSoFar = 0;
         }
         if(isNaN(myDeckArray[i]))
         {
            _parent.errorText.text += "\nInvalid deck.";
            validSoFar = 0;
         }
         i++;
      }
   }
   else
   {
      _parent.errorText.text += "\nInvalid deck. Please (don\'t) try again.";
      validSoFar = 0;
   }
   if(validSoFar == 1)
   {
      i = 1;
      while(i <= 400)
      {
         _root["fcg_epic" + i] = planDeck[i];
         i++;
      }
      _root.enemy_randomdeck = false;
      _root.fcg_opponentlevel = 7;
      _root.fcg_epic = 3;
      _parent.gotoAndStop(3);
   }
}


