//! status=pending
onEnterFrame = function()
{
   todayEventText.text = _root.displayEvent(_root.clock_year % 10,_root.clock_month,_root.clock_date);
   if(_root.saveid > 4)
   {
      todayEventText.text = "Events are disabled in Speedrun and Challenge Mode.";
   }
   if(_root.save.hyperDay[1] == _root.todayCode || _root.save.hyperDay[2] == _root.todayCode)
   {
      todayEventText.text = "[HYPER DAY EVENT]\n* Gain 300% more EXP from all sources except the Progress Bar, LolMarket and Awesome Adventures";
   }
   tokenDisp.text = _root.withComma(_root.save.eventToken);
   tokenDisp2.text = _root.withComma(_root.save.eventTokenToday) + " / " + _root.withComma(_root.eventMaxToken);
};
