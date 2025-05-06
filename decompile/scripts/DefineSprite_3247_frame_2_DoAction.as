//! status=pending
researchD = Math.floor(Math.sqrt(_root.save.gardenEXP) / 2);
if(researchD > 2000)
{
   researchD = 2000;
}
reqResearch = 3000 - researchD;
onEnterFrame = function()
{
   if(_root.save.gardenResearch >= reqResearch)
   {
      possibility = random(4);
      if(possibility == 0)
      {
         _root.save.gardenBreedReward = Math.floor((_root.save.gardenBreed1 + _root.save.gardenBreed2) / 2);
      }
      else if(possibility == 1)
      {
         _root.save.gardenBreedReward = Math.ceil((_root.save.gardenBreed1 + _root.save.gardenBreed2) / 2);
      }
      else if(possibility == 2)
      {
         _root.save.gardenBreedReward = Math.floor((_root.save.gardenBreed1 + 75 + _root.save.gardenBreed2) / 2);
         if(_root.save.gardenBreedReward > 100)
         {
            _root.save.gardenBreedReward -= 75;
         }
      }
      else if(possibility == 3)
      {
         _root.save.gardenBreedReward = Math.ceil((_root.save.gardenBreed1 + 75 + _root.save.gardenBreed2) / 2);
         if(_root.save.gardenBreedReward > 100)
         {
            _root.save.gardenBreedReward -= 75;
         }
      }
      _root.save.gardenBreedRewardC = 25 + random(11);
      if(_root.save.permaBanPenalty[23] == 3)
      {
         _root.save.gardenBreedRewardC += 15;
      }
      else if(_root.save.permaBanPenalty[23] == 2)
      {
         _root.save.gardenBreedRewardC += 10;
      }
      else if(_root.save.permaBanPenalty[23] == 1)
      {
         _root.save.gardenBreedRewardC += 5;
      }
      _root.save.gardenBreedTotal += _root.save.gardenBreedRewardC;
      _root.gainCareerEXP(2,500,true);
      gotoAndStop(3);
   }
};
_root.actiondescription = "";
