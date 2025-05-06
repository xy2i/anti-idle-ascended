//! status=pending
stop();
cashReward = 0;
while(_root.save.fcgRewardedLevel < _root.save.fcgLevel)
{
   _root.save.fcgRewardedLevel += 1;
   if(_root.save.fcgRewardedLevel >= 50)
   {
      cashReward += _root.save.fcgRewardedLevel * 5000;
   }
   else if(_root.save.fcgRewardedLevel >= 40)
   {
      cashReward += _root.save.fcgRewardedLevel * 2000;
   }
   else if(_root.save.fcgRewardedLevel >= 30)
   {
      cashReward += _root.save.fcgRewardedLevel * 1000;
   }
   else if(_root.save.fcgRewardedLevel >= 20)
   {
      cashReward += _root.save.fcgRewardedLevel * 500;
   }
   else if(_root.save.fcgRewardedLevel >= 10)
   {
      cashReward += _root.save.fcgRewardedLevel * 200;
   }
   else
   {
      cashReward += 1000;
   }
}
if(cashReward > 99999999)
{
   cashReward = 99999999;
}
if(cashReward > 0)
{
   gotoAndStop(2);
}
