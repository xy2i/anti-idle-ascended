//! status=pending
_root.power1Active = false;
_root.power2Active = false;
_root.power3Active = false;
_root.power4Active = false;
_root.power5Active = false;
_root.power6Active = false;
_root.power7Active = false;
_root.power8Active = false;
maxcard = 248;
powerCost = -1;
fcgCollectionTmp = 0;
i = 1;
while(i <= maxcard)
{
   if(_root.save.fcgOwned[i] >= 7)
   {
      fcgCollectionTmp += 1;
   }
   i++;
}
if(_root.save.fcgCollection < fcgCollectionTmp)
{
   _root.save.fcgCollection = fcgCollectionTmp;
}
_root.house.gotoAndStop(12);
_root.fcg_challenged = false;
tempTotalCards = 0;
i = 1;
while(i <= 400)
{
   if(!isNaN(_root.save.fcgDeck[i]))
   {
      tempTotalCards += _root.save.fcgDeck[i];
   }
   i++;
}
_root.save.fcgTotalCards = tempTotalCards;
if(_root.saveid == 25)
{
   _root.fcgCooldown = 1;
}
onEnterFrame = function()
{
   powerCost = 0;
   _root.power1Active = false;
   _root.power2Active = false;
   _root.power3Active = false;
   _root.power4Active = false;
   _root.power5Active = false;
   _root.power6Active = false;
   _root.power7Active = false;
   if(_root.save.fcgCurDiff >= 6 && _root.save.fcgCurDiff <= 11)
   {
      if(_root.save.fcgPower[1] == true)
      {
         powerCost += 500;
         _root.power1Active = true;
      }
      if(_root.save.fcgPower[2] == true)
      {
         powerCost += 1500;
         _root.power2Active = true;
      }
      if(_root.save.fcgPower[3] == true)
      {
         powerCost += 3000;
         _root.power3Active = true;
      }
      if(_root.save.fcgPower[4] == true)
      {
         powerCost += 5000;
         _root.power4Active = true;
      }
      if(_root.save.fcgPower[5] == true)
      {
         powerCost += 8000;
         _root.power5Active = true;
      }
      if(_root.save.fcgPower[6] == true)
      {
         powerCost += 12000;
         _root.power6Active = true;
      }
      if(_root.save.fcgPower[7] == true)
      {
         powerCost += 5000;
         _root.power7Active = true;
      }
      if(_root.save.careerLevel[8] >= 200)
      {
         powerCost = Math.round(powerCost * 0.7);
      }
      if(_root.save.fcgCurDiff == 11)
      {
         powerCost = 0;
      }
   }
   if(_root.save.fcgCurDiff == 12)
   {
      powerCost += 5000;
   }
   if(_root.save.fcgTotalCards < 25)
   {
      _root.save.fcgRandomDeck = true;
   }
   if(_root.saveid == 25)
   {
      _root.save.fcgReceiveChallenge = false;
      if(_root.save.fcgCurDiff == 10)
      {
         conditions = 0;
         challengeHP = 120;
         condition1 = 1;
         condition2 = 1;
         condition3 = 1;
         condition4 = 1;
         condition5 = 1;
         condition6 = 1;
         condition7 = 1;
         condition5a = 1;
         condition5b = 1;
         condition5c = 1;
         condition5d = 1;
         condition5e = 1;
         condition6a = 7;
         if(_root.save.fcgDeck[129] > 0 || _root.save.fcgDeck[130] > 0)
         {
            condition2 = 0;
         }
         i = 1;
         while(i <= 248)
         {
            if(i >= 3 && i <= 14 && _root.save.fcgDeck[i] > 0)
            {
               condition1 = 0;
            }
            if(_root.cardList[i].upgraded == 1 || _root.cardList[i].upgraded == 3)
            {
               challengeHP -= _root.save.fcgDeck[i];
            }
            if(_root.cardList[i].upgraded >= 2 && _root.save.fcgDeck[i] > 0)
            {
               condition3 = 0;
            }
            if(_root.cardList[i].req >= 7 && _root.save.fcgDeck[i] > 0)
            {
               condition4 = 0;
            }
            if(_root.cardList[i].quanta == 1 && _root.save.fcgDeck[i] > 0)
            {
               condition5a = 0;
            }
            if(_root.cardList[i].quanta == 2 && _root.save.fcgDeck[i] > 0)
            {
               condition5b = 0;
            }
            if(_root.cardList[i].quanta == 3 && _root.save.fcgDeck[i] > 0)
            {
               condition5c = 0;
            }
            if(_root.cardList[i].quanta == 4 && _root.save.fcgDeck[i] > 0)
            {
               condition5d = 0;
            }
            if(_root.cardList[i].quanta == 5 && _root.save.fcgDeck[i] > 0)
            {
               condition5e = 0;
            }
            if(i % 2 == 1)
            {
               if(_root.save.fcgDeck[i] > 0 || _root.save.fcgDeck[i + 1] > 0)
               {
                  condition6a -= 1;
               }
               if(_root.save.fcgDeck[i] + _root.save.fcgDeck[i + 1] > 5)
               {
                  condition7 = 0;
               }
            }
            i++;
         }
         if(condition5a + condition5b + condition5c + condition5d + condition5e < 2)
         {
            condition5 = 0;
         }
         if(condition6a < 0)
         {
            condition6 = 0;
         }
         conditions = condition1 + condition2 + condition3 + condition4 + condition5 + condition6 + condition7;
         if(conditions < 4 || _root.save.fcgRandomDeck == true)
         {
            _root.fcgCooldown = 1;
         }
      }
   }
};
_root.epicdesc = "";
stop();
_root.fcg_dep = 2;
_root.fcg_epic = 0;
if(_root.save.fcgStreak > _root.save.fcgMaxStreak)
{
   _root.save.fcgMaxStreak = _root.save.fcgStreak;
}
if(_root.save.fcgCash > _root.save.fcgMaxCash)
{
   _root.save.fcgMaxCash = _root.save.fcgCash;
}
_root.enemy_randomdeck = true;
_root.fcg_opponentlevel = 0;
enemy_deck = 1;
_root.epicdesc = "";
if(_root.save.fcgWin + _root.save.fcgLose < _root.save.fcgPlay)
{
   _root.save.fcgLose = _root.save.fcgPlay - _root.save.fcgWin;
   _root.save.fcgStreak = 0;
   _root.save["fcgStreak" + _root.save.fcgLastDiff] = 0;
}
