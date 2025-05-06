//! status=pending
function checkBM()
{
   if(_root.save.battleReward == 0)
   {
      nextReward = 100;
      nextRewardText = "Weapon Attack Rock Lv. 10";
   }
   if(_root.save.battleReward == 1)
   {
      nextReward = 200;
      nextRewardText = "Weapon Attack Rock Lv. 10";
   }
   if(_root.save.battleReward == 2)
   {
      nextReward = 300;
      nextRewardText = "Weapon Attack Rock Lv. 10";
   }
   if(_root.save.battleReward == 3)
   {
      nextReward = 400;
      nextRewardText = "Weapon Attack Rock Lv. 10";
   }
   if(_root.save.battleReward == 4)
   {
      nextReward = 500;
      nextRewardText = "[I] Weapon Attack Rock Lv. 10";
   }
   if(_root.save.battleReward == 5)
   {
      nextReward = 1000;
      nextRewardText = "Weapon Unobtainium Enhancer Lv. 5";
   }
   if(_root.save.battleReward == 6)
   {
      nextReward = 2000;
      nextRewardText = "Weapon Unobtainium Enhancer Lv. 5";
   }
   if(_root.save.battleReward == 7)
   {
      nextReward = 3000;
      nextRewardText = "Weapon Unobtainium Enhancer Lv. 5";
   }
   if(_root.save.battleReward == 8)
   {
      nextReward = 4000;
      nextRewardText = "Weapon Unobtainium Enhancer Lv. 5";
   }
   if(_root.save.battleReward == 9)
   {
      nextReward = 5000;
      nextRewardText = "[I] Weapon Unobtainium Enhancer Lv. 5";
   }
   if(_root.save.battleReward == 10)
   {
      nextReward = 6000;
      nextRewardText = "Armor Unobtainium Enhancer Lv. 5";
   }
   if(_root.save.battleReward == 11)
   {
      nextReward = 7000;
      nextRewardText = "Armor Unobtainium Enhancer Lv. 5";
   }
   if(_root.save.battleReward == 12)
   {
      nextReward = 8000;
      nextRewardText = "Armor Unobtainium Enhancer Lv. 5";
   }
   if(_root.save.battleReward == 13)
   {
      nextReward = 9000;
      nextRewardText = "Armor Unobtainium Enhancer Lv. 5";
   }
   if(_root.save.battleReward == 14)
   {
      nextReward = 10000;
      nextRewardText = "[I] Armor Unobtainium Enhancer Lv. 5";
   }
   if(_root.save.battleReward == 15)
   {
      nextReward = 50000;
      nextRewardText = "Armor Unique Enhancer MAX";
   }
   if(_root.save.battleReward == 16)
   {
      nextReward = 100000;
      nextRewardText = "Armor Unique Enhancer MAX";
   }
   if(_root.save.battleReward == 17)
   {
      nextReward = 150000;
      nextRewardText = "Armor Unique Enhancer MAX";
   }
   if(_root.save.battleReward == 18)
   {
      nextReward = 200000;
      nextRewardText = "Armor Unique Enhancer MAX";
   }
   if(_root.save.battleReward == 19)
   {
      nextReward = 250000;
      nextRewardText = "[I] Armor Unique Enhancer MAX";
   }
   if(_root.save.battleReward == 20)
   {
      nextReward = 300000;
      nextRewardText = "Weapon Unique Enhancer MAX";
   }
   if(_root.save.battleReward == 21)
   {
      nextReward = 350000;
      nextRewardText = "Weapon Unique Enhancer MAX";
   }
   if(_root.save.battleReward == 22)
   {
      nextReward = 400000;
      nextRewardText = "Weapon Unique Enhancer MAX";
   }
   if(_root.save.battleReward == 23)
   {
      nextReward = 450000;
      nextRewardText = "Weapon Unique Enhancer MAX";
   }
   if(_root.save.battleReward == 24)
   {
      nextReward = 500000;
      nextRewardText = "[I] Weapon Unique Enhancer MAX";
   }
   if(_root.save.battleReward == 25)
   {
      nextReward = Infinity;
      nextRewardText = "N/A";
   }
   dailyPixel = _root.save.battlePoint * _root.save.battlePoint * 100;
   if(_root.save.battlePoint > 500)
   {
      dailyPixel = _root.save.battlePoint * 50000;
   }
   if(dailyPixel > 25000000000)
   {
      dailyPixel = 25000000000;
   }
   if(dailyPixel > Math.ceil(_root.save.arenaPixel * 0.0005 + 100) * 100)
   {
      dailyPixel = Math.ceil(_root.save.arenaPixel * 0.0005 + 100) * 100;
   }
   bpText.text = _root.withComma(_root.save.battlePoint) + " BP";
   nextText.text = _root.withComma(nextReward) + " BP";
   pixelText.text = _root.withComma(dailyPixel) + " Pixels";
}
checkBM();
onEnterFrame = function()
{
   checkBM();
};
