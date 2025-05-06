//! status=pending
function genQuest()
{
   questSelected = false;
   var _loc2_ = 1;
   while(_loc2_ <= 50)
   {
      if(questSelected == false)
      {
         q = random(_root.totalquest) + 1;
         tempChance = _root.questList[q].chance * (1 + _root.save.questToday / 100);
         if(Math.random() < tempChance && _root.questList[q].difficulty <= _root.save.questTargetDiff / 10 && _root.save.bestLevel >= _root.questList[q].reqLv || _loc2_ == 50)
         {
            if(_loc2_ == 50)
            {
               q = 1;
            }
            questSelected = true;
            needMult = (_root.save.questTargetDiff + _root.save.questToday) / 20 - _root.questList[q].difficulty;
            if(needMult < 1)
            {
               needMult = 1;
            }
            if(needMult > _root.questList[q].maxMult)
            {
               needMult = _root.questList[q].maxMult;
            }
            tempNeed = Math.round(_root.questList[q].need * needMult);
         }
      }
      _loc2_ = _loc2_ + 1;
   }
   _root.save.questNeed = tempNeed;
   _root.save.questReward = _root.questList[q].reward;
   _root.save.questRewardQuan = _root.questList[q].rewardQuan;
   _root.save.questRewardBlueCoin = _root.questList[q].rewardBlueCoin;
   _root.save.questRewardToken = _root.questList[q].rewardToken;
   _root.save.questType = _root.questList[q].type;
   _root.save.questSubtype = _root.questList[q].subtype;
   if(_root.save.permaBanPenalty[21] == 3)
   {
      _root.save.questRewardQuan = Math.floor(_root.questList[q].rewardQuan * 6);
      _root.save.questRewardBlueCoin = Math.floor(_root.questList[q].rewardBlueCoin * 6);
      _root.save.questRewardToken = Math.floor(_root.questList[q].rewardToken * 6);
   }
   else if(_root.save.permaBanPenalty[21] == 2)
   {
      _root.save.questRewardQuan = Math.floor(_root.questList[q].rewardQuan * 4);
      _root.save.questRewardBlueCoin = Math.floor(_root.questList[q].rewardBlueCoin * 4);
      _root.save.questRewardToken = Math.floor(_root.questList[q].rewardToken * 4);
   }
   else if(_root.save.permaBanPenalty[21] == 1)
   {
      _root.save.questRewardQuan = Math.floor(_root.questList[q].rewardQuan * 3);
      _root.save.questRewardBlueCoin = Math.floor(_root.questList[q].rewardBlueCoin * 3);
      _root.save.questRewardToken = Math.floor(_root.questList[q].rewardToken * 3);
   }
   if(_root.save.doubleQuestTime > 0)
   {
      _root.save.questRewardQuan = Math.floor(_root.save.questRewardQuan * 2);
      _root.save.questRewardBlueCoin = Math.floor(_root.save.questRewardBlueCoin * 2);
      _root.save.questRewardToken = Math.floor(_root.save.questRewardToken * 2);
   }
   if(_root.eventName == "Random Quest Day")
   {
      _root.save.questRewardBlueCoin = Math.floor(_root.save.questRewardBlueCoin * 2);
   }
   _root.save.questDescA = _root.questList[q].descA;
   _root.save.questDescB = _root.questList[q].descB;
   _root.save.questDifficulty = _root.questList[q].difficulty;
   _root.save.questCount = 0;
}
function checkStuff()
{
   if(_root.save.questCount > _root.save.questNeed)
   {
      _root.save.questCount = _root.save.questNeed;
   }
   objectiveText.text = _root.save.questDescA + " " + _root.withComma(_root.save.questNeed) + " " + _root.save.questDescB;
   progressText.text = _root.withComma(_root.save.questCount) + " / " + _root.withComma(_root.save.questNeed);
   rewardText.text = "Quest Tokens: " + _root.withComma(_root.save.questRewardToken) + " | Blue Coins: " + _root.withComma(_root.save.questRewardBlueCoin) + "\n" + _root.withComma(_root.save.questRewardQuan) + " [" + _root.save.questReward + "]";
   cost1 = Math.floor(10000 * Math.pow(5,_root.save.questSkipToday));
   cost2 = Math.floor(1000 * Math.pow(5,_root.save.questInstaToday));
   if(cost1 > 99999999)
   {
      cost1 = 100000000;
   }
   if(cost2 > 99999)
   {
      cost2 = 100000;
   }
   cost1Text.text = _root.withComma(cost1);
   cost2Text.text = _root.withComma(cost2);
}
checkStuff();
onEnterFrame = function()
{
   questStat1.text = _root.withComma(_root.save.questTotal);
   questStat2.text = _root.withComma(_root.save.questToday);
   questStat3.text = _root.withComma(_root.save.questRecord);
   tokenDisp.text = _root.withComma(_root.save.questToken);
   checkStuff();
};
