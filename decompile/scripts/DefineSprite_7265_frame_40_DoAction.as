//! status=pending
function choice1()
{
   if(_root.save.awesomeEnergy >= 1)
   {
      _root.save.awesomeEnergy -= 1;
      var _loc2_ = 1;
      while(_loc2_ <= _root.todayEvent)
      {
         yy = _root.clock_year % 10;
         mm = _root.clock_month;
         dd = _root.clock_date;
         if(_root.eventList[yy][mm][dd][_loc2_] == "Receive Event Tokens by adventuring in Awesome Adventures")
         {
            _root.gainEventToken(5);
         }
         _loc2_ = _loc2_ + 1;
      }
      fr = 3 + random(17);
      if(fr == 9 && Math.random() < 0.85)
      {
         fr = 3 + random(17);
      }
      if(fr == 10 && Math.random() < 0.95)
      {
         fr = 3 + random(17);
      }
      if(fr == 18 && _root.save.awesomeReputation > -500)
      {
         fr = 3;
      }
      if(Math.random() < 0.02)
      {
         fr = 33;
      }
      if(_root.save.questType == "Adventure")
      {
         if(_root.save.questSubtype == "Town" || _root.save.questSubtype == "Any")
         {
            _root.save.questCount += 1;
         }
      }
      _root.gainCareerEXP(10,Math.floor(205 + Math.pow(Math.abs(_root.save.awesomeReputation),0.35)),true);
      expToEarn = Math.floor((3500 + Math.sqrt(Math.abs(_root.save.awesomeReputation))) * Math.pow(_root.save.level,0.6) * (_root.save.boost / 100) * (1 + _root.save.petStat[8] * 0.002) * 0.75);
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
      if(_root.save.awesomeBless > 0)
      {
         expToEarn = Math.floor(expToEarn * 2);
         _root.save.awesomeBless -= 1;
      }
      _root.gainEXP(expToEarn);
      _root.dispNews(111,"Gained EXP when adventuring! (+" + _root.withComma(expToEarn) + " EXP)");
      _root.save.awesomeTotalAdv += 1;
      _root.save.awesomeTotalAdv1 += 1;
      if(_root.save.awesomeTotalAdv1 % 90 == 0)
      {
         fr = 32;
      }
      gotoAndStop(fr);
   }
}
function choice2()
{
   if(_root.save.greenCoin >= 2000 && _root.save.awesomeEnergy >= 1)
   {
      _root.save.greenCoin -= 2000;
      _root.save.awesomeEnergy -= 1;
      var _loc2_ = 1;
      while(_loc2_ <= _root.todayEvent)
      {
         yy = _root.clock_year % 10;
         mm = _root.clock_month;
         dd = _root.clock_date;
         if(_root.eventList[yy][mm][dd][_loc2_] == "Receive Event Tokens by adventuring in Awesome Adventures")
         {
            _root.gainEventToken(5);
         }
         _loc2_ = _loc2_ + 1;
      }
      fr = 3 + random(21);
      if(fr == 9 && Math.random() < 0.8)
      {
         fr = 3 + random(21);
      }
      if(fr == 10 && Math.random() < 0.97)
      {
         fr = 3 + random(21);
      }
      if(fr == 18 && _root.save.awesomeReputation > -500)
      {
         fr = 3;
      }
      if(Math.random() < 0.02)
      {
         fr = 33;
      }
      if(_root.save.questType == "Adventure")
      {
         if(_root.save.questSubtype == "Untitled Zone" || _root.save.questSubtype == "Any")
         {
            _root.save.questCount += 1;
         }
      }
      _root.gainCareerEXP(10,Math.floor(215 + Math.pow(Math.abs(_root.save.awesomeReputation),0.35)),true);
      expToEarn = Math.floor((3750 + Math.sqrt(Math.abs(_root.save.awesomeReputation))) * Math.pow(_root.save.level,0.6) * (_root.save.boost / 100) * (1 + _root.save.petStat[8] * 0.002) * 0.75);
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
      if(_root.save.awesomeBless > 0)
      {
         expToEarn = Math.floor(expToEarn * 2);
         _root.save.awesomeBless -= 1;
      }
      _root.gainEXP(expToEarn);
      _root.dispNews(111,"Gained EXP when adventuring! (+" + _root.withComma(expToEarn) + " EXP)");
      _root.save.awesomeTotalAdv += 1;
      _root.save.awesomeTotalAdv2 += 1;
      if(_root.save.awesomeTotalAdv2 % 80 == 0)
      {
         fr = 32;
      }
      gotoAndStop(fr);
   }
}
function choice3()
{
   if(_root.save.greenCoin >= 5000 && _root.save.awesomeEnergy >= 1)
   {
      _root.save.greenCoin -= 5000;
      _root.save.awesomeEnergy -= 1;
      var _loc2_ = 1;
      while(_loc2_ <= _root.todayEvent)
      {
         yy = _root.clock_year % 10;
         mm = _root.clock_month;
         dd = _root.clock_date;
         if(_root.eventList[yy][mm][dd][_loc2_] == "Receive Event Tokens by adventuring in Awesome Adventures")
         {
            _root.gainEventToken(5);
         }
         _loc2_ = _loc2_ + 1;
      }
      fr = 3 + random(21);
      if(fr == 9 && Math.random() < 0.75)
      {
         fr = 3 + random(21);
      }
      if(fr == 10 && Math.random() < 0.99)
      {
         fr = 25;
      }
      if(fr == 18 && _root.save.awesomeReputation > -500)
      {
         fr = 27;
      }
      if(Math.random() < 0.03)
      {
         fr = 30;
      }
      if(Math.random() < 0.01)
      {
         fr = 31;
      }
      if(Math.random() < 0.02)
      {
         fr = 33;
      }
      if(Math.random() < 0.05)
      {
         fr = 34;
      }
      if(Math.random() < 0.05)
      {
         fr = 35;
      }
      if(Math.random() < 0.03)
      {
         fr = 36;
      }
      if(_root.save.questType == "Adventure")
      {
         if(_root.save.questSubtype == "Titled Zone" || _root.save.questSubtype == "Any")
         {
            _root.save.questCount += 1;
         }
      }
      _root.gainCareerEXP(10,Math.floor(225 + Math.pow(Math.abs(_root.save.awesomeReputation),0.35)),true);
      expToEarn = Math.floor((4000 + Math.sqrt(Math.abs(_root.save.awesomeReputation))) * Math.pow(_root.save.level,0.6) * (_root.save.boost / 100) * (1 + _root.save.petStat[8] * 0.002) * 0.75);
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
      if(_root.save.awesomeBless > 0)
      {
         expToEarn = Math.floor(expToEarn * 2);
         _root.save.awesomeBless -= 1;
      }
      _root.gainEXP(expToEarn);
      _root.dispNews(111,"Gained EXP when adventuring! (+" + _root.withComma(expToEarn) + " EXP)");
      _root.save.awesomeTotalAdv += 1;
      _root.save.awesomeTotalAdv3 += 1;
      if(_root.save.awesomeTotalAdv3 % 70 == 0)
      {
         fr = 32;
      }
      gotoAndStop(fr);
   }
}
function choice4()
{
   if(_root.save.greenCoin >= 10000 && _root.save.awesomeEnergy >= 1)
   {
      if(_root.clock_month == 12 || _root.clock_month == 1 || _root.clock_date == 24)
      {
         _root.save.greenCoin -= 10000;
         _root.save.awesomeEnergy -= 1;
         var _loc3_ = 1;
         while(_loc3_ <= _root.todayEvent)
         {
            yy = _root.clock_year % 10;
            mm = _root.clock_month;
            dd = _root.clock_date;
            if(_root.eventList[yy][mm][dd][_loc3_] == "Receive Event Tokens by adventuring in Awesome Adventures")
            {
               _root.gainEventToken(5);
            }
            _loc3_ = _loc3_ + 1;
         }
         fr = 37 + random(3);
         if(Math.random() < 0.1)
         {
            fr = 31;
         }
         if(_root.save.questType == "Adventure")
         {
            if(_root.save.questSubtype == "Cakeland" || _root.save.questSubtype == "Any")
            {
               _root.save.questCount += 1;
            }
         }
         _root.gainCareerEXP(10,Math.floor(225 + Math.pow(Math.abs(_root.save.awesomeReputation),0.35)),true);
         expToEarn = Math.floor((4000 + Math.sqrt(Math.abs(_root.save.awesomeReputation))) * Math.pow(_root.save.level,0.6) * (_root.save.boost / 100) * (1 + _root.save.petStat[8] * 0.002) * 0.75);
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
         if(_root.save.awesomeBless > 0)
         {
            expToEarn = Math.floor(expToEarn * 2);
            _root.save.awesomeBless -= 1;
         }
         _root.gainEXP(expToEarn);
         _root.dispNews(111,"Gained EXP when adventuring! (+" + _root.withComma(expToEarn) + " EXP)");
         _root.save.awesomeTotalAdv += 1;
         _root.save.awesomeTotalAdv4 += 1;
         if(_root.save.awesomeTotalAdv4 % 60 == 0)
         {
            fr = 32;
         }
         gotoAndStop(fr);
      }
      else
      {
         _parent._parent.awesomePop.displayMessage("Cakeland is only available in December, January and the 24th day of each month. Please check back later.");
      }
   }
}
function choice5()
{
   if(!Key.isDown(16))
   {
      _parent._parent.awesomePop.displayMessage("Hold Shift while selecting this option to reset latest adventure choices.");
   }
   else
   {
      _parent._parent.awesomePop.displayMessage("Your latest adventure choices have been reset.");
      _root.save.awesomeAuto = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
   }
}
_root.actiondescription = "";
choice1Text = "Town (Free)";
choice2Text = "Untitled Zone (Cost: 2,000 Green Coins)";
choice3Text = "Titled Zone (Cost: 5,000 Green Coins)";
choice4Text = "Cakeland (Cost: 10,000 Green Coins)";
