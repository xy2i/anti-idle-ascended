//! status=pending
if(_root.save.screenSelect == true)
{
   if(_root.save.featureSelected == 2 && _root.save.featureGarden == true || _root.save.featureSelected == 3 && _root.save.featureBattleArena == true || _root.save.featureSelected == 4 && _root.save.featureButtonMachine == true || _root.save.featureSelected == 5 && _root.save.featureMoneyPrinter == true || _root.save.featureSelected == 6 && _root.save.featureArcade == true || _root.save.featureSelected == 7 && _root.save.featureStadium == true || _root.save.featureSelected == 8 && _root.save.featureTukkunFCG == true || _root.save.featureSelected == 9 && _root.save.featureLolMarket == true || _root.save.featureSelected == 10 && _root.save.featureAwesomeAdventures == true || _root.save.featureSelected == 14 && _root.save.featureFishing == true)
   {
      gotoAndStop(_root.save.correctedFeature);
   }
   else
   {
      gotoAndStop(19);
   }
   if(_root.save.featureSelected == 11 && _root.save.gDifficulty >= 3 && _root.save.level < 1999 || _root.save.featureSelected == 16 && _root.save.gDifficulty == 2 && _root.save.level < 999 || _root.save.featureSelected == 16 && _root.save.gDifficulty == 3 && _root.save.level < 2999)
   {
      gotoAndStop(19);
   }
   else
   {
      gotoAndStop(_root.save.correctedFeature);
   }
   if(_root.save.featureSelected == 1 || _root.save.featureSelected == 12 || _root.save.featureSelected == 13 || _root.save.featureSelected == 15)
   {
      gotoAndStop(_root.save.correctedFeature);
   }
}
else
{
   gotoAndStop(19);
}
