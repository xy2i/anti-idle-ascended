//! status=pending
function checkBar()
{
   achText.text = _root.withComma(_root.awards);
   questText.text = Math.floor((_root.save.mainQuestC * 1 + _root.save.mainQuestB * 3 + _root.save.mainQuestA * 6 + _root.save.mainQuestS * 10) / 25) + "%";
   tokenText1.text = _root.withComma(_root.save.questToken);
   tokenText3.text = _root.withComma(_root.save.eventToken);
   featuresBought = 0;
   if(_root.save.featureIdleMode == true)
   {
      featuresBought += 1;
   }
   if(_root.save.featureBoostGen == true)
   {
      featuresBought += 1;
   }
   if(_root.save.featureGarden == true)
   {
      featuresBought += 1;
   }
   if(_root.save.featureBattleArena == true)
   {
      featuresBought += 1;
   }
   if(_root.save.featureButtonMachine == true)
   {
      featuresBought += 1;
   }
   if(_root.save.featureMoneyPrinter == true)
   {
      featuresBought += 1;
   }
   if(_root.save.featureArcade == true)
   {
      featuresBought += 1;
   }
   if(_root.save.featureStadium == true)
   {
      featuresBought += 1;
   }
   if(_root.save.featureTukkunFCG == true)
   {
      featuresBought += 1;
   }
   if(_root.save.featureLolMarket == true)
   {
      featuresBought += 1;
   }
   if(_root.save.featureAwesomeAdventures == true)
   {
      featuresBought += 1;
   }
   if(_root.save.featureFishing == true)
   {
      featuresBought += 1;
   }
   if(_root.save.featureEpicLicense == true)
   {
      featuresBought += 1;
   }
   if(_root.save.featureBoostAuto == true)
   {
      featuresBought += 1;
   }
   if(_root.save.featureManualSprayer == true)
   {
      featuresBought += 1;
   }
   if(_root.save.featureSpecialSprayer == true)
   {
      featuresBought += 1;
   }
   if(_root.save.featureDoomSprayer == true)
   {
      featuresBought += 1;
   }
   if(_root.save.featureMiniGarden == true)
   {
      featuresBought += 1;
   }
   if(_root.save.featureTravelingTicket == true)
   {
      featuresBought += 1;
   }
   if(_root.save.featureArcadePack == true)
   {
      featuresBought += 1;
   }
   if(_root.save.featureSuperBattery == true)
   {
      featuresBought += 1;
   }
   if(_root.save.featureEnergyToolbar == true)
   {
      featuresBought += 1;
   }
   if(_root.save.featureCardToolbar == true)
   {
      featuresBought += 1;
   }
   if(_root.save.featureTechnicalLight == true)
   {
      featuresBought += 1;
   }
   if(_root.save.stadiumH1 == true)
   {
      featuresBought += 1;
   }
   if(_root.save.stadiumH2 == true)
   {
      featuresBought += 1;
   }
   if(_root.save.stadiumH3 == true)
   {
      featuresBought += 1;
   }
   if(_root.save.fishRodUnlock[5] == true)
   {
      featuresBought += 1;
   }
   if(_root.save.fishRodUnlock[6] == true)
   {
      featuresBought += 1;
   }
   shopText.text = featuresBought + " / 29";
}
checkBar();
alt = false;
onEnterFrame = function()
{
   alt = !alt;
   if(alt == true)
   {
      checkBar();
   }
};
