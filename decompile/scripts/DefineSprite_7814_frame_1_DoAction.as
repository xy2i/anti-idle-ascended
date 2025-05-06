//! status=pending
stop();
milestoneTodayArray = [0,10000,25000,50000,100000,250000,500000,1000000,2500000,5000000,10000000,25000000,50000000,100000000,250000000,500000000,1000000000,Infinity];
onEnterFrame = function()
{
   nextMilestoneToday = milestoneTodayArray[_root.save.fishMilestoneToday + 1];
   nextMilestoneTotal = 1000000 * (_root.save.fishMilestoneTotal + 1);
   if(_root.save.fishMilestoneTotal >= 9)
   {
      nextMilestoneTotal = 10000000 + 2500000 * (_root.save.fishMilestoneTotal - 9);
   }
   if(_root.save.fishMilestoneTotal >= 45)
   {
      nextMilestoneTotal = 100000000 + 5000000 * (_root.save.fishMilestoneTotal - 45);
   }
   if(_root.save.fishMilestoneTotal >= 225)
   {
      nextMilestoneTotal = 1000000000 + 10000000 * (_root.save.fishMilestoneTotal - 225);
   }
   if(_root.save.fishScoreToday >= nextMilestoneToday)
   {
      _root.save.fishMilestoneToday += 1;
      _root.fishMilestone = milestoneTodayArray[_root.save.fishMilestoneToday];
      gotoAndStop(3);
   }
   else if(_root.save.fishScore >= nextMilestoneTotal)
   {
      _root.fishMilestone = nextMilestoneTotal;
      _root.save.fishMilestoneTotal += 1;
      gotoAndStop(2);
   }
};
