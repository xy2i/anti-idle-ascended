//! status=pending
on(release){
   _root.save.seriousBusiness += 1;
   advice = "I don\'t have any advice for you at the moment, LOL!";
   if(Math.random() < 0.4)
   {
      advice = "You can change what clicking and Space + clicking do in the Preferences tab!";
   }
   if(Math.random() < 0.4)
   {
      advice = "Read the Help tab for some useful LolMarket-related information!";
   }
   else if(Math.random() < 0.2)
   {
      advice = "Buy low, sell high. LolObvious.";
   }
   else if(Math.random() < 0.2)
   {
      advice = "You can control the demand once every few minutes using the \'Control Market\' tab!";
   }
   if(Math.random() < 0.2)
   {
      advice = "Please don\'t abuse me. My advice isn\'t always correct. LolMarket has many random factors, you know.";
   }
   i = 1;
   while(i <= 10)
   {
      if(_root.save.lolGems[i] > _root.save.lolCapacity / 2)
      {
         if(Math.random() < 0.75 && _root.save.lolDemand[i] < -9 && _root.save.lolPrice[i] > i * 1750 && Math.floor((_root.save.lolPrice[i] * 0.95 * _root.save.lolGems[i] - _root.save.lolSpent[i]) / _root.save.lolGems[i]) > 0)
         {
            advice = "I have a feeling that the price of Lv. " + i + " Gems is dropping soon. You\'d better sell them when you still can!";
         }
         else if(Math.random() < 0.75 && _root.save.lolDemand[i] > 9 && _root.save.lolPrice[i] > i * 1750 && Math.floor((_root.save.lolPrice[i] * 0.95 * _root.save.lolGems[i] - _root.save.lolSpent[i]) / _root.save.lolGems[i]) > 0)
         {
            advice = "Lv. " + i + " Gems are currently quite high in price, but its demand is still high, so maybe you should wait a bit more before selling them!";
         }
      }
      else if(Math.random() < 0.2 && _root.save.lolDemand[i] > 9 && _root.save.lolPrice[i] < i * 1250)
      {
         advice = "The demand for Lv. " + i + " Gems is pretty high, and they are fairly cheap too! Get them when they are still cheap, and sell them later for PROFIT!";
      }
      else if(Math.random() < 0.05 && _root.save.lolDemand[i] < -9 && _root.save.lolPrice[i] > i * 1400)
      {
         advice = "If you are thinking of buying some Lv. " + i + " Gems, don\'t bother. I don\'t think that is a good idea.";
      }
      else if(Math.random() < 0.05 && _root.save.lolDemand[i] < -9 && _root.save.lolPrice[i] < i * 1250)
      {
         advice = "Lv. " + i + " Gems are currently cheap, but maybe you should wait a bit before buying them. They are still dropping in price...";
      }
      i++;
   }
   _root.showPopup("LolAdvice!",advice);
}


