//! status=pending
function checkInfo()
{
   achModeText.text = _root.achMode;
   if(_root.achMode != "All")
   {
      achArray = [zeroItem];
      var _loc2_ = 1;
      while(_loc2_ <= _root.totalachievements)
      {
         ID = _root.achList[_loc2_].ID;
         if(_root.achMode == "Earned")
         {
            if(!isNaN(_root.save.achEarnTime[ID]))
            {
               achArray.push(_loc2_);
            }
         }
         else if(_root.achMode == "Unearned")
         {
            if(isNaN(_root.save.achEarnTime[ID]))
            {
               achArray.push(_loc2_);
            }
         }
         _loc2_ = _loc2_ + 1;
      }
   }
   _root.achViewPage = achPage;
   achievementCount.text = _root.awards + " / " + _root.totalachievements;
   sAchievementCount.text = _root.sawards + " / " + _root.totalsachievements;
   rewardPct = _root.achRedCoin / 100;
   if(rewardPct * 100 % 100 == 0)
   {
      rewardPct += ".00";
   }
   else if(rewardPct * 100 % 10 == 0)
   {
      rewardPct += "0";
   }
   achievementRc.text = "+" + rewardPct + "%";
   if(walkText.text == "tJv89gX6")
   {
      _root.save.walkthru = 1337;
   }
   if(walkText.text == _root.luckyNumber)
   {
      _root.save.support = 1337;
   }
   walkText.restrict = "0-9A-Za-z";
   if(_root.save.kanaReceived1 != true && walkText.text != "" && !isNaN(walkText.text * 1) && walkText.text * 1 % 10 == 7 && walkText.text * 1 >= 10000000 && _root.save.bestLevel >= 150 && _root.saveid < 10)
   {
      _root.checkRefundCode(walkText.text);
      if(_root.correctTier == 23 && _root.emptyAccessorySlot >= 1)
      {
         _root.save.kanaReceived1 = true;
         _root.getArenaAccessory(39,"Medal",63,0,0,0,39,39,39,1,0,1,0,10,706,"Coin","","",0,Infinity,true,false,false,false,35,"Kana Warrior","Thank you for playing Kana Warrior!",true);
      }
   }
   if(_root.save.kanaReceived2 != true && walkText.text != "" && !isNaN(walkText.text * 1) && walkText.text * 1 % 10 == 7 && walkText.text * 1 >= 10000000 && _root.save.bestLevel >= 150 && _root.saveid < 10)
   {
      _root.checkRefundCode(walkText.text);
      if(_root.correctTier == 25 && _root.emptyArmorSlot >= 1)
      {
         _root.save.kanaReceived2 = true;
         _root.getArenaArmor(39,"Hat",142,39,0,39,39,39,39,9999,0,9999,0,10,706,"Coin","Attack","Attack Power",0,Infinity,true,false,true,false,false,35,"Kana King","",true);
      }
   }
   if(walkText.text.indexOf("fbbck") == 0)
   {
      tempR = _root.ddec(walkText.text);
      if(tempR == _root.kongregate_username + ">D>T1ặ" && _root.save.dt < 1)
      {
         _root.save.dt = 1;
         _root.showPopup("Thank you!","Thank you for your donation! You are now eligible for tier 1 donor-only features.");
      }
      if(tempR == _root.kongregate_username + ">D>T2ằ" && _root.save.dt < 2)
      {
         _root.save.dt = 2;
         _root.showPopup("Thank you!","Thank you for your donation! You are now eligible for tier 2 donor-only features.");
      }
      if(tempR == _root.kongregate_username + ">D>T3ẳ" && _root.save.dt < 3)
      {
         _root.save.dt = 3;
         _root.showPopup("Thank you!","Thank you for your donation! You are now eligible for tier 3 donor-only features.");
      }
      if(tempR == _root.kongregate_username + ">D>T4ẵ" && _root.save.dt < 4)
      {
         _root.save.dt = 4;
         _root.showPopup("Thank you!","Thank you for your donation! You are now eligible for tier 4 donor-only features.");
      }
      if(tempR == _root.kongregate_username + ">D>T5ậặ" && _root.save.dt < 5)
      {
         _root.save.dt = 5;
         _root.showPopup("Thank you!","Thank you for your donation! You are now eligible for tier 5 donor-only features.");
      }
      if(tempR == _root.kongregate_username + ">D>T6ầằ" && _root.save.dt < 6)
      {
         _root.save.dt = 6;
         _root.showPopup("Thank you!","Thank you for your donation! You are now eligible for tier 6 donor-only features.");
      }
      if(tempR == _root.kongregate_username + ">D>T7ẩẳ" && _root.save.dt < 7)
      {
         _root.save.dt = 7;
         _root.showPopup("Thank you!","Thank you for your donation! You are now eligible for tier 7 donor-only features.");
      }
      if(tempR == _root.kongregate_username + ">D>T8ẫẵ" && _root.save.dt < 8)
      {
         _root.save.dt = 8;
         _root.showPopup("Thank you!","Thank you for your donation! You are now eligible for tier 8 donor-only features.");
      }
   }
   if(_root.save.refundReceived == false && walkText.text != "" && !isNaN(walkText.text * 1) && walkText.text * 1 % 10 == 7 && walkText.text * 1 >= 10000000 && _root.save.bestLevel < 150 && _root.save.refundCooldown <= 0 && _root.saveid < 10)
   {
      _root.checkRefundCode(walkText.text);
      if(_root.correctTier == 0)
      {
         _root.save.refundCooldown = 60;
         _root.showPopup("Invalid Code","The code you entered is invalid. Please try again in 1 minute.");
      }
      if(_root.correctTier != 0 && _root.correctTier <= 17)
      {
         _root.save.refundReceived = true;
         _root.save.refundCode = walkText.text;
         _root.save.refundTier = _root.correctTier;
         if(_root.correctTier == 1)
         {
            _root.save.expLag += 11139240;
            _root.save.coinLag += 11139240;
            _root.save.mysteryBox[10] += 1;
            _root.save.eventToken += 1000;
            _root.save.houseVer = 1080;
            _root.save.totalPlayTime += 2700;
            _root.save.ascendPlayTime += 2700;
         }
         else if(_root.correctTier == 2)
         {
            _root.save.expLag += 142308240;
            _root.save.coinLag += 142308240;
            _root.save.mysteryBox[10] += 3;
            _root.save.eventToken += 3000;
            _root.save.houseVer = 2160;
            _root.save.totalPlayTime += 5400;
            _root.save.ascendPlayTime += 5400;
         }
         else if(_root.correctTier == 3)
         {
            _root.save.expLag += 718206990;
            _root.save.coinLag += 718206990;
            _root.save.mysteryBox[10] += 6;
            _root.save.eventToken += 6000;
            _root.save.houseVer = 4320;
            _root.save.totalPlayTime += 10800;
            _root.save.ascendPlayTime += 10800;
         }
         else if(_root.correctTier == 4)
         {
            _root.save.expLag += 2425960490;
            _root.save.coinLag += 2425960490;
            _root.save.mysteryBox[10] += 10;
            _root.save.eventToken += 10000;
            _root.save.houseVer = 8640;
            _root.save.totalPlayTime += 21600;
            _root.save.ascendPlayTime += 21600;
         }
         else if(_root.correctTier == 5)
         {
            _root.save.expLag += 6502618740;
            _root.save.coinLag += 6502618740;
            _root.save.mysteryBox[10] += 15;
            _root.save.eventToken += 15000;
            _root.save.houseVer = 17280;
            _root.save.totalPlayTime += 43200;
            _root.save.ascendPlayTime += 43200;
         }
         else if(_root.correctTier == 6)
         {
            _root.save.expLag += 17849291240;
            _root.save.coinLag += 17849291240;
            _root.save.mysteryBox[10] += 20;
            _root.save.eventToken += 20000;
            _root.save.houseVer = 34560;
            _root.save.totalPlayTime += 86400;
            _root.save.ascendPlayTime += 86400;
         }
         else if(_root.correctTier == 7)
         {
            _root.save.expLag += 52052112490;
            _root.save.coinLag += 52052112490;
            _root.save.mysteryBox[10] += 25;
            _root.save.eventToken += 25000;
            _root.save.houseVer = 69120;
            _root.save.totalPlayTime += 172800;
            _root.save.ascendPlayTime += 172800;
         }
         else if(_root.correctTier == 8)
         {
            _root.save.expLag += 142855457490;
            _root.save.coinLag += 142855457490;
            _root.save.mysteryBox[10] += 30;
            _root.save.eventToken += 30000;
            _root.save.houseVer = 138240;
            _root.save.totalPlayTime += 345600;
            _root.save.ascendPlayTime += 345600;
         }
         else if(_root.correctTier == 9)
         {
            _root.save.expLag += 303648802490;
            _root.save.coinLag += 303648802490;
            _root.save.mysteryBox[10] += 35;
            _root.save.eventToken += 35000;
            _root.save.houseVer = 241920;
            _root.save.totalPlayTime += 604800;
            _root.save.ascendPlayTime += 604800;
         }
         else if(_root.correctTier == 10)
         {
            _root.save.expLag += 719820069990;
            _root.save.coinLag += 719820069990;
            _root.save.mysteryBox[10] += 40;
            _root.save.eventToken += 40000;
            _root.save.houseVer = 345600;
            _root.save.totalPlayTime += 864000;
            _root.save.ascendPlayTime += 864000;
         }
         else if(_root.correctTier == 11)
         {
            _root.save.expLag += 1405968837490;
            _root.save.coinLag += 999999999999;
            _root.save.mysteryBox[10] += 50;
            _root.save.eventToken += 50000;
            _root.save.houseVer = 518400;
            _root.save.totalPlayTime += 1296000;
            _root.save.ascendPlayTime += 1296000;
         }
         else if(_root.correctTier == 12)
         {
            _root.save.expLag += 2500000000000;
            _root.save.coinLag += 999999999999;
            _root.save.mysteryBox[10] += 75;
            _root.save.eventToken += 75000;
            _root.save.houseVer = 691200;
            _root.save.totalPlayTime += 1728000;
            _root.save.ascendPlayTime += 1728000;
         }
         else if(_root.correctTier == 13)
         {
            _root.save.expLag += 2500000000000;
            _root.save.coinLag += 999999999999;
            _root.save.mysteryBox[10] += 100;
            _root.save.eventToken += 100000;
            _root.save.houseVer = 864000;
            _root.save.banned += 2;
            _root.save.stupidity += 2;
            _root.save.totalStupidity += 2;
            _root.save.remStupidity += 2;
            _root.save.permaStupidity += 2;
            _root.save.speedRunAscend = 43200000;
            _root.save.totalPlayTime += 2160000;
            _root.save.ascendPlayTime += 2160000;
         }
         else if(_root.correctTier == 14)
         {
            _root.save.expLag += 2500000000000;
            _root.save.coinLag += 999999999999;
            _root.save.mysteryBox[10] += 150;
            _root.save.eventToken += 150000;
            _root.save.houseVer = 1036800;
            _root.save.banned += 5;
            _root.save.stupidity += 5;
            _root.save.permaStupidity += 5;
            _root.save.totalStupidity += 5;
            _root.save.remStupidity += 5;
            _root.save.speedRunAscend = 43200000;
            _root.save.totalPlayTime += 2592000;
            _root.save.ascendPlayTime += 2592000;
         }
         else if(_root.correctTier == 15)
         {
            _root.save.expLag += 2500000000000;
            _root.save.coinLag += 999999999999;
            _root.save.mysteryBox[10] += 200;
            _root.save.eventToken += 200000;
            _root.save.houseVer = 1209600;
            _root.save.banned += 10;
            _root.save.stupidity += 10;
            _root.save.permaStupidity += 10;
            _root.save.totalStupidity += 10;
            _root.save.remStupidity += 10;
            _root.save.speedRunAscend = 43200000;
            _root.save.totalPlayTime += 3024000;
            _root.save.ascendPlayTime += 3024000;
         }
         else if(_root.correctTier == 16)
         {
            _root.save.expLag += 2500000000000;
            _root.save.coinLag += 999999999999;
            _root.save.mysteryBox[10] += 250;
            _root.save.eventToken += 250000;
            _root.save.houseVer = 1382400;
            _root.save.banned += 20;
            _root.save.stupidity += 20;
            _root.save.permaStupidity += 20;
            _root.save.totalStupidity += 20;
            _root.save.remStupidity += 20;
            _root.save.speedRunAscend = 43200000;
            _root.save.totalPlayTime += 3456000;
            _root.save.ascendPlayTime += 3456000;
         }
         else if(_root.correctTier == 17)
         {
            _root.save.expLag += 2500000000000;
            _root.save.coinLag += 999999999999;
            _root.save.mysteryBox[10] += 300;
            _root.save.eventToken += 300000;
            _root.save.houseVer = 1555200;
            _root.save.banned += 30;
            _root.save.stupidity += 30;
            _root.save.permaStupidity += 30;
            _root.save.totalStupidity += 30;
            _root.save.remStupidity += 30;
            _root.save.speedRunAscend = 43200000;
            _root.save.totalPlayTime += 3888000;
            _root.save.ascendPlayTime += 3888000;
         }
      }
   }
   if(walkText.text == "Hyper2" && _root.save.reviveEvent52 != true && _root.saveid < 10)
   {
      _root.save.reviveEvent52 = true;
      _root.save.whiteCoin += 250;
      _root.save.shinyToken += 10;
      _root.save.botPill += 1;
      _root.showPopup("Success","Gift Code successfully redeemed.");
   }
}
achPage = _root.achViewPage;
toRefresh = 5;
_root.submitAll();
checkInfo();
onEnterFrame = function()
{
   toRefresh += 1;
   if(toRefresh > 5)
   {
      toRefresh = 0;
      checkInfo();
   }
};
