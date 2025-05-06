//! status=progress
function checkTime()
{
   _root.systemclock = new Date();
   _root.systemtimenow = _root.systemclock.getTime();
   _root.dow = _root.systemclock.getDay();
   cheattest = _root.systemtimenow - _root.recenttime;
   if(cheattest > 500000)
   {
      var _loc2_ = 1;
      while(_loc2_ <= _root.save.gardenCapacity)
      {
         if(_root.save.gardenTrees[_loc2_] != 0 && _root.save.gardenTrees[_loc2_] != undefined)
         {
            _root.save.gardenPurchaseTime[_loc2_] += cheattest;
            _root.save.gardenRecentTime[_loc2_] += cheattest;
         }
         _loc2_ += 1;
      }
      _root.dispNews(1,"Error: System clock change detected (" + cheattest + ").",16711680,9001);
   }
   _root.recenttime = _root.systemtimenow;
   _root.clock_year = _root.systemclock.getYear() + 1900;
   _root.clock_month = _root.systemclock.getMonth() + 1;
   _root.clock_monthID = _root.clock_year * 100 + _root.clock_month;
   _root.clock_date = _root.systemclock.getDate();
   if(_root.shinyWeekTmp == 0 && _root.clock_year == 2015 && _root.clock_month == 1)
   {
      _root.shinyWeekTmp = _root.clock_date;
   }
   if(_root.shinyWeek2Tmp == 0 && _root.clock_year == 2015 && _root.clock_month == 3)
   {
      _root.shinyWeek2Tmp = _root.clock_date;
   }
   _root.clock_hour = _root.systemclock.getHours();
   _root.clock_min = _root.systemclock.getMinutes();
   _root.clock_sec = _root.systemclock.getSeconds();
   _root.todayCode = _root.clock_year * 10000 + _root.clock_month * 100 + _root.clock_date;
   _root.max_date = 31;
   if(_root.clock_month == 4 || _root.clock_month == 6 || _root.clock_month == 9 || _root.clock_month == 11)
   {
      _root.max_date = 30;
   }
   if(_root.clock_month == 2)
   {
      _root.max_date = 28;
      if(_root.clock_year % 4 == 0 && _root.clock_year % 100 != 0 || _root.clock_year % 400 == 0)
      {
         _root.max_date = 29;
      }
   }
   if(isNaN(_root.refresh_year) || _root.refresh_year == 0)
   {
      _root.refresh_year = _root.clock_year;
      _root.refresh_month = _root.clock_month;
      _root.refresh_date = _root.clock_date;
      _root.refresh_max_date = _root.max_date;
   }
   _root.eventName = "Attendance";
   _root.eventMaxToken = 200;
   _root.todayEvent = _root.eventList[_root.clock_year % 10][_root.clock_month][_root.clock_date][0];
   _root.idlerAppreciate = false;
   if(_root.saveid > 4)
   {
      _root.todayEvent = 0;
   }
   if(_root.save.hyperDay[1] == _root.todayCode || _root.save.hyperDay[2] == _root.todayCode)
   {
      _root.todayEvent = 0;
   }
   _loc2_ = 1;
   while(_loc2_ <= _root.todayEvent)
   {
      yy = _root.clock_year % 10;
      mm = _root.clock_month;
      dd = _root.clock_date;
      if(_root.eventList[yy][mm][dd][_loc2_] == "Daily Event Token limit is increased by 300")
      {
         _root.eventMaxToken += 300;
      }
      if(_root.eventList[yy][mm][dd][_loc2_] == "Daily Event Token limit is increased by 800")
      {
         _root.eventMaxToken += 800;
      }
      if(_root.eventList[yy][mm][dd][_loc2_] == "Progress Bar fills at full speed, even when Idle Mode is on")
      {
         _root.idlerAppreciate = true;
      }
      _loc2_ += 1;
   }
   if(_root.saveid >= 20)
   {
      _root.eventName = "Challenge Mode";
      _root.eventMaxToken = 0;
   }
   else if(_root.saveid >= 10)
   {
      _root.eventName = "Speedrun";
      _root.eventMaxToken = 0;
   }
   if(_root.dow == 0)
   {
      _root.daydisplay = "Sunday";
   }
   if(_root.dow == 1)
   {
      _root.daydisplay = "Monday";
   }
   if(_root.dow == 2)
   {
      _root.daydisplay = "Tuesday";
   }
   if(_root.dow == 3)
   {
      _root.daydisplay = "Wednesday";
   }
   if(_root.dow == 4)
   {
      _root.daydisplay = "Thursday";
   }
   if(_root.dow == 5)
   {
      _root.daydisplay = "Friday";
   }
   if(_root.dow == 6)
   {
      _root.daydisplay = "Saturday";
   }
   if(_root.questid > _root.save.questid)
   {
      _root.save.quest_date = _root.clock_date;
   }
   if(_root.clock_sec < 10)
   {
      _root.clock_sec = "0" + _root.clock_sec;
   }
   if(_root.clock_min < 10)
   {
      _root.clock_min = "0" + _root.clock_min;
   }
   if(_root.clock_hour < 10)
   {
      _root.clock_hour = "0" + _root.clock_hour;
   }
   if(_root.clock_date < 10)
   {
      _root.clock_date = "0" + _root.clock_date;
   }
   if(_root.clock_month < 10)
   {
      _root.clock_month = "0" + _root.clock_month;
   }
   _root.clock_display = _root.clock_hour + ":" + _root.clock_min + ":" + _root.clock_sec;
   _root.clock_display2 = _root.clock_year + "-" + _root.clock_month + "-" + _root.clock_date + " " + _root.clock_hour + ":" + _root.clock_min;
   _root.clock_year = _root.systemclock.getYear() + 1900;
   _root.clock_month = _root.systemclock.getMonth() + 1;
   _root.clock_date = _root.systemclock.getDate();
   _root.clock_hour = _root.systemclock.getHours();
   _root.clock_min = _root.systemclock.getMinutes();
   _root.clock_sec = _root.systemclock.getSeconds();
   _root.todayCode = _root.clock_year * 10000 + _root.clock_month * 100 + _root.clock_date;
   tempLegend = 13 + Math.floor(Math.floor(_root.systemtimenow / 86400000) * 13 % 56);
   if(_root.save.fcgLegendDeck != tempLegend)
   {
      _root.save.fcgLegendDeck = tempLegend;
      _root.save.fcgLegendLife = 10;
   }
   if(_root._currentframe == 13)
   {
      if(_root.todayCode != _root.save.todayCode2)
      {
         _loc2_ = 1;
         while(_loc2_ <= 7)
         {
            _root.save.expGraph[_loc2_ - 1] = _root.save.expGraph[_loc2_];
            _root.save.expGraph2[_loc2_ - 1] = _root.save.expGraph2[_loc2_];
            _root.save.coinGraph[_loc2_ - 1] = _root.save.coinGraph[_loc2_];
            _root.save.coinGraph2[_loc2_ - 1] = _root.save.coinGraph2[_loc2_];
            _root.save.greenCoinGraph[_loc2_ - 1] = _root.save.greenCoinGraph[_loc2_];
            _root.save.greenCoinGraph2[_loc2_ - 1] = _root.save.greenCoinGraph2[_loc2_];
            _root.save.blueCoinGraph[_loc2_ - 1] = _root.save.blueCoinGraph[_loc2_];
            _root.save.blueCoinGraph2[_loc2_ - 1] = _root.save.blueCoinGraph2[_loc2_];
            _root.save.whiteCoinGraph[_loc2_ - 1] = _root.save.whiteCoinGraph[_loc2_];
            _root.save.whiteCoinGraph2[_loc2_ - 1] = _root.save.whiteCoinGraph2[_loc2_];
            _loc2_ += 1;
         }
         _loc2_ = 0;
         while(_loc2_ <= 41)
         {
            _root.save.expSauce[_loc2_] = 0;
            _root.save.coinSauce[_loc2_] = 0;
            _root.save.greenCoinSauce[_loc2_] = 0;
            _root.save.blueCoinSauce[_loc2_] = 0;
            _root.save.whiteCoinSauce[_loc2_] = 0;
            _loc2_ += 1;
         }
         _root.save.expGraph[7] = 0;
         _root.save.expGraph2[7] = 0;
         _root.save.coinGraph[7] = 0;
         _root.save.coinGraph2[7] = 0;
         _root.save.greenCoinGraph[7] = 0;
         _root.save.greenCoinGraph2[7] = 0;
         _root.save.blueCoinGraph[7] = 0;
         _root.save.blueCoinGraph2[7] = 0;
         _root.save.whiteCoinGraph[7] = 0;
         _root.save.whiteCoinGraph2[7] = 0;
         _root.save.todayCode2 = _root.todayCode;
      }
      if(_root.todayCode != _root.save.todayCode && (_root.cursoridle < 5 || _root.clock_hour >= 9) && sessionDaily < _root.thisSession / 86400 + 2 && _root.saveid < 10 || _root.anotherDay == true)
      {
         if(_root.anotherDay != true)
         {
            sessionDaily += 1;
         }
         if(_root.save.curBanRefID != _root.clock_monthID)
         {
            _root.save.curBanRefID = _root.clock_monthID;
            _root.save.whiteCoin += _root.save.remStupidity * 10;
            _root.save.remStupidity = _root.save.totalStupidity;
            _root.save.arenaSampleCraft = 3;
            _root.save.hyperDayRem = 3;
            _root.save.regretRem = 1;
         }
         if(_root.clock_date == "01" || _root.todayCode - _root.save.todayCode == 1 || _root.anotherDay == true)
         {
            _root.save.consecutiveDays += 1;
            if(_root.save.maxConsecutiveDays < _root.save.consecutiveDays)
            {
               _root.save.maxConsecutiveDays = _root.save.consecutiveDays;
            }
         }
         else
         {
            _root.save.consecutiveDays = 1;
         }
         if(_root.save.bestLevel >= 7)
         {
            _root.save.dailyPending = true;
            _root.dailyBonusButton.gotoAndStop(2);
         }
         _root.save.todayCode = _root.todayCode;
         if(_root.anotherDay != true)
         {
            _root.save.eventTokenToday = 0;
            _root.save.progBoxToday = 0;
         }
         _root.save.kanaReceived1 = false;
         _root.save.kanaReceived2 = false;
         _root.restockModule(0);
         _loc2_ = 1;
         while(_loc2_ <= 50)
         {
            _root.save.specialStock[_loc2_] = 0;
            _loc2_ += 1;
         }
         _loc2_ = 1;
         while(_loc2_ <= 29)
         {
            if(Math.random() < 0.6)
            {
               _root.save.specialStock[_loc2_] = random(21) + 5;
            }
            if(_root.saveid >= 10)
            {
               _root.save.specialStock[_loc2_] = 5;
            }
            _loc2_ += 1;
         }
         _root.save.specialStock[1] = 1;
         _root.save.specialStock[2] = 5;
         _root.save.specialStock[27] = 1;
         _root.save.specialStock[28] = 1;
         _root.save.specialStock[29] = 1;
         if(_root.save.totalStupidity >= 150)
         {
            _root.save.specialStock[30] = 1;
         }
         else
         {
            _root.save.specialStock[30] = 0;
         }
         _loc2_ = 1;
         while(_loc2_ <= 100)
         {
            if(_root.save.mainQuestRank[_loc2_] != undefined)
            {
               _root.save.mainQuestRank[_loc2_] = undefined;
            }
            _loc2_ += 1;
         }
         _root.save.arenaKommanderSkip = 3;
         _root.save.permaBanRes = 1;
         _root.save.arenaCorruptToday = 0;
         _root.save.arenaBonusChange = 50;
         _root.save.arenaNerfCount = 0;
         _root.save.arenaNerfNext = 1000;
         _root.save.battleDaily = false;
         _root.save.buttonPressToday = 0;
         _root.save.arcadeTodayPercent = 0;
         _root.save.todayHighPong = 0;
         _root.save.todayHighAvoidance = 0;
         _root.save.todayHighMath = 0;
         _root.save.todayHighWhack = 0;
         _root.save.todayHighMind = 0;
         _root.save.todayHighBalance = 0;
         _root.save.todayHighCount = 0;
         _root.save.todayParPong = Math.floor(14000 + Math.random() * 7000) * 100;
         _root.save.todayParAvoidance = Math.floor(5000 + Math.random() * 2500) * 100;
         _root.save.todayParMath = Math.floor(10000 + Math.random() * 5000) * 100;
         _root.save.todayParWhack = Math.floor(15000 + Math.random() * 7500) * 100;
         _root.save.todayParMind = Math.floor(20000 + Math.random() * 10000) * 100;
         _root.save.todayParBalance = Math.floor(28000 + Math.random() * 14000) * 100;
         _root.save.todayParCount = Math.floor(600 + Math.random() * 300) * 10000;
         _root.save.arcadeTradeIn = false;
         _root.save.arcadeBuyCount = 0;
         _root.save.arenaSpookyToday = 0;
         _root.save.arenaTriangleToday = 0;
         _root.save.apocSecretKill = 0;
         _root.save.strangeBoxKill = 0;
         _root.save.triangleLandKill = 0;
         _root.save.triangleShoot = 0;
         _root.save.wcDropToday = 0;
         _root.save.stadiumTodayDeathMatch = 0;
         _root.save.petFullnessRestore = 3;
         _root.save.petHealthRestore = 3;
         _root.save.feedToday = 0;
         _root.save.deathMatchEntry = 1;
         _root.save.arenaChaosLeft = _root.save.arenaChaosMax;
         _root.save.arenaUniqueStock = 1;
         _root.save.questToday = 0;
         _root.save.questSkipToday = 0;
         _root.save.questInstaToday = 0;
         _root.save.fishMilestoneToday = 0;
         _root.save.awesomeBless = 250;
         if(_root.anotherDay != true)
         {
            if(_root.save.fishLevel >= 31 && _root.save.fishLevel <= 50)
            {
               _root.save.fishLevel -= 1;
            }
         }
         if(_root.save.careerLevel[7] >= 100)
         {
            _root.save.deathMatchEntry = 3;
         }
         _root.save.arenaPyramidCraftT = 0;
         _root.save.arenaMegabossCraftT = 0;
         _root.save.arenaCorruptionCraftT = 0;
         _root.save.arenaRevengeCraftT = 0;
         _root.save.arenaEndlessCraftT = 0;
         _root.save.arenaMaxEntry = 10;
         if(_root.save.arenaPyramidEntry < _root.save.arenaMaxEntry)
         {
            _root.save.arenaPyramidEntry = _root.save.arenaMaxEntry;
         }
         if(_root.save.arenaMegabossEntry < _root.save.arenaMaxEntry)
         {
            _root.save.arenaMegabossEntry = _root.save.arenaMaxEntry;
         }
         if(_root.save.arenaCorruptionEntry < _root.save.arenaMaxEntry)
         {
            _root.save.arenaCorruptionEntry = _root.save.arenaMaxEntry;
         }
         if(_root.save.arenaRevengeEntry < _root.save.arenaMaxEntry)
         {
            _root.save.arenaRevengeEntry = _root.save.arenaMaxEntry;
         }
         if(_root.save.arenaEndlessEntry < 1)
         {
            _root.save.arenaEndlessEntry = 1;
         }
         _root.save.fcgPack1 = 1;
         _root.save.fcgPack1Cost = 0;
         _root.save.fcgPack2 = 1;
         _root.save.fcgPack2Cost = 0;
         _root.save.fcgPack3 = 1;
         _root.save.fcgPack3Cost = 0;
         _root.save.fcgPack4 = 1;
         _root.save.fcgPack4Cost = 0;
         _root.save.fcgPack5 = 1;
         _root.save.fcgPack5Cost = 0;
         _root.save.robaconBacon += 15;
         _root.save.freeBacon1 += 15;
         _root.save.freeBacon2 += 30;
         if(_root.save.freeBacon1 > 150)
         {
            _root.save.freeBacon1 = 150;
         }
         if(_root.save.freeBacon2 > 300)
         {
            _root.save.freeBacon2 = 300;
         }
         _root.save.arcadeToken = 25;
         if(_root.save.careerLevel[6] >= 100 && _root.save.arcadeToken < 50)
         {
            _root.save.arcadeToken = 50;
         }
         _root.save.fishFatigue = 0;
         _root.save.fishScoreToday = 0;
         _root.save.fishPetFishCooldown = 50;
         _root.save.fishPetFoodCooldown = 3;
         _root.save.fishFoodCooldown = 100;
         _root.save.fishDrinkCooldown = 5;
         _root.save.boostAutoToday = 0;
         _root.anotherDay = false;
      }
   }
}
_root.eventName = "";
sessionDaily = 0;
_root.shinyWeekTmp = 0;
_root.shinyWeek2Tmp = 0;
var startTime = getTimer();
var numFrames = 0;
var recentSetting = 40;
var recentNumFrames = 0;
var recentStartTime = startTime;
if(isNaN(_root.fps))
{
   _root.fps = 50;
}
upNumber.text = _root.withComma(_root.upnumber);
if(_root.saveGlobal.latestVersion != _root.upnumber)
{
   if(_root.saveGlobal.latestVersion <= 1502)
   {
      _root.saveGlobal.returning1 = true;
   }
   _root.saveGlobal.latestVersion = _root.upnumber;
   upNumber.textColor = 16776960;
}
flashNumber.text = _root.flashVer;
checkTime();
onEnterFrame = function()
{
   numFrames++;
   var _loc2_ = getTimer();
   elapsedSeconds = (_loc2_ - startTime) / 1000;
   actualFPS = numFrames / elapsedSeconds;
   recentNumFrames++;
   if(recentNumFrames >= recentSetting)
   {
      var _loc3_ = (_loc2_ - recentStartTime) / 1000;
      recentFPSoutput = recentNumFrames / _loc3_;
      recentStartTime = _loc2_;
      recentNumFrames = 0;
      fpsDisplay.text = Math.ceil(recentFPSoutput);
      timeDisplay.text = _root.clock_display2;
      if(recentFPSoutput > 30)
      {
         fpsDisplay.textColor = 65280;
      }
      else if(recentFPSoutput > 20)
      {
         fpsDisplay.textColor = 16776960;
      }
      else
      {
         fpsDisplay.textColor = 16711680;
      }
      delay = 0;
      checkTime();
   }
   _root.fpsnoround = recentFPSoutput;
   _root.fps = Math.ceil(recentFPSoutput);
   if(_root.fps < 5)
   {
      _root.fps = 5;
   }
   if(_root.house.mainArcade._currentframe == 26 && _root.fps < 30)
   {
      _root.fps = 30;
   }
   if(isNaN(_root.fps))
   {
      _root.fps = 50;
   }
};
_root.isMouseDown = false;
var mouseListener = new Object();
mouseListener.onMouseDown = function()
{
   _root.isMouseDown = true;
};
mouseListener.onMouseUp = function()
{
   _root.isMouseDown = false;
};
Mouse.addListener(mouseListener);
