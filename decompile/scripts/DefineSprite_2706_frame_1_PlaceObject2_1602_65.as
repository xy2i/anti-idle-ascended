//! status=pending
on(release){
   if(_root.clock_month == 4 && _root.clock_date == 1 || _root.clock_month == 3 && _root.clock_date == 31)
   {
      _root.house.gotoAndStop(16);
   }
   else
   {
      _root.showPopup("House","What are you talking about? You are in your house!");
   }
}


