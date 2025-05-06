//! status=pending
stop();
dayMissed = -1;
medalMissed = -1;
costArr = [0,2500,5000,10000,25000,50000,Infinity];
medCost = 0;
_root.save.curDateID = _root.refresh_date;
if(_root.save.curSheetID != _root.refresh_year * 100 + _root.refresh_month)
{
   if(_root.save.curAttMiss >= 1 && _root.save.curAttMiss <= 5)
   {
      dayMissed = _root.save.curAttMiss;
      medalMissed = _root.save.curSheetID;
      medCost = costArr[dayMissed];
   }
   _root.save.curSheetID = _root.refresh_year * 100 + _root.refresh_month;
   _root.save.curAttStamp = 0;
}
durText.text = "< " + _root.getShortMonthName(_root.refresh_month) + ". 01, " + _root.refresh_year + " - " + _root.getShortMonthName(_root.refresh_month) + ". " + _root.refresh_max_date + ", " + _root.refresh_year + " >";
_root.save.curAttStamp += 1;
if(_root.refresh_year == 2015 && _root.refresh_month == 10 && _root.refresh_date <= 4)
{
   if(_root.save.curAttStamp < _root.refresh_date)
   {
      _root.save.curAttStamp = _root.refresh_date;
      if(_root.refresh_date == 2)
      {
         _root.save.mysteryBox[10] += 3;
      }
      if(_root.refresh_date == 3)
      {
         _root.save.mysteryBox[10] += 4;
      }
      if(_root.refresh_date == 4)
      {
         _root.save.mysteryBox[10] += 5;
      }
   }
}
_root.save.curAttMiss = _root.refresh_max_date - _root.save.curAttStamp;
todayReward = _root.checkAttReward(_root.save.curAttStamp);
rewardText = "";
if(todayReward == 1)
{
   rewardText = "1 Attendance Box";
   _root.save.mysteryBox[6] += 1;
}
else if(todayReward == 2)
{
   rewardText = "3 Attendance Boxes";
   _root.save.mysteryBox[6] += 3;
}
else if(todayReward == 3)
{
   rewardText = "1 Supply Crate";
   _root.save.mysteryBox[10] += 1;
}
else if(todayReward == 4)
{
   rewardText = "3 Supply Crates";
   _root.save.mysteryBox[10] += 3;
}
else if(todayReward == 5)
{
   rewardText = "50 Shiny Tokens";
   _root.save.shinyToken += 50;
}
else if(todayReward == 6)
{
   rewardText = "150 Shiny Tokens";
   _root.save.shinyToken += 150;
}
else if(todayReward == 7)
{
   rewardText = "500 Shiny Tokens";
   _root.save.shinyToken += 500;
}
else if(todayReward == 8)
{
   rewardText = "Perfect Attendance Medal";
   _root.save.curAttMedPend = _root.save.curSheetID;
}
else if(todayReward == 9)
{
   rewardText = "1 EXPILL";
   _root.save.botPill += 1;
}
todayRewardText.text = "For playing today, you have received [" + rewardText + "]!";
