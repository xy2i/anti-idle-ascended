//! status=pending
on(dragOver,rollOver){
   cLevel = _root.save.careerLevel[7];
   _root.actiondescription = "<b>Racer</b>\nLevel: <b>" + cLevel + "</b>";
   if(cLevel >= 0)
   {
      _root.actiondescription += "\n\n<b>When activated:</b>";
      _root.actiondescription += "\nEXP/Coin gain in Stadium +" + cLevel * 0.5 + "%";
      _root.actiondescription += "\nStadium Token gain +" + cLevel * 1 + "%";
   }
   if(cLevel >= 100)
   {
      _root.actiondescription += "\n\n<b>Level 100 Bonus:</b>\n";
      _root.actiondescription += "You can play in Death Match 3 times per day instead of 1\nGreen Coin reward in Stadium +100%";
   }
   if(cLevel >= 200)
   {
      _root.actiondescription += "\n\n<b>Level 200 Bonus:</b>\n";
      _root.actiondescription += "Energy recovers 30% more quickly\nBlue Coin reward in Stadium +300%";
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


