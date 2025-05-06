//! status=pending
function checkAsc()
{
   t1.text = _root.withComma(_root.save.remStupidity) + " / " + _root.withComma(_root.save.totalStupidity);
   multiplier = 1;
   if(_root.saveid == 23)
   {
      multiplier = 0.75;
   }
   if(_root.saveid == 24)
   {
      multiplier = 0.35;
   }
   if(_root.saveid == 4)
   {
      multiplier = _root.save.dbExp / 100;
   }
   ascentMult = _root.save.banned / 10;
   if(ascentMult > 0.5)
   {
      ascentMult = 0.5;
   }
   multiplier += ascentMult;
   var _loc2_ = 1;
   while(_loc2_ <= _root.todayEvent)
   {
      yy = _root.clock_year % 10;
      mm = _root.clock_month;
      dd = _root.clock_date;
      if(_root.eventList[yy][mm][dd][_loc2_] == "Gain 10% more EXP from all sources")
      {
         multiplier += 0.1;
      }
      if(_root.eventList[yy][mm][dd][_loc2_] == "Gain 20% more EXP from all sources")
      {
         multiplier += 0.2;
      }
      if(_root.eventList[yy][mm][dd][_loc2_] == "Gain 30% more EXP from all sources")
      {
         multiplier += 0.3;
      }
      if(_root.eventList[yy][mm][dd][_loc2_] == "Gain 50% more EXP from all sources")
      {
         multiplier += 0.5;
      }
      _loc2_ = _loc2_ + 1;
   }
   t2.text = _root.withComma(multiplier * 100) + "%";
   t3.text = "+" + _root.withComma(_root.save.ascStupidity * 5) + "%";
   t4.text = _root.withComma(multiplier * 100 + _root.save.ascStupidity * 5) + "%";
   cost = (_root.save.ascStupidity + 1) * (_root.save.ascStupidity + 2) / 2;
   if(_root.save.ascStupidity >= 10)
   {
      cost *= _root.save.ascStupidity - 8;
   }
   if(_root.save.ascStupidity >= 20)
   {
      cost *= 2;
   }
   if(_root.save.ascStupidity >= 50)
   {
      cost *= 5;
   }
   if(_root.save.ascStupidity >= 100)
   {
      cost = Infinity;
   }
   t5.text = "Increase EXP Multiplier by 5% (Ascension Point -" + _root.withComma(cost) + ")";
   daysLeft = _root.max_date - _root.clock_date;
   if(daysLeft < 1)
   {
      t6.text = "< 1 day";
   }
   else if(daysLeft == 1)
   {
      t6.text = "1 day";
   }
   else
   {
      t6.text = daysLeft + " days";
   }
   t7.text = "+" + _root.withComma(_root.save.remStupidity * 10);
}
function checkAutoAp()
{
   if(_root.save.autoAp < 1)
   {
      autoApText.text = "OFF";
   }
   else if(_root.save.autoAp == 1)
   {
      autoApText.text = "Up to 1 time (Ascension Point -" + _root.withComma(accumCost[_root.save.autoAp]) + ", EXP +" + _root.save.autoAp * 5 + "%)";
   }
   else
   {
      autoApText.text = "Up to " + _root.save.autoAp + " times (Ascension Point -" + _root.withComma(accumCost[_root.save.autoAp]) + ", EXP +" + _root.save.autoAp * 5 + "%)";
   }
}
accumCost = new Array();
accumCost[0] = 0;
ti = 1;
while(ti <= 20)
{
   tmpCost = ti * (ti + 1) / 2;
   if(ti >= 10)
   {
      tmpCost *= ti - 9;
   }
   accumCost.push(accumCost[ti - 1] + tmpCost);
   ti++;
}
checkAsc();
checkAutoAp();
tempAscCount = _root.save.banned;
onEnterFrame = function()
{
   if(_root.save.banned != tempAscCount)
   {
      gotoAndStop(5);
   }
};
