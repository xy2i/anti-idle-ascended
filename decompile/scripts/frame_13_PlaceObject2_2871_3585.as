//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "<b><font color=\'#FFFF00\'>Adventure Reminder</font></b>\nDisplays your current Adventure Energy.\nIf you are too busy to adventure, you can also Shift + Click the Adventure Reminder to convert all of your remaining Adventure Energy into EXP. It will cost you 500,000 Green Coins.";
   _root.actiondescription += "\n\nEnergy: <b>" + _root.save.awesomeEnergy + "</b>";
   cexpToEarn = Math.floor(160 + Math.pow(Math.abs(_root.save.awesomeReputation),0.35));
   expToEarn = Math.floor((2800 + Math.sqrt(Math.abs(_root.save.awesomeReputation))) * Math.pow(_root.save.level,0.6) * (_root.save.boost / 100) * (1 + _root.save.petStat[8] * 0.002) * 0.75);
   if(_root.save.permaBanPenalty[12] == 3)
   {
      expToEarn = Math.floor(expToEarn * 3);
   }
   else if(_root.save.permaBanPenalty[12] == 2)
   {
      expToEarn = Math.floor(expToEarn * 2.2);
   }
   else if(_root.save.permaBanPenalty[12] == 1)
   {
      expToEarn = Math.floor(expToEarn * 1.8);
   }
   cexpToEarn *= Math.max(_root.save.awesomeEnergy,0);
   expToEarn *= Math.max(_root.save.awesomeEnergy,0);
   if(_root.save.careerActive[10] <= 0 && _root.save.careerBoost[10] <= 0)
   {
      cexpToEarn = 0;
   }
   _root.actiondescription += "\nEXP: <b>+" + _root.withComma(expToEarn) + "</b>\nCareer EXP: <b>+" + _root.withComma(cexpToEarn) + "</b>";
}


on(release){
   if(_root.save.awesomeEnergy > 0 && _root.save.greenCoin >= 500000 && Key.isDown(16))
   {
      _root.save.greenCoin -= 500000;
      cexpToEarn = Math.floor(160 + Math.pow(Math.abs(_root.save.awesomeReputation),0.35));
      expToEarn = Math.floor((2800 + Math.sqrt(Math.abs(_root.save.awesomeReputation))) * Math.pow(_root.save.level,0.6) * (_root.save.boost / 100) * (1 + _root.save.petStat[8] * 0.002) * 0.75);
      if(_root.save.permaBanPenalty[12] == 3)
      {
         expToEarn = Math.floor(expToEarn * 3);
      }
      else if(_root.save.permaBanPenalty[12] == 2)
      {
         expToEarn = Math.floor(expToEarn * 2.2);
      }
      else if(_root.save.permaBanPenalty[12] == 1)
      {
         expToEarn = Math.floor(expToEarn * 1.8);
      }
      cexpToEarn *= Math.max(_root.save.awesomeEnergy,0);
      expToEarn *= Math.max(_root.save.awesomeEnergy,0);
      _root.save.awesomeEnergy = 0;
      _root.gainCareerEXP(10,cexpToEarn,true);
      _root.gainEXP(expToEarn,14);
      _root.dispNews(111,"Converted all Energy into EXP! (+" + _root.withComma(expToEarn) + " EXP)");
      _root.actiondescription = "";
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


