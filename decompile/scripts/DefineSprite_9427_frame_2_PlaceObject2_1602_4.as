//! status=pending
on(dragOver,rollOver){
   if(_root.save.hyperDayRem != 1)
   {
      _root.actiondescription = "Shift + Click this button to schedule a Hyper Day tomorrow using 1 EXPILL.\n\nYour EXPILLs: <b>" + _root.withComma(_root.save.botPill) + "</b>\nCraft EXPILLs in the Simulation Cyborg screen.\n\nYou can schedule <b>" + _root.save.hyperDayRem + "</b> more Hyper Days this month.\n\n* Note: You cannot schedule 2 Hyper Days in a row.";
   }
   else
   {
      _root.actiondescription = "Shift + Click this button to schedule a Hyper Day tomorrow using 1 EXPILL.\n\nYour EXPILLs: <b>" + _root.withComma(_root.save.botPill) + "</b>\nCraft EXPILLs in the Simulation Cyborg screen.\n\nYou can schedule <b>1</b> more Hyper Day this month.\n\n* Note: You cannot schedule 2 Hyper Days in a row.";
   }
}


on(release){
   if(Key.isDown(16))
   {
      if(_root.save.hyperDayRem > 0 && _root.save.botPill > 0)
      {
         _root.save.hyperDayRem -= 1;
         _root.save.botPill -= 1;
         if(_root.save.hyperDayDel == 2)
         {
            _root.save.hyperDayDel = 1;
         }
         else
         {
            _root.save.hyperDayDel = 2;
         }
         _root.save.hyperDayCount += 1;
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
         _root.save.hyperDay[_root.save.hyperDayDel] = year * 10000 + month * 100 + date;
         _root.showPopup("Success","You have successfully scheduled a Hyper Day tomorrow. Don\'t forget to play tomorrow to take full advantage of the event!");
      }
      else
      {
         _root.showPopup("Error","You don\'t have any EXPILL. You can craft one in Simulation Cyborg screen.");
      }
      _root.actiondescription = "";
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


