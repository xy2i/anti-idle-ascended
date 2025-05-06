//! status=pending
stop();
curMilestone = Math.floor(_root.save.banned / 100);
if(_root.save.banned >= 50)
{
   curMilestone += 1;
}
if(_root.save.ascMilestone < curMilestone)
{
   _root.save.ascMilestone += 1;
   milestoneLevel = _root.save.ascMilestone * 100 - 100;
   if(_root.save.ascMilestone == 1)
   {
      milestoneLevel = 50;
   }
   ascPointReward = Math.max(milestoneLevel,200);
   if(ascPointReward > 10000)
   {
      ascPointReward = 10000;
   }
   _root.save.totalStupidity += ascPointReward;
   _root.save.remStupidity += ascPointReward;
   _root.gainWhiteCoinB(Math.min(250 * ascPointReward,250000),39);
   gotoAndStop(2);
}
