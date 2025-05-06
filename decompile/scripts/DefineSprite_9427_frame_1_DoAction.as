//! status=pending
stop();
onEnterFrame = function()
{
   if(_root.saveid >= 10 || _root.save.bestLevel < 1250)
   {
      fr = 1;
   }
   else
   {
      year = _root.clock_year;
      month = _root.clock_month;
      date = _root.clock_date + 1;
      if(date > _root.max_date)
      {
         date -= _root.max_date;
         month += 1;
      }
      if(month > 12)
      {
         month -= 12;
         year += 1;
      }
      tomorrowCode = year * 10000 + month * 100 + date;
      if(_root.save.hyperDay[1] == _root.todayCode || _root.save.hyperDay[2] == _root.todayCode)
      {
         fr = 4;
      }
      else if(_root.save.hyperDay[1] == tomorrowCode || _root.save.hyperDay[2] == tomorrowCode)
      {
         fr = 3;
      }
      else if(_root.save.hyperDayRem > 0)
      {
         fr = 2;
      }
      else
      {
         fr = 5;
      }
   }
   gotoAndStop(fr);
};
