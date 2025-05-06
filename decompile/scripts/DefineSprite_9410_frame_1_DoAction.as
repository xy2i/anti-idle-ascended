//! status=pending
function loadEvent()
{
   year = _root.clock_year;
   month = _root.clock_month;
   date = _root.clock_date + ID;
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
   fcode = year * 10000 + month * 100 + date;
   if(_root.save.hyperDay[1] == fcode || _root.save.hyperDay[2] == fcode)
   {
      gotoAndStop(6);
   }
   else if(_root.eventRating[year % 10][month][date] >= 10)
   {
      gotoAndStop(5);
   }
   else if(_root.eventRating[year % 10][month][date] >= 3)
   {
      gotoAndStop(4);
   }
   else if(_root.eventRating[year % 10][month][date] >= 1)
   {
      gotoAndStop(3);
   }
   else if(_root.eventRating[year % 10][month][date] == 0)
   {
      gotoAndStop(2);
   }
}
ID = Math.round((_X - 25) / 50);
loadEvent();
del = true;
onEnterFrame = function()
{
   del = !del;
   if(del == true)
   {
      loadEvent();
   }
};
onRollOver = function()
{
   if(_root.save.hyperDay[1] == fcode || _root.save.hyperDay[2] == fcode)
   {
      _root.actiondescription = "<b>Hyper Day</b>\nThis is a Hyper Day. On a Hyper Day, you gain 300% more EXP from all sources except the Progress Bar, LolMarket and Awesome Adventures. Other events (listed below) will not take place.\n\n<b>Events that would normally occur on " + year + "-" + month + "-" + date + "</b>\n\n" + _root.displayEvent(year % 10,month,date);
   }
   else
   {
      _root.actiondescription = "<b>Events on " + year + "-" + month + "-" + date + "</b>\n\n" + _root.displayEvent(year % 10,month,date);
   }
};
onRollOut = function()
{
   _root.actiondescription = "";
};
onDragOver = onRollOver;
onDragOut = onRollOut;
