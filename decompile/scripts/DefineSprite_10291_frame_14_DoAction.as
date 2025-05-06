//! status=pending
function checkStuff()
{
   petCost1 = Math.ceil(_root.save.petStat[1] * 0.8 * Math.max(_root.save.petStat[1] - 75,25) / 25);
   petCost2 = Math.ceil(_root.save.petStat[2] * 0.8 * Math.max(_root.save.petStat[2] - 75,25) / 25);
   petCost3 = Math.ceil(_root.save.petStat[3] * 0.8 * Math.max(_root.save.petStat[3] - 75,25) / 25);
   petCost4 = Math.ceil(_root.save.petStat[4] * 0.8 * Math.max(_root.save.petStat[4] - 75,25) / 25);
   petCost5 = Math.ceil(_root.save.petStat[5] * 80 * Math.max(_root.save.petStat[5] - 75,25) / 25);
   petCost6 = Math.ceil(_root.save.petStat[6] * 80 * Math.max(_root.save.petStat[6] - 75,25) / 25);
   petCost7 = Math.ceil(_root.save.petStat[7] * 0.8 * Math.max(_root.save.petStat[7] - 75,25) / 25);
   petCost8 = Math.ceil(_root.save.petStat[8] * 0.8 * Math.max(_root.save.petStat[8] - 75,25) / 25);
   if(_root.save.permaBanPenalty[7] == 3)
   {
      petCost1 = Math.ceil(petCost1 * 0.5);
      petCost2 = Math.ceil(petCost2 * 0.5);
      petCost3 = Math.ceil(petCost3 * 0.5);
      petCost4 = Math.ceil(petCost4 * 0.5);
      petCost5 = Math.ceil(petCost5 * 0.5);
      petCost6 = Math.ceil(petCost6 * 0.5);
      petCost7 = Math.ceil(petCost7 * 0.5);
      petCost8 = Math.ceil(petCost8 * 0.5);
   }
   else if(_root.save.permaBanPenalty[7] == 2)
   {
      petCost1 = Math.ceil(petCost1 * 0.7);
      petCost2 = Math.ceil(petCost2 * 0.7);
      petCost3 = Math.ceil(petCost3 * 0.7);
      petCost4 = Math.ceil(petCost4 * 0.7);
      petCost5 = Math.ceil(petCost5 * 0.7);
      petCost6 = Math.ceil(petCost6 * 0.7);
      petCost7 = Math.ceil(petCost7 * 0.7);
      petCost8 = Math.ceil(petCost8 * 0.7);
   }
   else if(_root.save.permaBanPenalty[7] == 1)
   {
      petCost1 = Math.ceil(petCost1 * 0.8);
      petCost2 = Math.ceil(petCost2 * 0.8);
      petCost3 = Math.ceil(petCost3 * 0.8);
      petCost4 = Math.ceil(petCost4 * 0.8);
      petCost5 = Math.ceil(petCost5 * 0.8);
      petCost6 = Math.ceil(petCost6 * 0.8);
      petCost7 = Math.ceil(petCost7 * 0.8);
      petCost8 = Math.ceil(petCost8 * 0.8);
   }
   _root.petTotalFeed = 0;
   var _loc2_ = 1;
   while(_loc2_ <= 8)
   {
      _root.petTotalFeed += _root.save.petStat[_loc2_];
      _loc2_ = _loc2_ + 1;
   }
   petRewardDisp = new Array();
   _loc2_ = 1;
   while(_loc2_ <= 8)
   {
      petRewardDisp[_loc2_] = _root.save.petStat[_loc2_] * 0.2;
      if(_root.save.petStat[_loc2_] % 5 == 0)
      {
         petRewardDisp[_loc2_] += ".0";
      }
      petRewardDisp[_loc2_] += "%";
      _loc2_ = _loc2_ + 1;
   }
   petLevel = Math.floor(_root.petTotalFeed / 8);
   if(_root.save.petBestLevel < petLevel)
   {
      _root.save.petBestLevel = petLevel;
   }
   petExp = _root.petTotalFeed - petLevel * 8;
   petMax = 100 + Math.min(petLevel,100) + Math.max(Math.floor(petLevel * (petLevel - 100) / 25),0);
   petMaxB = Math.floor((100 + Math.min(petLevel,100) + Math.max(Math.floor(petLevel * (petLevel - 100) / 25),0)) * Math.max(1,petLevel / 10 - 10));
   if(_root.save.petFullness > petMax)
   {
      _root.save.petFullness = petMax;
   }
   if(_root.save.petHealth > petMax)
   {
      _root.save.petHealth = petMax;
   }
   if(_root.save.petHealth <= 0)
   {
      _root.killPet();
      gotoAndStop(15);
   }
   if(_root.save.petMana > petMaxB)
   {
      _root.save.petMana = petMaxB;
   }
   petNameText.text = _root.save.petName;
   petLevelText.text = "Lv. " + petLevel;
   petExpText.text = petExp + " / 8";
   if(petLevel == 200)
   {
      petExpText.text = "MAX";
   }
   petFullnessText.text = _root.withComma(_root.save.petFullness) + " / " + _root.withComma(petMax);
   petHealthText.text = _root.withComma(_root.save.petHealth) + " / " + _root.withComma(petMax);
   petManaText.text = _root.withComma(_root.save.petMana) + " / " + _root.withComma(petMaxB);
   petCost1Text.text = "Randomfruit -" + _root.withComma(petCost1);
   petCost2Text.text = "Bacon -" + _root.withComma(petCost2);
   if(_root.save.vegetarianMode == true)
   {
      petCost2Text.text = "Broccoli -" + _root.withComma(petCost2);
   }
   petCost3Text.text = "Purple Button -" + _root.withComma(petCost3);
   petCost4Text.text = "Arcade 100k Medal -" + _root.withComma(petCost4);
   petCost5Text.text = "Stadium Token -" + _root.withComma(petCost5);
   petCost6Text.text = "FCG Cash -" + _root.withComma(petCost6);
   petCost7Text.text = "Lv. 10 LolMarket Gem -" + _root.withComma(petCost7);
   petCost8Text.text = "Special Pet Food -" + _root.withComma(petCost8);
   petReward1Text.text = "Garden: +" + petRewardDisp[1] + " EXP";
   petReward2Text.text = "Battle Arena: +" + petRewardDisp[2] + " EXP";
   petReward3Text.text = "Button Machine: +" + petRewardDisp[3] + " EXP";
   petReward4Text.text = "Arcade: +" + petRewardDisp[4] + " EXP";
   petReward5Text.text = "Stadium: +" + petRewardDisp[5] + " EXP";
   petReward6Text.text = "TukkunFCG: +" + petRewardDisp[6] + " EXP";
   petReward7Text.text = "LolMarket: +" + petRewardDisp[7] + " EXP";
   petReward8Text.text = "Awesome Adventures: +" + petRewardDisp[8] + " EXP";
}
function feedPet(feedType)
{
   careerExpToGain = 0;
   _root.save.petFullness += Math.floor(10 + petLevel / 5 + Math.max(_root.save.petStat[feedType] - 75,25) / 2.5);
   _root.dispNews(146,"Pet Fullness increased! (+" + Math.floor(10 + petLevel / 5 + Math.max(_root.save.petStat[feedType] - 75,25) / 2.5) + ")");
   if(Math.random() < _root.curCareerLevel[11] / 500)
   {
      _root.save.petMana += Math.floor(10 + petLevel / 5 + Math.max(_root.save.petStat[feedType] - 75,25) / 2.5);
      _root.dispNews(148,"Pet Mana increased! (+" + Math.floor(10 + petLevel / 5 + Math.max(_root.save.petStat[feedType] - 75,25) / 2.5) + ")");
   }
   else
   {
      _root.save.petMana += Math.floor(5 + petLevel / 10 + Math.max(_root.save.petStat[feedType] - 75,25) / 5);
      _root.dispNews(148,"Pet Mana increased! (+" + Math.floor(5 + petLevel / 10 + Math.max(_root.save.petStat[feedType] - 75,25) / 5) + ")");
   }
   if(_root.save.petFullness <= petMax)
   {
      _root.save.petHealth += Math.floor(2 + petLevel / 25);
      _root.dispNews(147,"Pet Health increased! (+" + Math.floor(2 + petLevel / 25) + ")");
      careerExpToGain += 1000;
   }
   else
   {
      _root.dispNews(173,"Overfeeding will not increase your pet\'s health!");
   }
   if(_root.save.petStat[feedType] < 200)
   {
      careerExpToGain += Math.ceil(_root.save.petStat[feedType] * 10 * Math.max(_root.save.petStat[feedType] - 50,50) / 50);
      _root.save.petStat[feedType] += 1;
   }
   else
   {
      careerExpToGain += 4000;
   }
   _root.gainCareerEXP(11,careerExpToGain,true);
   checkStuff();
}
if(_root.save.petExist == 0)
{
   gotoAndStop(15);
}
checkStuff();
del = 0;
onEnterFrame = function()
{
   del += 1 / _root.fps;
   if(del >= 1)
   {
      del = 0;
      checkStuff();
   }
};
