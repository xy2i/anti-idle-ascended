//! status=pending
_root.save.gardenSeed[_root.save.gardenBreedReward] += _root.save.gardenBreedRewardC;
breedCount.text = "+" + _root.save.gardenBreedRewardC;
if(_root.save.questType == "Breed")
{
   _root.save.questCount += _root.save.gardenBreedRewardC;
}
_root.save.gardenBreed1 = 0;
_root.save.gardenBreed2 = 0;
_root.save.gardenResearch = 0;
_root.actiondescription = "";
