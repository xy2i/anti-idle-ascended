//! status=progress
function getFullMonthName(monthCount)
{
   monthArr = ["","January","February","March","April","May","June","July","August","September","October","November","December"];
   return monthArr[monthCount];
}
function getShortMonthName(monthCount)
{
   monthArr = ["","Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"];
   return monthArr[monthCount];
}
function setInitDeck(deckCode)
{
   tempDeckArray = deckCode.split(".");
   myDeckArray = new Array();
   var _loc3_ = 0;
   while(_loc3_ <= tempDeckArray.length - 1)
   {
      if(tempDeckArray[_loc3_] > 100)
      {
         tempDeckArray[_loc3_] = 100;
      }
      var _loc4_ = 1;
      while(_loc4_ <= tempDeckArray[_loc3_])
      {
         myDeckArray.push(tempDeckArray[_loc3_ + 1]);
         _loc4_ += 1;
      }
      _loc3_ += 2;
   }
   planDeck = new Array();
   _loc3_ = 1;
   while(_loc3_ <= 400)
   {
      planDeck[_loc3_] = 0;
      _loc3_ += 1;
   }
   if(myDeckArray.length > 10 && myDeckArray.length <= 100)
   {
      _loc3_ = 0;
      while(_loc3_ <= myDeckArray.length - 1)
      {
         planDeck[myDeckArray[_loc3_]] += 1;
         _loc3_ += 1;
      }
   }
   _loc3_ = 1;
   while(_loc3_ <= 400)
   {
      _root.save.fcgOwned[_loc3_] += planDeck[_loc3_];
      _root.save.fcgDeck[_loc3_] = planDeck[_loc3_];
      _loc3_ += 1;
   }
   _root.save.fcgTotalCards = myDeckArray.length;
}
function checkAttReward(dayCount)
{
   if(dayCount == _root.refresh_max_date)
   {
      return 8;
   }
   if(dayCount == _root.refresh_max_date - 1)
   {
      return 7;
   }
   if(dayCount == 14)
   {
      return 9;
   }
   if(dayCount == 24)
   {
      return 6;
   }
   if(dayCount == 8 || dayCount == 16)
   {
      return 5;
   }
   if(dayCount == 1 || dayCount == 9 || dayCount == 25 || dayCount == 28)
   {
      return 4;
   }
   if(dayCount == 2 || dayCount == 3 || dayCount == 4 || dayCount == 12 || dayCount == 17 || dayCount == 18 || dayCount == 19 || dayCount == 20)
   {
      return 3;
   }
   if(dayCount >= 21 || dayCount == 6 || dayCount == 14)
   {
      return 2;
   }
   return 1;
}
function getKpaValue(kpaName)
{
   if(kpaName == undefined || kpaName == "" || kpaName.length < 1)
   {
      return 0;
   }
   kpaValue = 0;
   var _loc2_ = 1;
   while(_loc2_ <= kpaName.length)
   {
      cDigit = kpaName.substr(_loc2_,1);
      switch(cDigit)
      {
         case "A":
            nD = 211;
            break;
         case "B":
            nD = 125;
            break;
         case "C":
            nD = 334;
            break;
         case "D":
            nD = 243;
            break;
         case "E":
            nD = 152;
            break;
         case "F":
            nD = 367;
            break;
         case "G":
            nD = 279;
            break;
         case "H":
            nD = 183;
            break;
         case "I":
            nD = 391;
            break;
         case "J":
            nD = 206;
            break;
         case "K":
            nD = 114;
            break;
         case "L":
            nD = 329;
            break;
         case "M":
            nD = 234;
            break;
         case "N":
            nD = 149;
            break;
         case "O":
            nD = 355;
            break;
         case "P":
            nD = 267;
            break;
         case "Q":
            nD = 174;
            break;
         case "R":
            nD = 386;
            break;
         case "S":
            nD = 293;
            break;
         case "T":
            nD = 108;
            break;
         case "U":
            nD = 317;
            break;
         case "V":
            nD = 227;
            break;
         case "W":
            nD = 138;
            break;
         case "X":
            nD = 346;
            break;
         case "Y":
            nD = 251;
            break;
         case "Z":
            nD = 164;
            break;
         case "a":
            nD = 473;
            break;
         case "b":
            nD = 383;
            break;
         case "c":
            nD = 292;
            break;
         case "d":
            nD = 405;
            break;
         case "e":
            nD = 314;
            break;
         case "f":
            nD = 227;
            break;
         case "g":
            nD = 433;
            break;
         case "h":
            nD = 349;
            break;
         case "i":
            nD = 255;
            break;
         case "j":
            nD = 468;
            break;
         case "k":
            nD = 377;
            break;
         case "l":
            nD = 285;
            break;
         case "m":
            nD = 496;
            break;
         case "n":
            nD = 305;
            break;
         case "o":
            nD = 215;
            break;
         case "p":
            nD = 429;
            break;
         case "q":
            nD = 337;
            break;
         case "r":
            nD = 247;
            break;
         case "s":
            nD = 456;
            break;
         case "t":
            nD = 362;
            break;
         case "u":
            nD = 278;
            break;
         case "v":
            nD = 485;
            break;
         case "w":
            nD = 391;
            break;
         case "x":
            nD = 204;
            break;
         case "y":
            nD = 413;
            break;
         case "z":
            nD = 323;
            break;
         case "0":
            nD = 232;
            break;
         case "1":
            nD = 542;
            break;
         case "2":
            nD = 454;
            break;
         case "3":
            nD = 364;
            break;
         case "4":
            nD = 473;
            break;
         case "5":
            nD = 386;
            break;
         case "6":
            nD = 595;
            break;
         case "7":
            nD = 405;
            break;
         case "8":
            nD = 514;
            break;
         case "9":
            nD = 327;
            break;
         default:
            nD = 13;
      }
      if(_loc2_ == 1)
      {
         kpaValue += 3 * nD + 17;
      }
      else
      {
         kpaValue += (_loc2_ + 1) * nD + 9;
      }
      kpaValue %= 10000;
      _loc2_ += 1;
   }
   return kpaValue;
}
function getRefundCode()
{
   refundTier = 0;
   if(_root.kongregate_username != undefined && _root.kongregate_username != "Guest")
   {
      if(_root.save.bestLevel >= 200 && _root.save.totalPlayTime >= 2700)
      {
         refundTier = 1;
      }
      if(_root.save.bestLevel >= 400 && _root.save.totalPlayTime >= 5400)
      {
         refundTier = 2;
      }
      if(_root.save.bestLevel >= 700 && _root.save.totalPlayTime >= 10800)
      {
         refundTier = 3;
      }
      if(_root.save.bestLevel >= 1000 && _root.save.totalPlayTime >= 21600)
      {
         refundTier = 4;
      }
      if(_root.save.bestLevel >= 1500 && _root.save.totalPlayTime >= 43200)
      {
         refundTier = 5;
      }
      if(_root.save.bestLevel >= 2000 && _root.save.totalPlayTime >= 86400)
      {
         refundTier = 6;
      }
      if(_root.save.bestLevel >= 3000 && _root.save.totalPlayTime >= 172800)
      {
         refundTier = 7;
      }
      if(_root.save.bestLevel >= 4000 && _root.save.totalPlayTime >= 345600)
      {
         refundTier = 8;
      }
      if(_root.save.bestLevel >= 5500 && _root.save.totalPlayTime >= 604800)
      {
         refundTier = 9;
      }
      if(_root.save.bestLevel >= 7000 && _root.save.totalPlayTime >= 864000)
      {
         refundTier = 10;
      }
      if(_root.save.bestLevel >= 9000 && _root.save.totalPlayTime >= 1296000)
      {
         refundTier = 11;
      }
      if(_root.save.bestLevel >= 9000 && _root.save.banned >= 2 && _root.save.totalPlayTime >= 1728000)
      {
         refundTier = 12;
      }
      if(_root.save.bestLevel >= 9000 && _root.save.banned >= 5 && _root.save.totalPlayTime >= 2160000)
      {
         refundTier = 13;
      }
      if(_root.save.bestLevel >= 9000 && _root.save.banned >= 10 && _root.save.totalPlayTime >= 2592000)
      {
         refundTier = 14;
      }
      if(_root.save.bestLevel >= 9000 && _root.save.banned >= 20 && _root.save.totalPlayTime >= 3024000)
      {
         refundTier = 15;
      }
      if(_root.save.bestLevel >= 9000 && _root.save.banned >= 30 && _root.save.totalPlayTime >= 3456000)
      {
         refundTier = 16;
      }
      if(_root.save.bestLevel >= 9000 && _root.save.banned >= 50 && _root.save.totalPlayTime >= 3888000)
      {
         refundTier = 17;
      }
   }
   refundCode = refundTier * (1013174 + refundTier * refundTier + Math.ceil(nameValue / 7)) + refundTier * (refundTier + 4) * Math.ceil(nameValue * refundTier / 1.7);
   if(refundCode % 10 == 7)
   {
      refundCode += 1;
   }
   refundCode = refundCode * 10 + 7;
   if(refundCode > 7)
   {
      _root.submitScore("Refund Code",refundCode);
   }
}
function checkRefundCode(code)
{
   _root.correctTier = 0;
   if(_root.kongregate_username != undefined && _root.kongregate_username != "Guest")
   {
      var _loc3_ = 1;
      while(_loc3_ <= 30)
      {
         correctCode = _loc3_ * (1013174 + _loc3_ * _loc3_ + Math.ceil(nameValue / 7)) + _loc3_ * (_loc3_ + 4) * Math.ceil(nameValue * _loc3_ / 1.7);
         if(correctCode % 10 == 7)
         {
            correctCode += 1;
         }
         correctCode = correctCode * 10 + 7;
         if(code == correctCode)
         {
            _root.correctTier = _loc3_;
         }
         _loc3_ += 1;
      }
   }
}
function ddec(donCode)
{
   res = " ";
   return res;
}
function submitScore(scoreName, amount, hardCap, submitZero)
{
   if(_root.save.bestLevel >= 30 && scoreBanned == false && _root.saveid <= 3 && _root.save.cheatEnabled == false)
   {
      if((_root.save.bestLevel < 9000 && _root.save.banned < 1 || _root.save.yoEpicFail == 25465) && _root.save.safeHacking == false && _root.save.submitScore == true && _root.save.noobMode != true && _root.save.houseVer <= 0)
      {
         if((amount > 0 || submitZero == true) && (amount <= hardCap || isNaN(hardCap)))
         {
            _root.kongregate.stats.submit(scoreName,amount);
         }
      }
   }
}
function submitKong(scoreName, amount, hardCap, submitZero)
{
}
function submitGeneral()
{
   _root.getRefundCode();
   _root.submitScore("Total Days Played",Math.floor(_root.save.totalPlayTime / 86400),99999);
   _root.submitScore("Level",_root.save.level + _root.save.banned * 10000);
   _root.submitScore("Max Level",_root.save.bestLevel,9002);
   _root.submitScore("EXP",_root.save.bestExp);
   _root.submitScore("Speedrun: Lv. 9001 [Minutes]",_root.save.speedRun9001,99999999,true);
   _root.submitScore("Speedrun: Ascend [Minutes]",_root.save.speedRunAscend,99999999,true);
   _root.submitScore("Speedrun: Ascend (Hard) [Minutes]",_root.save.speedRunAscendHard,99999999,true);
   _root.submitScore("Speedrun: Ascend (Impossible) [Minutes]",_root.save.speedRunAscendImpossible,99999999,true);
   _root.submitScore("Unspent Coins",_root.save.coinMax,999999999999999);
   _root.submitScore("Unspent Green Coins",_root.save.greenCoinMax,999999999999);
   _root.submitScore("Unspent Blue Coins",_root.save.blueCoinMax,999999999);
   _root.submitScore("Unspent White Coins",_root.save.whiteCoinMax,999999);
   _root.submitScore("REST Upgrades",_root.totalRestEfficiency,100);
   _root.submitScore("Inventory Module Slots",_root.save.progModuleSlot,100);
   _root.submitScore("Main Quests C-Rank",_root.save.mainQuestC);
   _root.submitScore("Main Quests B-Rank",_root.save.mainQuestB);
   _root.submitScore("Main Quests A-Rank",_root.save.mainQuestA);
   _root.submitScore("Main Quests S-Rank",_root.save.mainQuestS);
   _root.submitScore("Quests",_root.save.questTotal);
   _root.submitScore("Quests (1 day)",_root.save.questRecord);
   _root.submitScore("Achievements",_root.awards,_root.totalachievements);
   _root.submitScore("Secret Achievements",_root.sawards,_root.totalsachievements);
   _root.submitScore("Achievement Score",_root.achRedCoin,_root.maxredcoin);
   if(_root.save.level >= 1000 || _root.save.banned > 0)
   {
      _root.submitScore("% Anti-Idle Rewards",Math.floor(_root.save.rewardClaimManual / _root.save.rewardClaim * 100),_root.maxredcoin);
   }
   _root.submitScore("Rewards Claimed",_root.save.rewardClaim);
   _root.submitScore("Rewards Claimed (Anti-Idle)",_root.save.rewardClaimManual);
   _root.submitScore("Rewards Claimed (Idle)",_root.save.rewardClaimAuto);
   _root.submitScore("Times Ascended",_root.save.banned);
   _root.submitScore("Times Ascended (Hard)",_root.save.bannedHard);
   _root.submitScore("Times Ascended (Impossible)",_root.save.bannedImpossible);
   _root.submitScore("[Battle Arena] Rebirth",_root.save.bannedB);
   _root.submitScore("[Battle Arena] Battle Points",_root.save.battlePoint);
   _root.submitScore("[Battle Arena] Excessive EXP (x100M)",_root.save.arenaExpExcess);
   _root.submitScore("Pet EXP",_root.save.petStat[1] + _root.save.petStat[2] + _root.save.petStat[3] + _root.save.petStat[4] + _root.save.petStat[5] + _root.save.petStat[6] + _root.save.petStat[7] + _root.save.petStat[8],1600);
   _root.submitScore("[Kong] Kongpanions",_root.actualKpaCount);
   _root.submitScore("[Kong] Shiny Kongpanions",_root.actualShinyKpaCount);
   _root.submitScore("Ascension Points",_root.save.totalStupidity);
   _root.submitScore("[Battle Arena] Collection Points",_root.save.collectionPointMax);
   var _loc2_ = 1;
   while(_loc2_ <= 20)
   {
      _root.submitScore("[Event] Technical Battleground #" + _loc2_,_root.save.arenaEventPoint[_loc2_]);
      _loc2_ += 1;
   }
}
function submitAll()
{
   _root.submitGeneral();
   _root.submitScore("[Speedrun] Speedrun Time",_root.saveGlobal.challengeTime[0],999999999);
   var _loc2_ = 1;
   while(_loc2_ <= 20)
   {
      _root.submitScore("[Challenge] Challenge #" + _loc2_ + " Time",_root.saveGlobal.challengeTime[_loc2_],999999999);
      _loc2_ += 1;
   }
   _root.submitScore("Ants Sprayed",_root.save.antsSprayed);
   _root.submitScore("[Garden] Tree Harvests",_root.save.harvestCount);
   _root.submitScore("[Garden] Tree Income",_root.save.harvestCoin);
   _root.submitScore("[Garden] Garden EXP",_root.save.gardenEXP);
   _root.submitScore("[Battle Arena] Bestiary Level",_root.bestiaryLevel);
   _root.submitScore("[Battle Arena] Arena Rank",_root.save.arenaLevel);
   _root.submitScore("[Battle Arena] Robacon Rank",_root.save.robaconLevel);
   _root.submitScore("[Battle Arena] Missions",_root.save.arenaMission);
   _root.submitScore("[Battle Arena] Mission Kommander",_root.save.arenaKommanderComplete);
   _root.submitScore("[Battle Arena] Defend Mission",_root.save.arenaDefendComplete);
   _root.submitScore("[Battle Arena] Prehistoric Mission",_root.save.arenaPrehistoricComplete);
   _root.submitScore("[Battle Arena] Kills",_root.save.arenaKill);
   _root.submitScore("[Battle Arena] Kills (Non-Weak)",_root.save.arenaKillWhite);
   _root.submitScore("[Battle Arena] Kills (Strong)",_root.save.arenaKillRed);
   _root.submitScore("[Battle Arena] Kills (Boss)",_root.save.arenaKillPurple);
   _root.submitScore("[Battle Arena] Combo",_root.save.arenaMaxCombo);
   _root.submitScore("[Battle Arena] Loot Drops",_root.save.arenaLoot);
   _root.submitScore("[Battle Arena] Unspent Pixels",_root.save.arenaPixelMax);
   _root.submitScore("[Battle Arena] Crafting Material Used",_root.save.arenaCraftUsed);
   _root.submitScore("[Battle Arena] Max Damage Dealt",_root.save.arenaMaxDamage);
   _root.submitScore("[Battle Arena] Invisible Allies Tamed",_root.totalAllyTamed);
   _root.submitScore("[Battle Arena] Invisible Allies Mastered",_root.totalAllyMastered);
   _root.submitScore("[Battle Arena] Skill Books",_root.save.arenaSkillBook);
   _root.submitScore("[Battle Arena] Rune of Health",_root.save.arenaRuneLevel[1],100);
   _root.submitScore("[Battle Arena] Rune of Mana",_root.save.arenaRuneLevel[2],100);
   _root.submitScore("[Battle Arena] Rune of Rage",_root.save.arenaRuneLevel[3],100);
   _root.submitScore("[Battle Arena] Rune of Encounter",_root.save.arenaRuneLevel[4],100);
   _root.submitScore("[Battle Arena] Rune of Experience",_root.save.arenaRuneLevel[5],100);
   _root.submitScore("[Battle Arena] Rune of Greed",_root.save.arenaRuneLevel[6],100);
   _root.submitScore("[Battle Arena] Total Rune Level",_root.save.arenaRuneLevel[1] + _root.save.arenaRuneLevel[2] + _root.save.arenaRuneLevel[3] + _root.save.arenaRuneLevel[4] + _root.save.arenaRuneLevel[5] + _root.save.arenaRuneLevel[6],600);
   _root.submitScore("[Button Machine] Button Presses",_root.save.buttonPress);
   _root.submitScore("[Button Machine] Perfect Clicks",_root.save.buttonPerfect);
   _root.submitScore("[Button Machine] Max Hit Combo",_root.save.buttonMaxCombo);
   _root.submitScore("[Money Printer] Illegal Coins",_root.save.totalPrinterMoney);
   _root.submitScore("[Money Printer] Battery Charges",_root.save.totalPrinterCharge);
   _root.submitScore("[Arcade] Pong",_root.save.rankedPong);
   _root.submitScore("[Arcade] Ultimate Avoidance",_root.save.rankedAvoidance);
   _root.submitScore("[Arcade] Math Master",_root.save.rankedMath);
   _root.submitScore("[Arcade] Whack-a-greg",_root.save.rankedWhack);
   _root.submitScore("[Arcade] MindSweeper",_root.save.rankedMind);
   _root.submitScore("[Arcade] Balance 3",_root.save.rankedBalance);
   _root.submitScore("[Arcade] Triangle Count",_root.save.rankedCount);
   _root.submitScore("[Stadium] Simple Race (Impossible)",_root.save.stadiumImpossibleRace);
   _root.submitScore("[Stadium] Item Fight (Impossible)",_root.save.stadiumImpossibleItem);
   _root.submitScore("[Stadium] Death Match Wins",_root.save.stadiumDeathMatch);
   _root.submitScore("[Stadium] Death Match PWNts",_root.save.stadiumBestDeathMatch);
   _root.submitScore("[Stadium] Fastest Race",_root.save.stadiumBestTime,99999);
   _root.submitScore("[Stadium] Unspent Stadium Tokens",_root.save.stadiumTokenMax);
   _root.submitScore("[TukkunFCG] FCG Level",_root.save.fcgLevel);
   _root.submitScore("[TukkunFCG] FCG EXP",_root.save.fcgExp + _root.save.fcgExpTotal);
   _root.submitScore("[TukkunFCG] FCG Cash",_root.save.fcgMaxCash);
   _root.submitScore("[TukkunFCG] FCG Wins",_root.save.fcgWin);
   _root.submitScore("[TukkunFCG] FCG Win Streak (Lv6)",_root.save.fcgMaxStreak6);
   _root.submitScore("[TukkunFCG] FCG Win Streak (Lv7)",_root.save.fcgMaxStreak7);
   _root.submitScore("[TukkunFCG] FCG Win Streak (Lv8 New)",_root.save.fcgMaxStreak8);
   _root.submitScore("[TukkunFCG] FCG Win Streak (Lv10)",_root.save.fcgMaxStreak10);
   _root.submitScore("[TukkunFCG] FCG Wins (Lv8)",_root.save.fcgLevel8);
   _root.submitScore("[TukkunFCG] FCG Wins (Lv10)",_root.save.fcgLevel10);
   _root.submitScore("[TukkunFCG] Legendary Monsters Killed",_root.save.fcgLegendCount);
   _root.submitScore("[LolMarket] LolMarket Profit",_root.save.lolMaxProfit);
   _root.submitScore("[Awesome Adventures] Reputation",_root.save.awesomeMaxReputation);
   _root.submitScore("[Awesome Adventures] Town",_root.save.awesomeTotalAdv1);
   _root.submitScore("[Awesome Adventures] Untitled Zone",_root.save.awesomeTotalAdv2);
   _root.submitScore("[Awesome Adventures] Titled Zone",_root.save.awesomeTotalAdv3);
   _root.submitScore("[Fishing] Skill",_root.save.fishBestLevel,60);
   _root.submitScore("[Fishing] Mastery",_root.save.fishExp + _root.save.fishTotalExp);
   _root.submitScore("[Fishing] Score",_root.save.fishScore);
   _root.submitScore("[Fishing] Score (1 day)",_root.save.fishScoreRecord);
   _root.submitScore("[Fishing] Catches",_root.save.fishTotal);
   _root.submitScore("[Fishing] Perfect Catches",_root.save.fishPerfect);
   _root.submitScore("[Fishing] Perfect Streak",_root.save.fishBestStreak);
   _root.submitScore("[Career] Career: Idler",_root.save.careerLevel[1],200);
   _root.submitScore("[Career] Career: Gardener",_root.save.careerLevel[2],200);
   _root.submitScore("[Career] Career: Fighter",_root.save.careerLevel[3],200);
   _root.submitScore("[Career] Career: Item Maker",_root.save.careerLevel[4],200);
   _root.submitScore("[Career] Career: Button Basher",_root.save.careerLevel[5],200);
   _root.submitScore("[Career] Career: Arcade Player",_root.save.careerLevel[6],200);
   _root.submitScore("[Career] Career: Racer",_root.save.careerLevel[7],200);
   _root.submitScore("[Career] Career: Card Player",_root.save.careerLevel[8],200);
   _root.submitScore("[Career] Career: Gem Trader",_root.save.careerLevel[9],200);
   _root.submitScore("[Career] Career: Adventurer",_root.save.careerLevel[10],200);
   _root.submitScore("[Career] Career: Pet Trainer",_root.save.careerLevel[11],200);
   _root.submitScore("[Career] Career: Fisherman",_root.save.careerLevel[12],200);
   _root.submitScore("[Career] Total Career Level",_root.totalCareerLevel,2400);
   _root.submitScore("[Cyborg] Cyborg Level",_root.save.botLevel,200);
   _root.submitScore("[Battle Arena] +10 Upgraded Allies",_root.totalAllyMaxed);
   _root.submitScore("[Battle Arena] ULTRA ALLIES",_root.totalUltra);
   _root.submitScore("[Battle Arena] Unique ULTRA-1 Kills [New]",_root.uniqueUlt1);
   _root.submitScore("[Battle Arena] Unique ULTRA-2 Kills [New]",_root.uniqueUlt2);
   _root.submitScore("[Battle Arena] Unique ULTRA-3 Kills [New]",_root.uniqueUlt3);
   _root.submitScore("[Button Machine] Additional Multiplier",_root.save.buttonMultiplier,1200);
   _root.submitScore("[Button Machine] Grandpas",_root.save.buttonGrandpa,20);
   _root.submitScore("[Arcade] Unranked Upgrades",_root.totalUnrankedPower);
   _root.submitScore("[Stadium] Hats Unlocked",_root.stadiumHatUnlocked);
   _root.submitScore("[Awesome Adventures] Reputation (-)",-1 * _root.save.awesomeReputation);
   _root.submitScore("[Fishing] Rods Unlocked",_root.fishRodCount,10);
   _root.submitScore("[BA Raid] Dark Pyramid",_root.save.raidPyramid);
   _root.submitScore("[BA Raid] Defend Mission",_root.save.raidDefend);
   _root.submitScore("[BA Raid] Prehistoric Mission",_root.save.raidPrehistoric);
   _root.submitScore("[BA Raid] The Special Arena",_root.save.raidMegaboss);
   _root.submitScore("[BA Raid] Tower of DOOOOOOM",_root.save.raidTower);
   _root.submitScore("[BA Raid] Secret Dungeon",_root.save.raidDungeon);
   _root.submitScore("[BA Raid] Endless Dungeon",_root.save.raidEndless);
   _root.submitScore("[BA Raid] THE MEGABOSS\'s Revenge",_root.save.arenaRevengeScore);
   _root.submitScore("[BA Raid] Spooky Crypt",_root.save.arenaSpookyScore);
   _root.submitScore("[BA Raid] Triangle Hideout",_root.save.arenaTriangleScore);
   _root.submitScore("[BA Raid] Special Training Zone (new)",_root.save.raidSpecial);
   _root.submitScore("[BA Raid] The Corruption",_root.save.arenaCorruptBestDifficulty);
   _root.submitScore("[Typing] WPM",_root.save.bestWpm);
}
function dispNews(type, news)
{
   if(_root.save.breakNewsMode == 1)
   {
      ignoreNews = true;
      if(_root.saveGlobal.breakAll[type] == true || _root.saveGlobal.breakFeature[type] == true || _root.saveGlobal.breakTab1[type] == true || _root.saveGlobal.breakTab2[type] == true || _root.saveGlobal.breakTab3[type] == true || _root.saveGlobal.breakTab4[type] == true)
      {
         ignoreNews = false;
      }
      if(ignoreNews == false)
      {
         var _loc4_ = 30;
         while(_loc4_ >= 2)
         {
            var _loc5_ = 1;
            while(_loc5_ <= 4)
            {
               if(_root.saveGlobal["breakTab" + _loc5_][type] == true)
               {
                  _root["X" + _loc5_ + "breakNews" + _loc4_] = _root["X" + _loc5_ + "breakNews" + (_loc4_ - 1)];
                  _root["X" + _loc5_ + "breakStamp" + _loc4_] = _root["X" + _loc5_ + "breakStamp" + (_loc4_ - 1)];
                  _root["X" + _loc5_ + "breakColor" + _loc4_] = _root["X" + _loc5_ + "breakColor" + (_loc4_ - 1)];
               }
               _loc5_ += 1;
            }
            if(_root.saveGlobal.breakAll[type] == true)
            {
               var _loc6_ = 1;
               while(_loc6_ <= 30)
               {
                  _root["F" + _loc6_ + "breakNews" + _loc4_] = _root["F" + _loc6_ + "breakNews" + (_loc4_ - 1)];
                  _root["F" + _loc6_ + "breakStamp" + _loc4_] = _root["F" + _loc6_ + "breakStamp" + (_loc4_ - 1)];
                  _root["F" + _loc6_ + "breakColor" + _loc4_] = _root["F" + _loc6_ + "breakColor" + (_loc4_ - 1)];
                  _loc6_ += 1;
               }
            }
            else if(_root.saveGlobal.breakFeature[type] == true)
            {
               ft = _root.newsFeature[type];
               _root["F" + ft + "breakNews" + _loc4_] = _root["F" + ft + "breakNews" + (_loc4_ - 1)];
               _root["F" + ft + "breakStamp" + _loc4_] = _root["F" + ft + "breakStamp" + (_loc4_ - 1)];
               _root["F" + ft + "breakColor" + _loc4_] = _root["F" + ft + "breakColor" + (_loc4_ - 1)];
            }
            _loc4_ -= 1;
         }
         _loc5_ = 1;
         while(_loc5_ <= 4)
         {
            if(_root.saveGlobal["breakTab" + _loc5_][type] == true)
            {
               _root["X" + _loc5_ + "breakNews1"] = news;
               _root["X" + _loc5_ + "breakStamp1"] = "[" + _root.clock_display + "]";
               _root["X" + _loc5_ + "breakColor1"] = _root.saveGlobal.breakR[type] * 65536 + _root.saveGlobal.breakG[type] * 256 + _root.saveGlobal.breakB[type];
            }
            _loc5_ += 1;
         }
         if(_root.saveGlobal.breakAll[type] == true)
         {
            _loc6_ = 1;
            while(_loc6_ <= 30)
            {
               _root["F" + _loc6_ + "breakNews1"] = news;
               _root["F" + _loc6_ + "breakStamp1"] = "[" + _root.clock_display + "]";
               _root["F" + _loc6_ + "breakColor1"] = _root.saveGlobal.breakR[type] * 65536 + _root.saveGlobal.breakG[type] * 256 + _root.saveGlobal.breakB[type];
               _loc6_ += 1;
            }
         }
         else if(_root.saveGlobal.breakFeature[type] == true)
         {
            ft = _root.newsFeature[type];
            _root["F" + ft + "breakNews1"] = news;
            _root["F" + ft + "breakStamp1"] = "[" + _root.clock_display + "]";
            _root["F" + ft + "breakColor1"] = _root.saveGlobal.breakR[type] * 65536 + _root.saveGlobal.breakG[type] * 256 + _root.saveGlobal.breakB[type];
         }
         _root.updateBreakNews = 1;
      }
   }
   else if(_root.save.breakNewsMode == 2)
   {
      if(_root.saveGlobal.defTab == 5)
      {
         if(_root.saveGlobal.breakAll[type] == true || _root.saveGlobal.breakFeature[type] == true && _root.house._currentframe == _root.newsFeature[type])
         {
            _loc4_ = 30;
            while(_loc4_ >= 2)
            {
               if(_root.saveGlobal.breakAll[type] == true)
               {
                  _loc6_ = 1;
                  while(_loc6_ <= 30)
                  {
                     _root["F" + _loc6_ + "breakNews" + _loc4_] = _root["F" + _loc6_ + "breakNews" + (_loc4_ - 1)];
                     _root["F" + _loc6_ + "breakStamp" + _loc4_] = _root["F" + _loc6_ + "breakStamp" + (_loc4_ - 1)];
                     _root["F" + _loc6_ + "breakColor" + _loc4_] = _root["F" + _loc6_ + "breakColor" + (_loc4_ - 1)];
                     _loc6_ += 1;
                  }
               }
               else if(_root.saveGlobal.breakFeature[type] == true)
               {
                  ft = _root.newsFeature[type];
                  _root["F" + ft + "breakNews" + _loc4_] = _root["F" + ft + "breakNews" + (_loc4_ - 1)];
                  _root["F" + ft + "breakStamp" + _loc4_] = _root["F" + ft + "breakStamp" + (_loc4_ - 1)];
                  _root["F" + ft + "breakColor" + _loc4_] = _root["F" + ft + "breakColor" + (_loc4_ - 1)];
               }
               _loc4_ -= 1;
            }
            if(_root.saveGlobal.breakAll[type] == true)
            {
               _loc6_ = 1;
               while(_loc6_ <= 30)
               {
                  _root["F" + _loc6_ + "breakNews1"] = news;
                  _root["F" + _loc6_ + "breakStamp1"] = "[" + _root.clock_display + "]";
                  _root["F" + _loc6_ + "breakColor1"] = _root.saveGlobal.breakR[type] * 65536 + _root.saveGlobal.breakG[type] * 256 + _root.saveGlobal.breakB[type];
                  _loc6_ += 1;
               }
            }
            else if(_root.saveGlobal.breakFeature[type] == true)
            {
               ft = _root.newsFeature[type];
               _root["F" + ft + "breakNews1"] = news;
               _root["F" + ft + "breakStamp1"] = "[" + _root.clock_display + "]";
               _root["F" + ft + "breakColor1"] = _root.saveGlobal.breakR[type] * 65536 + _root.saveGlobal.breakG[type] * 256 + _root.saveGlobal.breakB[type];
            }
            _root.updateBreakNews = 1;
         }
      }
      else if(_root.saveGlobal.defTab == 0 || _root.saveGlobal["breakTab" + _root.saveGlobal.defTab][type] == true)
      {
         _loc5_ = _root.saveGlobal.defTab;
         _loc4_ = 30;
         while(_loc4_ >= 2)
         {
            _root["X" + _loc5_ + "breakNews" + _loc4_] = _root["X" + _loc5_ + "breakNews" + (_loc4_ - 1)];
            _root["X" + _loc5_ + "breakStamp" + _loc4_] = _root["X" + _loc5_ + "breakStamp" + (_loc4_ - 1)];
            _root["X" + _loc5_ + "breakColor" + _loc4_] = _root["X" + _loc5_ + "breakColor" + (_loc4_ - 1)];
            _loc4_ -= 1;
         }
         _root["X" + _loc5_ + "breakNews1"] = news;
         _root["X" + _loc5_ + "breakStamp1"] = "[" + _root.clock_display + "]";
         _root["X" + _loc5_ + "breakColor1"] = _root.saveGlobal.breakR[type] * 65536 + _root.saveGlobal.breakG[type] * 256 + _root.saveGlobal.breakB[type];
         _root.updateBreakNews = 1;
      }
   }
}
function showPopup(popT, popD)
{
   _root.popUp.gotoAndStop(2);
   _root.popUp.popTitle.text = popT;
   _root.popUp.popDesc.text = popD;
}
function convertMin(thatNumber)
{
   if(thatNumber < 0)
   {
      thatNumber = 0;
   }
   hr = Math.floor(thatNumber / 3600);
   min = Math.floor(thatNumber / 60) - hr * 60;
   if(min < 10)
   {
      min = "0" + min;
   }
   return hr + ":" + min;
}
function convertSecFull(thatNumber)
{
   if(thatNumber < 0)
   {
      thatNumber = 0;
   }
   hr = Math.floor(thatNumber / 3600);
   min = Math.floor(thatNumber / 60) - hr * 60;
   sec = Math.floor(thatNumber) - hr * 3600 - min * 60;
   if(min < 10)
   {
      min = "0" + min;
   }
   if(sec < 10)
   {
      sec = "0" + sec;
   }
   return hr + ":" + min + ":" + sec;
}
function convertSec(thatNumber)
{
   if(thatNumber < 0)
   {
      thatNumber = 0;
   }
   min = Math.floor(thatNumber / 60);
   sec = Math.floor(thatNumber) - min * 60;
   if(min < 10)
   {
      min = "0" + min;
   }
   if(sec < 10)
   {
      sec = "0" + sec;
   }
   return min + ":" + sec;
}
function convertSecCD(thatNumber)
{
   if(thatNumber < 0)
   {
      thatNumber = 0;
   }
   min = Math.floor(thatNumber / 60);
   sec = Math.floor(thatNumber) - min * 60;
   if(sec < 10)
   {
      sec = "0" + sec;
   }
   return min + ":" + sec;
}
function tukkunRandom(noZero, maxChance, maxVal)
{
   maxVal = Math.ceil(maxVal);
   if(Math.random() < noZero)
   {
      val = Math.ceil(Math.random() * maxVal);
      if(Math.random() < maxChance)
      {
         val = maxVal;
      }
   }
   else
   {
      val = 0;
   }
}
function withComma(thatNumber)
{
   if(thatNumber == Infinity || isNaN(thatNumber))
   {
      finalNumber = "-----";
   }
   else
   {
      if(thatNumber > 999999999999999)
      {
         thatNumber = 999999999999999;
      }
      cNegative = false;
      groupval = thatNumber;
      if(thatNumber < 0)
      {
         groupval = Math.abs(thatNumber);
         cNegative = true;
      }
      group1 = Math.floor(groupval / 1000000000000);
      group2 = Math.floor(groupval / 1000000000) - group1 * 1000;
      group3 = Math.floor(groupval / 1000000) - group1 * 1000000 - group2 * 1000;
      group4 = Math.floor(groupval / 1000) - group1 * 1000000000 - group2 * 1000000 - group3 * 1000;
      group5 = Math.floor(groupval) - group1 * 1000000000000 - group2 * 1000000000 - group3 * 1000000 - group4 * 1000;
      groupCount = 1;
      if(group4 > 0)
      {
         groupCount = 2;
      }
      if(group3 > 0)
      {
         groupCount = 3;
      }
      if(group2 > 0)
      {
         groupCount = 4;
      }
      if(group1 > 0)
      {
         groupCount = 5;
      }
      if(groupCount >= 2 && group5 < 10)
      {
         group5 = "0" + group5;
      }
      if(groupCount >= 2 && group5 < 100)
      {
         group5 = "0" + group5;
      }
      if(groupCount >= 3 && group4 < 10)
      {
         group4 = "0" + group4;
      }
      if(groupCount >= 3 && group4 < 100)
      {
         group4 = "0" + group4;
      }
      if(groupCount >= 4 && group3 < 10)
      {
         group3 = "0" + group3;
      }
      if(groupCount >= 4 && group3 < 100)
      {
         group3 = "0" + group3;
      }
      if(groupCount >= 5 && group2 < 10)
      {
         group2 = "0" + group2;
      }
      if(groupCount >= 5 && group2 < 100)
      {
         group2 = "0" + group2;
      }
      if(groupCount == 5)
      {
         finalNumber = group1 + "," + group2 + "," + group3 + "," + group4 + "," + group5;
      }
      if(groupCount == 4)
      {
         finalNumber = group2 + "," + group3 + "," + group4 + "," + group5;
      }
      if(groupCount == 3)
      {
         finalNumber = group3 + "," + group4 + "," + group5;
      }
      if(groupCount == 2)
      {
         finalNumber = group4 + "," + group5;
      }
      if(groupCount == 1)
      {
         finalNumber = group5;
      }
      if(cNegative == true)
      {
         finalNumber = "-" + finalNumber;
      }
   }
   return finalNumber;
}
function toB(reg)
{
   if(reg == Infinity || isNaN(reg))
   {
      return 0;
   }
   tmpB = reg;
   tmpE = 0;
   while(tmpB > 999999999999)
   {
      tmpB = Math.floor(tmpB / 10);
      tmpE += 1;
   }
   tmpB = Math.floor(tmpB);
   return _root.bCreate(tmpB,tmpE);
}
function toR(bn)
{
   if(isNaN(bn) || bn == Infinity)
   {
      return 0;
   }
   return Math.round(_root.bGetB(bn) * Math.pow(10,_root.bGetE(bn)));
}
function bReduc(bn)
{
   while(bGetE(bn) > 0 && bGetB(bn) < 100000000000)
   {
      tmpE = _root.bGetE(bn) - 1;
      tmpB = _root.bGetB(bn) * 10;
      bn = Math.floor(tmpE * 1000000000000 + tmpB);
   }
   return bn;
}
function bGetB(bn)
{
   return bn % 1000000000000;
}
function bGetE(bn)
{
   return Math.floor(bn / 1000000000000);
}
function bAdd(bnA, bnB)
{
   if(bnB > bnA)
   {
      tmp = bnB;
      bnB = bnA;
      bnA = tmp;
   }
   tmpEDiff = _root.bGetE(bnA) - _root.bGetE(bnB);
   if(tmpEDiff > 12)
   {
      return bnA;
   }
   tmpBA = _root.bGetB(bnA);
   tmpBB = Math.floor(_root.bGetB(bnB) / Math.pow(10,tmpEDiff));
   tmpB = tmpBA + tmpBB;
   tmpE = _root.bGetE(bnA);
   if(tmpB > 999999999999)
   {
      tmpB = Math.floor(tmpB / 10);
      tmpE += 1;
   }
   return _root.bCreate(tmpB,tmpE);
}
function bSub(bnA, bnB)
{
   if(bnB >= bnA)
   {
      return 0;
   }
   tmpEDiff = _root.bGetE(bnA) - _root.bGetE(bnB);
   if(tmpEDiff > 12)
   {
      return bnA;
   }
   tmpBA = _root.bGetB(bnA);
   tmpBB = Math.floor(_root.bGetB(bnB) / Math.pow(10,tmpEDiff));
   tmpB = tmpBA - tmpBB;
   tmpE = _root.bGetE(bnA);
   if(tmpB > 999999999999)
   {
      tmpB = Math.floor(tmpB / 10);
      tmpE += 1;
   }
   return _root.bCreate(tmpB,tmpE);
}
function bMul2(bnA, regB)
{
   tmpB = _root.bGetB(bnA);
   tmpE = _root.bGetE(bnA);
   while(regB >= 10)
   {
      tmpB *= 10;
      if(tmpB > 999999999999)
      {
         tmpB = Math.floor(tmpB / 10);
         tmpE += 1;
      }
      regB /= 10;
   }
   tmpB *= regB;
   if(tmpB > 999999999999)
   {
      tmpB = Math.floor(tmpB / 10);
      tmpE += 1;
   }
   return _root.bCreate(tmpB,tmpE);
}
function bMul(bnA, bnB)
{
   return _root.bMul2(_root.bCreate(_root.bGetB(bnA),_root.bGetE(bnA) + _root.bGetE(bnB)),_root.bGetB(bnB));
}
function bDiv2(bnA, regB)
{
   return _root.bMul2(bnA,1 / regB);
}
function bDiv(bnA, bnB)
{
   if(bnA < bnB)
   {
      return 0;
   }
   return _root.bDiv2(_root.bCreate(_root.bGetB(bnA),_root.bGetE(bnA) - _root.bGetE(bnB)),_root.bGetB(bnB));
}
function bPct(bnA, bnB)
{
   if(bnA >= bnB)
   {
      return 100;
   }
   tmpBA = _root.bGetB(bnA);
   tmpEA = _root.bGetE(bnA);
   tmpBB = _root.bGetB(bnB);
   tmpEB = _root.bGetE(bnB);
   if(tmpEB - tmpEA > 4)
   {
      return 0;
   }
   while(tmpEA < tmpEB)
   {
      tmpEA += 1;
      tmpBA /= 10;
   }
   return tmpBA * 100 / tmpBB;
}
function bPctD(bnA, bnB)
{
   tmp = Math.floor(bPct(bnA,bnB) * 100);
   tmpPA = Math.floor(tmp / 100);
   tmpPB = tmp % 100;
   if(tmpPA < 10)
   {
      tmpPA = "0" + tmpPA;
   }
   if(tmpPB < 10)
   {
      tmpPB = "0" + tmpPB;
   }
   return tmpPA + "." + tmpPB + "%";
}
function pctD(pct)
{
   pct = Math.floor(pct * 100);
   tmpPA = Math.floor(pct / 100);
   tmpPB = tmp % 100;
   if(tmpPB < 10)
   {
      tmpPB = "0" + tmpPB;
   }
   return tmpPA + "." + tmpPB + "%";
}
function bPow(regA, regB)
{
   maxB = Math.floor(Math.log(_root.maxNum) / Math.log(regA) - 1);
   if(regB < maxB)
   {
      res = Math.pow(regA,regB);
      return _root.toB(res);
   }
   return _root.bMul(_root.toB(Math.pow(regA,maxB)),_root.bPow(regA,regB - maxB));
}
function bSqrt(bn)
{
   tmpB = _root.bGetB(bn);
   tmpE = _root.bGetE(bn);
   if(tmpE % 2 != 0)
   {
      tmpE -= 1;
      tmpB *= 10;
   }
   tmpI = 1;
   while(tmpI <= 4)
   {
      if(tmpE >= 2)
      {
         tmpE -= 2;
         tmpB *= 100;
      }
      else
      {
         tmpI = 5;
      }
      tmpI++;
   }
   tmpE /= 2;
   tmpB = Math.floor(Math.sqrt(tmpB));
   return _root.bCreate(tmpB,tmpE);
}
function bCreate(regB, regE)
{
   while(regE > 0 && regB < 100000000000)
   {
      regE -= 1;
      regB *= 10;
   }
   if(regE > 990)
   {
      return 990999999999999;
   }
   return Math.floor(regE * 1000000000000 + regB);
}
function bDisp(bn)
{
   tmpB = _root.bGetB(bn);
   tmpB2 = 0;
   tmpE = _root.bGetE(bn);
   if(tmpE == 0)
   {
      return _root.withComma(tmpB);
   }
   while(tmpB > 99999 || tmpE % 3 != 1)
   {
      tmpE += 1;
      tmpB = Math.floor(tmpB / 10);
   }
   tmpB2 = tmpB % 100;
   if(tmpB2 < 10)
   {
      tmpB2 = "0" + tmpB2;
   }
   tmpB = Math.floor(tmpB / 100);
   tmpE += 2;
   return tmpB + "." + tmpB2 + " x 10^" + tmpE;
}
function toFW(str)
{
   str += "";
   str = str.split("0").join("０");
   str = str.split("1").join("１");
   str = str.split("2").join("２");
   str = str.split("3").join("３");
   str = str.split("4").join("４");
   str = str.split("5").join("５");
   str = str.split("6").join("６");
   str = str.split("7").join("７");
   str = str.split("8").join("８");
   str = str.split("9").join("９");
   return str;
}
function bDispX(bn)
{
   tmpB = _root.bGetB(bn);
   tmpB2 = 0;
   tmpE = _root.bGetE(bn);
   if(tmpE == 0)
   {
      return _root.withComma(tmpB);
   }
   while(tmpB > 99999 || tmpE % 3 != 1)
   {
      tmpE += 1;
      tmpB = Math.floor(tmpB / 10);
   }
   tmpB2 = tmpB % 100;
   if(tmpB2 < 10)
   {
      tmpB2 = "0" + tmpB2;
   }
   tmpB = Math.floor(tmpB / 100);
   tmpE += 2;
   return tmpB + "." + tmpB2 + " x 10" + _root.toFW(tmpE);
}
function withCommaB(num)
{
   if(num < 0)
   {
      return "-" + _root.bDisp(_root.toB(- num));
   }
   return _root.bDisp(_root.toB(num));
}
function withCommaC(num)
{
   if(num < 0)
   {
      return "-" + _root.bDispX(_root.toB(- num));
   }
   return _root.bDispX(_root.toB(num));
}
function gainBoost(amount, limit)
{
   if(!isNaN(amount))
   {
      if(limit == 1)
      {
         realLimit = _root.boostMax;
      }
      else if(limit == 2 || limit == 3)
      {
         realLimit = _root.boostMax * 1.5;
      }
      else
      {
         realLimit = _root.boostMax * 2.5;
      }
      if(_root.save.bestLevel <= 5 && _root.save.featureBoostGen != true)
      {
         realLimit = 100;
      }
      actualGain = amount;
      if(actualGain > realLimit - _root.save.boost)
      {
         actualGain = realLimit - _root.save.boost;
      }
      if(actualGain < 0)
      {
         actualGain = 0;
      }
      _root.save.boost += actualGain;
      _root.save.boostPurchased += actualGain;
   }
}
function sauceMult(sa)
{
   if(_root.save.gDifficulty >= 3 && _root.save.level < 8999)
   {
      tMult = 1.2 - _root.save.expSauceAsc[sa] / 1000000 / 20000000 - _root.save.expSauceAsc[sa] / (_root.save.expSauceAsc[40] + 1) * 0.2;
      if(sa == 0 || sa == 7)
      {
         tMult += 0.1;
      }
      if(tMult > 1.2)
      {
         tMult = 1.2;
      }
      if(tMult < 0.8)
      {
         tMult = 0.8;
      }
   }
   else if(_root.save.gDifficulty >= 2 && _root.save.level < 8999)
   {
      tMult = 1.2 - _root.save.expSauceAsc[sa] / 1000000 / 10000000 - _root.save.expSauceAsc[sa] / (_root.save.expSauceAsc[40] + 1) * 0.2;
      if(sa == 0 || sa == 7)
      {
         tMult += 0.1;
      }
      if(tMult > 1.1)
      {
         tMult = 1.1;
      }
      if(tMult < 0.9)
      {
         tMult = 0.9;
      }
   }
   else
   {
      tMult = 1;
   }
   tMult = Math.round(tMult * 100) / 100;
   if(isNaN(tMult))
   {
      tMult = 1;
   }
   return tMult;
}
function gainEXP(amount, sauce)
{
   if(isNaN(sauce))
   {
      sauce = _root.house._currentframe;
   }
   if(!isNaN(amount) && amount > 0 && amount != Infinity)
   {
      if(_root.save.level < 9001 && _root.save.featureBoostAuto == true)
      {
         boostToGain = 0.05 + amount / Math.min(_root.requiredExp,810000000) / Math.pow(_root.save.boost,1.11) * 35000;
         if(_root.save.level < 125)
         {
            boostToGain = boostToGain * _root.save.level / 125;
         }
         if(_root.save.boost < _root.boostMax)
         {
            boostToGain *= 5;
         }
         if(boostToGain > 10)
         {
            boostToGain = 10;
         }
         if(_root.save.restTime > 0)
         {
            boostToGain *= 1.1 + _root.save.restEfficiency[3] * 0.01;
         }
         if(_root.save.permaBanPenalty[28] == 3)
         {
            boostToGain *= 1.1;
         }
         else if(_root.save.permaBanPenalty[28] == 2)
         {
            boostToGain *= 1.06;
         }
         else if(_root.save.permaBanPenalty[28] == 1)
         {
            boostToGain *= 1.04;
         }
         _root.gainBoost(boostToGain,3);
      }
      multiplier = 1;
      if(_root.saveid == 23)
      {
         multiplier = 0.75;
      }
      if(_root.saveid == 24)
      {
         multiplier = 0.35;
      }
      if(_root.saveid == 4)
      {
         multiplier = _root.save.dbExp / 100;
      }
      ascentMult = _root.save.banned / 10;
      if(ascentMult > 0.5)
      {
         ascentMult = 0.5;
      }
      multiplier += ascentMult;
      multiplier2 = 1;
      var _loc4_ = 1;
      while(_loc4_ <= _root.todayEvent)
      {
         yy = _root.clock_year % 10;
         mm = _root.clock_month;
         dd = _root.clock_date;
         if(_root.eventList[yy][mm][dd][_loc4_] == "Gain 10% more EXP from all sources")
         {
            multiplier += 0.1;
         }
         if(_root.eventList[yy][mm][dd][_loc4_] == "Gain 20% more EXP from all sources")
         {
            multiplier += 0.2;
         }
         if(_root.eventList[yy][mm][dd][_loc4_] == "Gain 30% more EXP from all sources")
         {
            multiplier += 0.3;
         }
         if(_root.eventList[yy][mm][dd][_loc4_] == "Gain 50% more EXP from all sources")
         {
            multiplier += 0.5;
         }
         if(_root.eventList[yy][mm][dd][_loc4_] == "Gain 25% more EXP from all sources except the Progress Bar, LolMarket and Awesome Adventures" && sauce != 0 && sauce != 13 && sauce != 14)
         {
            multiplier += 0.25;
         }
         if(_root.eventList[yy][mm][dd][_loc4_] == "Gain 50% more EXP from all sources except the Progress Bar, LolMarket and Awesome Adventures" && sauce != 0 && sauce != 13 && sauce != 14)
         {
            multiplier += 0.5;
         }
         if(_root.eventList[yy][mm][dd][_loc4_] == "Gain 100% more EXP from all sources except the Progress Bar, LolMarket and Awesome Adventures" && sauce != 0 && sauce != 13 && sauce != 14)
         {
            multiplier += 1;
         }
         if(_root.eventList[yy][mm][dd][_loc4_] == "Gain 200% more EXP from all sources except the Progress Bar, LolMarket and Awesome Adventures" && sauce != 0 && sauce != 13 && sauce != 14)
         {
            multiplier += 2;
         }
         if(_root.eventList[yy][mm][dd][_loc4_] == "Gain 1.5x EXP from Button Machine" && sauce == 8)
         {
            multiplier2 *= 1.5;
         }
         if(_root.eventList[yy][mm][dd][_loc4_] == "Gain 1.5x EXP from Arcade" && sauce == 10)
         {
            multiplier2 *= 1.5;
         }
         if(_root.eventList[yy][mm][dd][_loc4_] == "Gain 1.5x EXP from Stadium" && sauce == 11)
         {
            multiplier2 *= 1.5;
         }
         if(_root.eventList[yy][mm][dd][_loc4_] == "Gain 1.5x EXP from TukkunFCG" && sauce == 12)
         {
            multiplier2 *= 1.5;
         }
         if(_root.eventList[yy][mm][dd][_loc4_] == "Gain 1.5x EXP from Fishing" && sauce == 22)
         {
            multiplier2 *= 1.5;
         }
         _loc4_ += 1;
      }
      if(_root.save.hyperDay[1] == _root.todayCode || _root.save.hyperDay[2] == _root.todayCode)
      {
         if(sauce != 0 && sauce != 13 && sauce != 14)
         {
            multiplier += 3;
         }
      }
      if(sauce == 0 && _root.save.boostFreeze > 0)
      {
         multiplier += Math.min(Math.floor(_root.save.totalStupidity / 500),250) * 0.01;
      }
      multiplier += _root.save.ascStupidity * 0.05;
      multiplier *= multiplier2;
      if(_root.save.restTime > 0)
      {
         multiplier *= 1.1 + _root.save.restEfficiency[1] * 0.01;
      }
      if(_root.save.careerLevel[1] >= 200 && _root.cursoridle >= 30)
      {
         multiplier *= 1.03;
      }
      if(_root.save.banPenalty[1] == 1)
      {
         multiplier *= 1.05;
      }
      if(sauce == 38)
      {
         multiplier = 1;
      }
      if(_root.save.newbieProgress != 15 && _root.save.bestLevel < 1000)
      {
         multiplier = 1;
      }
      if(_root.save.level == 9000)
      {
         multiplier *= 0.5;
      }
      if(_root.save.level == 9001)
      {
         multiplier *= 0.05;
      }
      if(_root.save.level == 9002)
      {
         multiplier = 0;
      }
      if(_root.save.doubleExpTime > 0)
      {
         multiplier *= 1.5;
      }
      multiplier *= _root.sauceMult(sauce);
      if(_root.detectedX == 1)
      {
         multiplier = 0;
      }
      _root.save.expLag += Math.floor(amount * multiplier);
      _root.save.expGraph[7] += Math.floor(amount);
      _root.save.expGraph2[7] += Math.floor(amount * multiplier);
      _root.save.expSauce[sauce] += Math.floor(amount * multiplier);
      _root.save.expTotal[sauce] += Math.floor(amount * multiplier);
      _root.save.expSauceAsc[sauce] += Math.floor(amount * multiplier);
      _root.save.expSauce[40] += Math.floor(amount * multiplier);
      _root.save.expTotal[40] += Math.floor(amount * multiplier);
      _root.save.expSauceAsc[40] += Math.floor(amount * multiplier);
      if(_root.cursoridle < 30 && _root.save.showGain == true && sauce != 0 && multiplier > 0)
      {
         _root.mainSummonCount += 1;
         _root.mainAntiLag += 1;
         _root.popContain.attachMovie("scorePopMain","scorePopMain" + _root.mainSummonCount,_root.mainAntiLag,{_x:480,_y:60,what:"+" + _root.withComma(Math.floor(amount * multiplier)),whatColor:10092288});
      }
   }
}
function gainCoin(amount, sauce)
{
   if(isNaN(sauce))
   {
      sauce = _root.house._currentframe;
   }
   if(!isNaN(amount) && amount > 0 && amount != Infinity && _root.save.coinOvercap < 300)
   {
      if(_root.save.level < 9001 && _root.save.featureBoostAuto == true)
      {
         boostToGain = 0.01 + amount / Math.min(_root.requiredExp,810000000) / Math.pow(_root.save.boost,1.11) * 7000;
         if(_root.save.level < 125)
         {
            boostToGain = boostToGain * _root.save.level / 125;
         }
         if(_root.save.boost < _root.boostMax)
         {
            boostToGain *= 5;
         }
         if(boostToGain > 2)
         {
            boostToGain = 2;
         }
         if(_root.save.restTime > 0)
         {
            boostToGain *= 1.1 + _root.save.restEfficiency[3] * 0.01;
         }
         if(_root.save.permaBanPenalty[28] == 3)
         {
            boostToGain *= 1.1;
         }
         else if(_root.save.permaBanPenalty[28] == 2)
         {
            boostToGain *= 1.06;
         }
         else if(_root.save.permaBanPenalty[28] == 1)
         {
            boostToGain *= 1.04;
         }
         _root.gainBoost(boostToGain,3);
      }
      multiplier = 1;
      if(_root.saveid == 24)
      {
         multiplier = 0.35;
      }
      if(_root.saveid == 4)
      {
         multiplier = _root.save.dbCoin / 100;
      }
      if(sauce != 0)
      {
         if(sauce == 6 || sauce == 13)
         {
            multiplier += Math.min(Math.floor(_root.save.totalStupidity / 250),100) * 0.01;
         }
         else if(_root.save.totalStupidity >= 25000)
         {
            multiplier += Math.min(Math.floor((_root.save.totalStupidity - 25000) / 250),150) * 0.02 + 1;
         }
         else
         {
            multiplier += Math.min(Math.floor(_root.save.totalStupidity / 250),100) * 0.01;
         }
      }
      var _loc4_ = 1;
      while(_loc4_ <= _root.todayEvent)
      {
         yy = _root.clock_year % 10;
         mm = _root.clock_month;
         dd = _root.clock_date;
         if(_root.eventList[yy][mm][dd][_loc4_] == "Gain 10% more Coins from all sources")
         {
            multiplier += 0.1;
         }
         if(_root.eventList[yy][mm][dd][_loc4_] == "Gain 20% more Coins from all sources")
         {
            multiplier += 0.2;
         }
         if(_root.eventList[yy][mm][dd][_loc4_] == "Gain 30% more Coins from all sources")
         {
            multiplier += 0.3;
         }
         if(_root.eventList[yy][mm][dd][_loc4_] == "Gain 50% more Coins from all sources")
         {
            multiplier += 0.5;
         }
         if(_root.eventList[yy][mm][dd][_loc4_] == "Gain 25% more Coins from all sources except the Progress Bar, Garden, LolMarket and Fishing" && sauce != 0 && sauce != 6 && sauce != 13 && sauce != 22)
         {
            multiplier += 0.25;
         }
         if(_root.eventList[yy][mm][dd][_loc4_] == "Gain 50% more Coins from all sources except the Progress Bar, Garden, LolMarket and Fishing" && sauce != 0 && sauce != 6 && sauce != 13 && sauce != 22)
         {
            multiplier += 0.5;
         }
         if(_root.eventList[yy][mm][dd][_loc4_] == "Gain 100% more Coins from all sources except the Progress Bar, Garden, LolMarket and Fishing" && sauce != 0 && sauce != 6 && sauce != 13 && sauce != 22)
         {
            multiplier += 1;
         }
         if(_root.eventList[yy][mm][dd][_loc4_] == "Gain 200% more Coins from all sources except the Progress Bar, Garden, LolMarket and Fishing" && sauce != 0 && sauce != 6 && sauce != 13 && sauce != 22)
         {
            multiplier += 2;
         }
         _loc4_ += 1;
      }
      if(_root.save.restTime > 0)
      {
         multiplier *= 1.1 + _root.save.restEfficiency[2] * 0.01;
      }
      if(_root.save.careerLevel[1] >= 200 && _root.cursoridle >= 30)
      {
         multiplier *= 1.03;
      }
      if(_root.save.banPenalty[2] == 1)
      {
         multiplier *= 1.1;
      }
      if(_root.save.doubleCoinTime > 0)
      {
         multiplier *= 1.5;
      }
      if(sauce == 22 || sauce == 38 || sauce == 39)
      {
         multiplier = 1;
      }
      if(_root.detectedX == 1)
      {
         multiplier = 0;
      }
      finalAmnt = Math.floor(amount * multiplier);
      _root.save.coinLag += finalAmnt;
      _root.save.coinGraph[7] += Math.floor(amount);
      _root.save.coinGraph2[7] += Math.floor(amount * multiplier);
      if(sauce != 9999)
      {
         _root.save.coinSauce[sauce] += finalAmnt;
         _root.save.coinSauce[40] += finalAmnt;
         _root.save.coinTotal[sauce] += finalAmnt;
         _root.save.coinTotal[40] += finalAmnt;
      }
      else
      {
         _root.save.coinSauce[41] += finalAmnt;
         _root.save.coinSauce[40] += finalAmnt;
         _root.save.coinTotal[41] += finalAmnt;
         _root.save.coinTotal[40] += finalAmnt;
      }
      if(_root.save.level < 9000)
      {
         if(_root.save.permaBanPenalty[8] == 3)
         {
            _root.save.expLag += Math.floor(finalAmnt * 0.1);
            _root.save.expGraph[7] += Math.floor(amount * 0.1);
            _root.save.expGraph2[7] += Math.floor(finalAmnt * 0.1);
            _root.save.expSauce[sauce] += Math.floor(finalAmnt * 0.1);
            _root.save.expSauce[40] += Math.floor(finalAmnt * 0.1);
            _root.save.expSauceAsc[sauce] += Math.floor(finalAmnt * 0.1);
            _root.save.expSauceAsc[40] += Math.floor(finalAmnt * 0.1);
            _root.save.expTotal[sauce] += Math.floor(finalAmnt * 0.1);
            _root.save.expTotal[40] += Math.floor(finalAmnt * 0.1);
         }
         else if(_root.save.permaBanPenalty[8] == 2)
         {
            _root.save.expLag += Math.floor(finalAmnt * 0.06);
            _root.save.expGraph[7] += Math.floor(amount * 0.06);
            _root.save.expGraph2[7] += Math.floor(finalAmnt * 0.06);
            _root.save.expSauce[sauce] += Math.floor(finalAmnt * 0.06);
            _root.save.expSauce[40] += Math.floor(finalAmnt * 0.06);
            _root.save.expSauceAsc[sauce] += Math.floor(finalAmnt * 0.06);
            _root.save.expSauceAsc[40] += Math.floor(finalAmnt * 0.06);
            _root.save.expTotal[sauce] += Math.floor(finalAmnt * 0.06);
            _root.save.expTotal[40] += Math.floor(finalAmnt * 0.06);
         }
         else if(_root.save.permaBanPenalty[8] == 1)
         {
            _root.save.expLag += Math.floor(finalAmnt * 0.04);
            _root.save.expGraph[7] += Math.floor(amount * 0.04);
            _root.save.expGraph2[7] += Math.floor(finalAmnt * 0.04);
            _root.save.expSauce[sauce] += Math.floor(finalAmnt * 0.04);
            _root.save.expSauce[40] += Math.floor(finalAmnt * 0.04);
            _root.save.expSauceAsc[sauce] += Math.floor(finalAmnt * 0.04);
            _root.save.expSauceAsc[40] += Math.floor(finalAmnt * 0.04);
            _root.save.expTotal[sauce] += Math.floor(finalAmnt * 0.04);
            _root.save.expTotal[40] += Math.floor(finalAmnt * 0.04);
         }
      }
      if(_root.cursoridle < 30 && _root.save.showGain == true && sauce != 22 && sauce != 0 && sauce != 39)
      {
         _root.mainSummonCount += 1;
         _root.mainAntiLag += 1;
         _root.popContain.attachMovie("scorePopMain","scorePopMain" + _root.mainSummonCount,_root.mainAntiLag,{_x:80,_y:20,what:"+" + _root.withComma(Math.floor(amount * multiplier)),whatColor:16776960});
      }
   }
   if(!isNaN(amount) && amount > 0 && amount != Infinity && _root.save.coinOvercap >= 300 && _root.save.banned >= 5)
   {
      multiplier = 1;
      if(_root.saveid == 24)
      {
         multiplier = 0.35;
      }
      if(_root.saveid == 4)
      {
         multiplier = _root.save.dbCoin / 100;
      }
      if(sauce != 0)
      {
         if(sauce == 6 || sauce == 13)
         {
            multiplier += Math.min(Math.floor(_root.save.totalStupidity / 250),100) * 0.01;
         }
         else if(_root.save.totalStupidity >= 25000)
         {
            multiplier += Math.min(Math.floor((_root.save.totalStupidity - 25000) / 250),150) * 0.02 + 1;
         }
         else
         {
            multiplier += Math.min(Math.floor(_root.save.totalStupidity / 250),100) * 0.01;
         }
      }
      _loc4_ = 1;
      while(_loc4_ <= _root.todayEvent)
      {
         yy = _root.clock_year % 10;
         mm = _root.clock_month;
         dd = _root.clock_date;
         if(_root.eventList[yy][mm][dd][_loc4_] == "Gain 10% more Coins from all sources")
         {
            multiplier += 0.1;
         }
         if(_root.eventList[yy][mm][dd][_loc4_] == "Gain 20% more Coins from all sources")
         {
            multiplier += 0.2;
         }
         if(_root.eventList[yy][mm][dd][_loc4_] == "Gain 30% more Coins from all sources")
         {
            multiplier += 0.3;
         }
         if(_root.eventList[yy][mm][dd][_loc4_] == "Gain 50% more Coins from all sources")
         {
            multiplier += 0.5;
         }
         if(_root.eventList[yy][mm][dd][_loc4_] == "Gain 25% more Coins from all sources except the Progress Bar, Garden, LolMarket and Fishing" && sauce != 0 && sauce != 6 && sauce != 13 && sauce != 22)
         {
            multiplier += 0.25;
         }
         if(_root.eventList[yy][mm][dd][_loc4_] == "Gain 50% more Coins from all sources except the Progress Bar, Garden, LolMarket and Fishing" && sauce != 0 && sauce != 6 && sauce != 13 && sauce != 22)
         {
            multiplier += 0.5;
         }
         if(_root.eventList[yy][mm][dd][_loc4_] == "Gain 100% more Coins from all sources except the Progress Bar, Garden, LolMarket and Fishing" && sauce != 0 && sauce != 6 && sauce != 13 && sauce != 22)
         {
            multiplier += 1;
         }
         if(_root.eventList[yy][mm][dd][_loc4_] == "Gain 200% more Coins from all sources except the Progress Bar, Garden, LolMarket and Fishing" && sauce != 0 && sauce != 6 && sauce != 13 && sauce != 22)
         {
            multiplier += 2;
         }
         _loc4_ += 1;
      }
      if(_root.save.restTime > 0)
      {
         multiplier *= 1.1 + _root.save.restEfficiency[2] * 0.01;
      }
      if(_root.save.careerLevel[1] >= 200 && _root.cursoridle >= 30)
      {
         multiplier *= 1.03;
      }
      if(_root.save.banPenalty[2] == 1)
      {
         multiplier *= 1.1;
      }
      if(_root.save.doubleCoinTime > 0)
      {
         multiplier *= 1.5;
      }
      if(sauce == 22 || sauce == 38 || sauce == 39)
      {
         multiplier = 1;
      }
      if(_root.detectedX == 1)
      {
         multiplier = 0;
      }
      finalAmnt = Math.floor(amount * multiplier);
      _root.save.reforgingCoin += finalAmnt;
      _root.save.coinSauce[sauce] += finalAmnt;
      _root.save.coinSauce[40] += finalAmnt;
      _root.save.coinTotal[sauce] += finalAmnt;
      _root.save.coinTotal[40] += finalAmnt;
      _root.save.coinGraph[7] += Math.floor(amount);
      _root.save.coinGraph2[7] += Math.floor(amount * multiplier);
   }
}
function gainGreenCoin(amount, sauce)
{
   if(isNaN(sauce))
   {
      sauce = _root.house._currentframe;
   }
   if(!isNaN(amount) && amount > 0 && amount != Infinity && _root.save.greenCoinOvercap < 300)
   {
      multiplier = 1;
      if(_root.saveid == 4)
      {
         multiplier = _root.save.dbGreenCoin / 100;
      }
      multiplier += Math.min(Math.floor(_root.save.totalStupidity / 5),10) * 0.03;
      finalAmnt = Math.floor(amount * multiplier);
      if(sauce != 13)
      {
         _root.save.greenCoinGraph[7] += Math.floor(amount);
         _root.save.greenCoinGraph2[7] += Math.floor(amount * multiplier);
         if(sauce != 9999)
         {
            _root.save.greenCoinSauce[sauce] += finalAmnt;
            _root.save.greenCoinSauce[40] += finalAmnt;
            _root.save.greenCoinTotal[sauce] += finalAmnt;
            _root.save.greenCoinTotal[40] += finalAmnt;
         }
         else
         {
            _root.save.greenCoinSauce[41] += finalAmnt;
            _root.save.greenCoinSauce[40] += finalAmnt;
            _root.save.greenCoinTotal[41] += finalAmnt;
            _root.save.greenCoinTotal[40] += finalAmnt;
         }
      }
      _root.save.greenCoin += Math.floor(amount * multiplier);
      if(_root.cursoridle < 30 && _root.save.showGain == true)
      {
         _root.mainSummonCount += 1;
         _root.mainAntiLag += 1;
         _root.popContain.attachMovie("scorePopMain","scorePopMain" + _root.mainSummonCount,_root.mainAntiLag,{_x:10,_y:60,what:"+" + _root.withComma(Math.floor(amount * multiplier)),whatColor:65280});
      }
   }
   if(!isNaN(amount) && amount > 0 && amount != Infinity && _root.save.greenCoinOvercap >= 300 && _root.save.banned >= 5)
   {
      multiplier = 1;
      if(_root.saveid == 4)
      {
         multiplier = _root.save.dbGreenCoin / 100;
      }
      multiplier += Math.min(Math.floor(_root.save.totalStupidity / 5),10) * 0.03;
      _root.save.reforgingGreenCoin += Math.floor(amount * multiplier);
      _root.save.greenCoinSauce[sauce] += Math.floor(amount * multiplier);
      _root.save.greenCoinSauce[40] += Math.floor(amount * multiplier);
      _root.save.greenCoinTotal[sauce] += Math.floor(amount * multiplier);
      _root.save.greenCoinTotal[40] += Math.floor(amount * multiplier);
      _root.save.greenCoinGraph[7] += Math.floor(amount);
      _root.save.greenCoinGraph2[7] += Math.floor(amount * multiplier);
   }
}
function gainGreenCoinND(amount, sauce)
{
   if(isNaN(sauce))
   {
      sauce = _root.house._currentframe;
   }
   if(!isNaN(amount) && amount > 0 && amount != Infinity && _root.save.greenCoinOvercap < 300)
   {
      multiplier = 1;
      if(_root.saveid == 4)
      {
         multiplier = _root.save.dbGreenCoin / 100;
      }
      multiplier += Math.min(Math.floor(_root.save.totalStupidity / 5),10) * 0.03;
      if(sauce == 13)
      {
         multiplier = 1;
      }
      finalAmnt = Math.floor(amount * multiplier);
      if(sauce != 13)
      {
         _root.save.greenCoinGraph[7] += Math.floor(amount);
         _root.save.greenCoinGraph2[7] += Math.floor(amount * multiplier);
         if(sauce != 9999)
         {
            _root.save.greenCoinSauce[sauce] += finalAmnt;
            _root.save.greenCoinSauce[40] += finalAmnt;
            _root.save.greenCoinTotal[sauce] += finalAmnt;
            _root.save.greenCoinTotal[40] += finalAmnt;
         }
         else
         {
            _root.save.greenCoinSauce[41] += finalAmnt;
            _root.save.greenCoinSauce[40] += finalAmnt;
            _root.save.greenCoinTotal[41] += finalAmnt;
            _root.save.greenCoinTotal[40] += finalAmnt;
         }
      }
      _root.save.greenCoin += Math.floor(amount * multiplier);
   }
   if(!isNaN(amount) && amount > 0 && amount != Infinity && _root.save.greenCoinOvercap >= 300 && _root.save.banned >= 5)
   {
      multiplier = 1;
      if(_root.saveid == 4)
      {
         multiplier = _root.save.dbGreenCoin / 100;
      }
      multiplier += Math.min(Math.floor(_root.save.totalStupidity / 5),10) * 0.03;
      _root.save.reforgingGreenCoin += Math.floor(amount * multiplier);
      _root.save.greenCoinSauce[sauce] += Math.floor(amount * multiplier);
      _root.save.greenCoinSauce[40] += Math.floor(amount * multiplier);
      _root.save.greenCoinTotal[sauce] += Math.floor(amount * multiplier);
      _root.save.greenCoinTotal[40] += Math.floor(amount * multiplier);
      _root.save.greenCoinGraph[7] += Math.floor(amount);
      _root.save.greenCoinGraph2[7] += Math.floor(amount * multiplier);
   }
}
function gainBlueCoin(amount, sauce)
{
   if(isNaN(sauce))
   {
      sauce = _root.house._currentframe;
   }
   if(!isNaN(amount) && amount > 0 && amount != Infinity && _root.save.blueCoinOvercap < 300)
   {
      multiplier = 1;
      if(_root.saveid == 4)
      {
         multiplier *= _root.save.dbBlueCoin / 100;
      }
      finalAmnt = Math.floor(amount * multiplier);
      _root.save.blueCoinGraph[7] += Math.floor(amount);
      _root.save.blueCoinGraph2[7] += Math.floor(amount * multiplier);
      if(sauce != 9999)
      {
         _root.save.blueCoinSauce[sauce] += finalAmnt;
         _root.save.blueCoinSauce[40] += finalAmnt;
         _root.save.blueCoinTotal[sauce] += finalAmnt;
         _root.save.blueCoinTotal[40] += finalAmnt;
      }
      else
      {
         _root.save.blueCoinSauce[41] += finalAmnt;
         _root.save.blueCoinSauce[40] += finalAmnt;
         _root.save.blueCoinTotal[41] += finalAmnt;
         _root.save.blueCoinTotal[40] += finalAmnt;
      }
      _root.save.blueCoin += Math.floor(amount * multiplier);
      if(_root.cursoridle < 30 && _root.save.showGain == true)
      {
         _root.mainSummonCount += 1;
         _root.mainAntiLag += 1;
         _root.popContain.attachMovie("scorePopMain","scorePopMain" + _root.mainSummonCount,_root.mainAntiLag,{_x:100,_y:60,what:"+" + _root.withComma(Math.floor(amount * multiplier)),whatColor:39423});
      }
   }
   if(!isNaN(amount) && amount > 0 && amount != Infinity && _root.save.blueCoinOvercap >= 300 && _root.save.banned >= 5)
   {
      multiplier = 1;
      if(_root.saveid == 4)
      {
         multiplier = _root.save.dbBlueCoin / 100;
      }
      _root.save.reforgingBlueCoin += Math.floor(amount * multiplier);
      _root.save.blueCoinSauce[sauce] += Math.floor(amount * multiplier);
      _root.save.blueCoinSauce[40] += Math.floor(amount * multiplier);
      _root.save.blueCoinTotal[sauce] += Math.floor(amount * multiplier);
      _root.save.blueCoinTotal[40] += Math.floor(amount * multiplier);
      _root.save.blueCoinGraph[7] += Math.floor(amount);
      _root.save.blueCoinGraph2[7] += Math.floor(amount * multiplier);
   }
}
function gainWhiteCoin(amount, sauce)
{
   if(isNaN(sauce))
   {
      sauce = _root.house._currentframe;
   }
   if(!isNaN(amount) && amount > 0 && amount != Infinity)
   {
      multiplier = 1;
      if(Math.random() < Math.min(Math.floor(_root.save.totalStupidity / 500),20) * 0.05)
      {
         multiplier += 1;
      }
      var _loc4_ = 1;
      while(_loc4_ <= _root.todayEvent)
      {
         yy = _root.clock_year % 10;
         mm = _root.clock_month;
         dd = _root.clock_date;
         if(_root.eventList[yy][mm][dd][_loc4_] == "Gain 100% more White Coins from all sources except level 9001 reward" && amount < 1000)
         {
            multiplier += 1;
         }
         _loc4_ += 1;
      }
      finalAmnt = Math.floor(amount * multiplier);
      _root.save.whiteCoinGraph[7] += Math.floor(amount);
      _root.save.whiteCoinGraph2[7] += Math.floor(amount * multiplier);
      if(sauce != 9999)
      {
         _root.save.whiteCoinSauce[sauce] += finalAmnt;
         _root.save.whiteCoinSauce[40] += finalAmnt;
         _root.save.whiteCoinTotal[sauce] += finalAmnt;
         _root.save.whiteCoinTotal[40] += finalAmnt;
      }
      else
      {
         _root.save.whiteCoinSauce[41] += finalAmnt;
         _root.save.whiteCoinSauce[40] += finalAmnt;
         _root.save.whiteCoinTotal[41] += finalAmnt;
         _root.save.whiteCoinTotal[40] += finalAmnt;
      }
      whiteCoinGain = Math.floor(amount * multiplier);
      _root.save.whiteCoin += whiteCoinGain;
      if(Math.floor(amount * multiplier) >= 2)
      {
         _root.dispNews(163,"Gained " + _root.withComma(whiteCoinGain) + " White Coins! You now have " + _root.withComma(_root.save.whiteCoin) + ".");
      }
      else
      {
         _root.dispNews(163,"Gained 1 White Coin! You now have " + _root.withComma(_root.save.whiteCoin) + ".");
      }
   }
}
function gainWhiteCoinB(amount, sauce)
{
   if(isNaN(sauce))
   {
      sauce = _root.house._currentframe;
   }
   if(!isNaN(amount) && amount > 0 && amount != Infinity)
   {
      multiplier = 1;
      var _loc4_ = 1;
      while(_loc4_ <= _root.todayEvent)
      {
         yy = _root.clock_year % 10;
         mm = _root.clock_month;
         dd = _root.clock_date;
         if(_root.eventList[yy][mm][dd][_loc4_] == "Gain 100% more White Coins from all sources except level 9001 reward" && amount < 1000)
         {
            multiplier += 1;
         }
         _loc4_ += 1;
      }
      finalAmnt = Math.floor(amount * multiplier);
      _root.save.whiteCoinGraph[7] += Math.floor(amount);
      _root.save.whiteCoinGraph2[7] += Math.floor(amount * multiplier);
      if(sauce != 9999)
      {
         _root.save.whiteCoinSauce[sauce] += finalAmnt;
         _root.save.whiteCoinSauce[40] += finalAmnt;
         _root.save.whiteCoinTotal[sauce] += finalAmnt;
         _root.save.whiteCoinTotal[40] += finalAmnt;
      }
      else
      {
         _root.save.whiteCoinSauce[41] += finalAmnt;
         _root.save.whiteCoinSauce[40] += finalAmnt;
         _root.save.whiteCoinTotal[41] += finalAmnt;
         _root.save.whiteCoinTotal[40] += finalAmnt;
      }
      whiteCoinGain = Math.floor(amount * multiplier);
      _root.save.whiteCoin += whiteCoinGain;
      if(Math.floor(amount * multiplier) >= 2)
      {
         _root.dispNews(163,"Gained " + _root.withComma(amount * multiplier) + " White Coins! You now have " + _root.withComma(_root.save.whiteCoin) + ".");
      }
      else
      {
         _root.dispNews(163,"Gained 1 White Coin! You now have " + _root.withComma(_root.save.whiteCoin) + ".");
      }
   }
}
function dispOverGC()
{
   var _loc2_ = Math.floor(_root.save.greenCoin / 1000000000);
   var _loc3_ = Math.floor(_root.save.greenCoin % 1000000000 / 10000000);
   if(_loc3_ < 10)
   {
      _loc3_ = "0" + _loc3_;
   }
   return _loc2_ + "." + _loc3_ + "B";
}
function dispOverBC()
{
   var _loc2_ = Math.floor(_root.save.blueCoin / 1000000);
   var _loc3_ = Math.floor(_root.save.blueCoin % 1000000 / 10000);
   if(_loc3_ < 10)
   {
      _loc3_ = "0" + _loc3_;
   }
   return _loc2_ + "." + _loc3_ + "M";
}
function gainEventToken(amount)
{
   if(!isNaN(amount) && amount > 0)
   {
      actualAmount = Math.floor(amount);
      if(actualAmount > _root.eventMaxToken - _root.save.eventTokenToday)
      {
         actualAmount = _root.eventMaxToken - _root.save.eventTokenToday;
      }
      if(actualAmount < 0)
      {
         actualAmount = 0;
      }
      _root.save.eventToken += actualAmount;
      _root.save.eventTokenToday += actualAmount;
      if(actualAmount > 0)
      {
         _root.dispNews(155,"Event Tokens gained! (+" + _root.withComma(actualAmount) + ")");
      }
   }
}
function gainCareerEXP(careerID, amount, mustTurnOn)
{
   amount = Math.floor(amount);
   if(!isNaN(amount) && amount > 0)
   {
      if(_root.save.careerActive[careerID] > 0 || _root.save.careerBoost[careerID] > 0 || mustTurnOn == false)
      {
         if(_root.save.careerBoost[careerID] > 0 && mustTurnOn != false)
         {
            if(_root.save.permaBanPenalty[13] == 3)
            {
               amount = Math.floor(amount * 4);
               _root.dispNews(143,"Blessed Career - 300% extra Career EXP gained!");
            }
            else if(_root.save.permaBanPenalty[13] == 2)
            {
               amount = Math.floor(amount * 3.2);
               _root.dispNews(143,"Blessed Career - 220% extra Career EXP gained!");
            }
            else if(_root.save.permaBanPenalty[13] == 1)
            {
               amount = Math.floor(amount * 2.8);
               _root.dispNews(143,"Blessed Career - 180% extra Career EXP gained!");
            }
            else
            {
               amount = Math.floor(amount * 2);
               _root.dispNews(143,"Blessed Career - 100% extra Career EXP gained!");
            }
         }
         amount += Math.floor(amount * Math.min(Math.floor(_root.save.totalStupidity / 250),20) * 0.03);
         if(_root.save.banPenalty[6] == 1)
         {
            amount = Math.floor(amount * 1.2);
         }
         var _loc5_ = 1;
         while(_loc5_ <= _root.todayEvent)
         {
            yy = _root.clock_year % 10;
            mm = _root.clock_month;
            dd = _root.clock_date;
            if(_root.eventList[yy][mm][dd][_loc5_] == "1.5x Career EXP gain")
            {
               amount = Math.floor(amount * 1.5);
            }
            _loc5_ += 1;
         }
         _root.save.careerEXP[careerID] += amount;
         if(_root.save.questType == "Career EXP")
         {
            if(_root.save.questSubtype == "Career " + careerID || _root.save.questSubtype == "Any")
            {
               _root.save.questCount += amount;
            }
         }
         _root.dispNews(careerID + 130,"Career EXP gained! (" + careerName[careerID] + ", +" + _root.withComma(amount) + ")");
         careerReq = 100 + _root.save.careerLevel[careerID] * (_root.save.careerLevel[careerID] + 1) * Math.max(1,_root.save.careerLevel[careerID] - 99) * 5;
         if(_root.save.careerEXP[careerID] > 4000000000)
         {
            _root.save.careerEXP[careerID] = 4000000000;
         }
         while(_root.save.careerEXP[careerID] >= careerReq && _root.save.careerLevel[careerID] < 200)
         {
            _root.save.careerEXP[careerID] -= careerReq;
            _root.save.careerLevel[careerID] += 1;
            careerReq = 100 + _root.save.careerLevel[careerID] * (_root.save.careerLevel[careerID] + 1) * Math.max(1,_root.save.careerLevel[careerID] - 99) * 5;
            _root.dispNews(144,"Career Level Up! (" + careerName[careerID] + ", Lv. " + _root.save.careerLevel[careerID] + ")");
            if(_root.save.careerLevel[careerID] >= 100)
            {
               _root.save.mysteryBox[10] += 1;
               _root.dispNews(144,"You have gained a Supply Crate!");
            }
         }
         while(_root.save.careerEXP[careerID] >= 40000000 && _root.save.careerLevel[careerID] == 200)
         {
            _root.save.careerEXP[careerID] -= 40000000;
            _root.save.mysteryBox[10] += 1;
            careerReq = 100 + _root.save.careerLevel[careerID] * (_root.save.careerLevel[careerID] + 1) * Math.max(1,_root.save.careerLevel[careerID] - 99) * 5;
            _root.dispNews(144,"40,000,000 [" + careerName[careerID] + "] Career EXP has been exchanged for a Supply Crate!");
         }
      }
      if(careerID == _root.save.curBusiness && mustTurnOn != false)
      {
         if(_root.save.careerActive[careerID] > 0 || _root.save.careerBoost[careerID] > 0)
         {
            _root.save.curBusinessActivity += amount;
         }
         else
         {
            _root.save.curBusinessActivity += Math.ceil(amount * 0.5);
         }
      }
   }
}
function claimReward()
{
   if(_root.save.seppukuPenalty > _root.save.seppukuAscension)
   {
      _root.save.seppukuPenalty -= 1;
   }
   rewardToClaim = Math.ceil(_root.progPercent / 200);
   if(rewardToClaim > 500)
   {
      rewardToClaim = 500;
   }
   _root.progPercent -= 100 * rewardToClaim;
   _root.save.progFrag += 1 * rewardToClaim;
   _root.save.rewardClaim += 1 * rewardToClaim;
   var _loc2_ = 1;
   while(_loc2_ <= _root.todayEvent)
   {
      yy = _root.clock_year % 10;
      mm = _root.clock_month;
      dd = _root.clock_date;
      if(_root.eventList[yy][mm][dd][_loc2_] == "Receive Event Tokens by claiming rewards")
      {
         _root.gainEventToken(1);
      }
      _loc2_ += 1;
   }
   expToGet = Math.floor(1.4 * _root.save.boost * Math.pow(_root.save.level,0.6) * (1 + _root.achRedCoin / 10000 + _root.save.petBestLevel / 100 + (_root.save.mainQuestC * 1 + _root.save.mainQuestB * 3 + _root.save.mainQuestA * 6 + _root.save.mainQuestS * 10) / 2500) * rewardToClaim);
   coinToGet = Math.floor(0.35 * _root.save.boost * Math.pow(_root.save.level,0.6) * (0.8 + Math.random() * 0.4) * (1 + _root.achRedCoin / 10000 + _root.save.petBestLevel / 100 + (_root.save.mainQuestC * 1 + _root.save.mainQuestB * 3 + _root.save.mainQuestA * 6 + _root.save.mainQuestS * 10) / 2500) * rewardToClaim);
   if(_root.save.bestLevel < 35)
   {
      expToGet = Math.floor(expToGet * 0.5);
      if(expToGet > _root.requiredExp * 2)
      {
         expToGet = _root.requiredExp * 2;
      }
   }
   greenCoinToGet = 100 * rewardToClaim;
   blueCoinToGet = 0;
   if(_root.save.rewardClaim <= 5)
   {
      expToGet = 4;
      coinToGet = 1000;
      greenCoinToGet = 200;
      blueCoinToGet = 20;
   }
   if(_root.save.idleMode == false)
   {
      _root.save.rewardClaimManual += 1 * rewardToClaim;
      if(Math.random() < 0.1 && _root.save.rewardBotTime > 0)
      {
         _root.gainCareerEXP(1,rewardToClaim,true);
      }
      greenCoinToGet += 100 * rewardToClaim;
      bcChance = 0.1;
      if(_root.save.permaBanPenalty[2] == 3)
      {
         bcChance = 0.6;
      }
      else if(_root.save.permaBanPenalty[2] == 2)
      {
         bcChance = 0.4;
      }
      if(_root.save.permaBanPenalty[2] == 1)
      {
         bcChance = 0.3;
      }
      if(Math.random() < bcChance)
      {
         blueCoinToGet += rewardToClaim;
      }
      if(_root.save.questType == "Claim Reward")
      {
         _root.save.questCount += 1 * rewardToClaim;
      }
   }
   else
   {
      _root.save.rewardClaimAuto += 1 * rewardToClaim;
      if(Math.random() < 0.1)
      {
         _root.gainCareerEXP(1,rewardToClaim,true);
      }
      if(_root.save.questType == "Claim Reward")
      {
         if(_root.save.questSubtype != "No Idle Mode")
         {
            _root.save.questCount += 1 * rewardToClaim;
         }
      }
   }
   doubleMod = 1;
   if(_root.save.featureEpicLicense == true)
   {
      if(Math.random() < _root.save.epicSkill[1] * 0.01)
      {
         _root.progPercent += 100 * rewardToClaim;
         _root.dispNews(8,"Epic Skill [Double Progress] activated!");
      }
      if(Math.random() < _root.save.epicSkill[2] * 0.01)
      {
         _root.gainBoost(2 * rewardToClaim,3);
         _root.dispNews(9,"Epic Skill [Boost Charger] activated!");
      }
      if(Math.random() < _root.save.epicSkill[3] * 0.01)
      {
         coinToGet += 1000000 * rewardToClaim;
         greenCoinToGet += 500 * rewardToClaim;
         _root.dispNews(10,"Epic Skill [Coin Collector] activated!");
      }
      if(Math.random() < _root.save.epicSkill[4] * 0.01)
      {
         _root.save.printerCharge += 1 * rewardToClaim;
         _root.save.totalPrinterCharge += 1 * rewardToClaim;
         _root.dispNews(11,"Epic Skill [Battery Booster] activated!");
      }
      if(Math.random() < _root.save.epicSkill[5] * 0.01)
      {
         _root.save.fishFatigue -= 1 * rewardToClaim;
         _root.dispNews(12,"Epic Skill [Fanatical Fisher] activated!");
      }
      if(Math.random() < _root.save.epicSkill[6] * 0.01)
      {
         doubleMod = 2;
         _root.dispNews(13,"Epic Skill [Module Master] activated!");
      }
      if(Math.random() < _root.save.epicSkill[7] * 0.01)
      {
         _root.save.botEnergy += 1 * rewardToClaim;
         if(_root.save.botEnergy > 359999)
         {
            _root.save.botEnergy = 359999;
         }
         _root.dispNews(184,"Epic Skill [Cyborg Charger] activated!");
      }
   }
   _loc2_ = 1;
   while(_loc2_ <= 9)
   {
      mcModif = 1;
      var _loc3_ = 1;
      while(_loc3_ <= 9)
      {
         if(_loc2_ != _loc3_ && _root.save.progModuleType[_loc2_] == _root.save.progModuleType[_loc3_])
         {
            mcModif = 0.9;
         }
         _loc3_ += 1;
      }
      if(Math.random() < _root.save.progModuleChance[_loc2_] / 10000 * doubleMod * mcModif)
      {
         tempMod = _root.save.progModuleType[_loc2_];
         if(tempMod == 1)
         {
            expToGet += Math.floor(_root.save.progModuleEffect[_loc2_] * 0.014 * _root.save.boost * Math.pow(_root.save.level,0.6) * (1 + _root.achRedCoin / 10000 + _root.save.petBestLevel / 100 + (_root.save.mainQuestC * 1 + _root.save.mainQuestB * 3 + _root.save.mainQuestA * 6 + _root.save.mainQuestS * 10) / 2500) * rewardToClaim);
         }
         else if(tempMod == 2)
         {
            coinToGet += Math.floor(_root.save.progModuleEffect[_loc2_] * 0.0035 * _root.save.boost * Math.pow(_root.save.level,0.6) * (0.8 + Math.random() * 0.4) * (1 + _root.achRedCoin / 10000 + _root.save.petBestLevel / 100 + (_root.save.mainQuestC * 1 + _root.save.mainQuestB * 3 + _root.save.mainQuestA * 6 + _root.save.mainQuestS * 10) / 2500) * rewardToClaim);
         }
         else if(tempMod == 3)
         {
            greenCoinToGet += _root.save.progModuleEffect[_loc2_] * rewardToClaim;
         }
         else if(tempMod == 4)
         {
            blueCoinToGet += _root.save.progModuleEffect[_loc2_] * rewardToClaim;
         }
         else if(tempMod == 5)
         {
            _root.gainWhiteCoin(_root.save.progModuleEffect[_loc2_] * rewardToClaim,0);
         }
         else if(tempMod == 6)
         {
            _root.gainBoost(_root.save.progModuleEffect[_loc2_] * rewardToClaim,3);
         }
         else if(tempMod == 7)
         {
            if(_root.save.boostFreeze <= 0 || Math.random() < 0.1 || rewardToClaim >= 10)
            {
               _root.save.boostFreeze += _root.save.progModuleEffect[_loc2_] * Math.ceil(rewardToClaim * 0.1);
            }
         }
         else if(tempMod == 8)
         {
            _root.save.doubleExpTime += _root.save.progModuleEffect[_loc2_] * rewardToClaim;
         }
         else if(tempMod == 9)
         {
            _root.save.doubleCoinTime += _root.save.progModuleEffect[_loc2_] * rewardToClaim;
         }
         else if(tempMod == 10)
         {
            var _loc4_ = 1;
            while(_loc4_ <= 50)
            {
               if(_root.save.gardenTrees[_loc4_] > 0 && _root.save.gardenTreeModuleProc[_loc4_] < 10000000 && _root.save.gardenTrees[_loc4_] != 1)
               {
                  _root.save.gardenHarvestValue[_loc4_] += _root.save.progModuleEffect[_loc2_] * rewardToClaim;
                  _root.save.gardenTreeModuleProc[_loc4_] += _root.save.progModuleEffect[_loc2_] * rewardToClaim;
                  if(_root.save.gardenTreeModuleProc[_loc4_] > 10000000)
                  {
                     _root.save.gardenHarvestValue[_loc4_] -= _root.save.gardenTreeModuleProc[_loc4_] - 10000000;
                     _root.save.gardenTreeModuleProc[_loc4_] = 10000000;
                  }
               }
               _loc4_ += 1;
            }
         }
         else if(tempMod == 11)
         {
            _root.save.petMana += _root.save.progModuleEffect[_loc2_] * rewardToClaim;
         }
         else if(tempMod == 12)
         {
            _root.save.gardenPoint += _root.save.progModuleEffect[_loc2_] * rewardToClaim;
         }
         else if(tempMod == 13)
         {
            _root.save.gardenFruit += _root.save.progModuleEffect[_loc2_] * rewardToClaim;
         }
         else if(tempMod != 14)
         {
            if(tempMod != 15)
            {
               if(tempMod != 16)
               {
                  if(tempMod == 17)
                  {
                     _root.save.arenaPixel += _root.save.progModuleEffect[_loc2_] * rewardToClaim * _root.save.arenaLevel;
                  }
                  else if(tempMod == 18)
                  {
                     _root.save.arenaCraft += _root.save.progModuleEffect[_loc2_] * rewardToClaim * _root.save.arenaLevel;
                  }
                  else if(tempMod == 19)
                  {
                     _root.save.arenaSuperiorCraft += _root.save.progModuleEffect[_loc2_] * rewardToClaim;
                  }
                  else if(tempMod == 20)
                  {
                     _root.save.arenaUnobtainium += _root.save.progModuleEffect[_loc2_] * rewardToClaim;
                  }
                  else if(tempMod == 21)
                  {
                     _root.save.arenaEnhancerFragment += _root.save.progModuleEffect[_loc2_] * rewardToClaim;
                  }
                  else if(tempMod == 22)
                  {
                     _root.save.arenaBacon += _root.save.progModuleEffect[_loc2_] * rewardToClaim;
                  }
                  else if(tempMod == 23)
                  {
                     _root.save.arenaCrystal1 += _root.save.progModuleEffect[_loc2_] * rewardToClaim;
                  }
                  else if(tempMod == 24)
                  {
                     _root.save.arenaCrystal2 += _root.save.progModuleEffect[_loc2_] * rewardToClaim;
                  }
                  else if(tempMod == 25)
                  {
                     _root.save.buttonPurple += _root.save.progModuleEffect[_loc2_] * rewardToClaim;
                  }
                  else if(tempMod == 26)
                  {
                     modCareer = random(12) + 1;
                     if(_root.save.careerLevel[modCareer] >= 100)
                     {
                        _root.gainCareerEXP(modCareer,_root.save.progModuleEffect[_loc2_] * rewardToClaim * 2,false);
                     }
                     else
                     {
                        _root.gainCareerEXP(modCareer,_root.save.progModuleEffect[_loc2_] * rewardToClaim,false);
                     }
                  }
                  else if(tempMod == 27)
                  {
                     _root.save.arcade100kMedal += _root.save.progModuleEffect[_loc2_] * rewardToClaim;
                  }
                  else if(tempMod == 28)
                  {
                     _root.save.stadiumToken += _root.save.progModuleEffect[_loc2_] * rewardToClaim;
                  }
                  else if(tempMod == 29)
                  {
                     _root.save.fcgCash += _root.save.progModuleEffect[_loc2_] * rewardToClaim;
                  }
                  else if(tempMod >= 30 && tempMod <= 39)
                  {
                     _root.save.lolGems[tempMod - 29] += _root.save.progModuleEffect[_loc2_] * rewardToClaim;
                  }
                  else if(tempMod == 40)
                  {
                     if(_root.save.awesomeEnergy < _root.save.awesomeMaxEnergy * 5 + 15)
                     {
                        _root.save.awesomeEnergyNext -= _root.save.progModuleEffect[_loc2_] * rewardToClaim;
                     }
                  }
                  else if(tempMod == 41)
                  {
                     _root.save.specialPetFood += _root.save.progModuleEffect[_loc2_] * rewardToClaim;
                  }
                  else if(tempMod == 42)
                  {
                     _root.save.fishFatigue -= _root.save.progModuleEffect[_loc2_] * rewardToClaim;
                  }
                  else if(tempMod == 43)
                  {
                     _root.save.totalMute += rewardToClaim;
                  }
               }
            }
         }
      }
      doubleMod = 1;
      _loc2_ += 1;
   }
   if(_root.save.gardenBreed1 != 0)
   {
      _root.save.gardenResearch += 1 * rewardToClaim;
   }
   if(_root.save.idleMode == false)
   {
      if(_root.save.permaBanPenalty[17] == 3)
      {
         expToGet = Math.floor(expToGet * 1.25);
      }
      else if(_root.save.permaBanPenalty[17] == 2)
      {
         expToGet = Math.floor(expToGet * 1.15);
      }
      else if(_root.save.permaBanPenalty[17] == 1)
      {
         expToGet = Math.floor(expToGet * 1.1);
      }
      if(_root.save.permaBanPenalty[26] == 3)
      {
         coinToGet = Math.floor(coinToGet * 1.25);
      }
      else if(_root.save.permaBanPenalty[26] == 2)
      {
         coinToGet = Math.floor(coinToGet * 1.15);
      }
      else if(_root.save.permaBanPenalty[26] == 1)
      {
         coinToGet = Math.floor(coinToGet * 1.1);
      }
   }
   else if(_root.save.idleMode == true)
   {
      if(_root.save.permaBanPenalty[25] == 3)
      {
         expToGet = Math.floor(expToGet * 1.15);
      }
      else if(_root.save.permaBanPenalty[25] == 2)
      {
         expToGet = Math.floor(expToGet * 1.09);
      }
      else if(_root.save.permaBanPenalty[25] == 1)
      {
         expToGet = Math.floor(expToGet * 1.06);
      }
      if(_root.save.permaBanPenalty[36] == 3)
      {
         coinToGet = Math.floor(coinToGet * 1.15);
      }
      else if(_root.save.permaBanPenalty[36] == 2)
      {
         coinToGet = Math.floor(coinToGet * 1.09);
      }
      else if(_root.save.permaBanPenalty[36] == 1)
      {
         coinToGet = Math.floor(coinToGet * 1.06);
      }
   }
   if(_root.saveid == 26)
   {
      expToGet = Math.floor(expToGet * 20);
      coinToGet = Math.floor(coinToGet * 2);
   }
   if(_root.save.permaBanPenalty[2] == 3)
   {
      greenCoinToGet += 500 * rewardToClaim;
   }
   else if(_root.save.permaBanPenalty[2] == 2)
   {
      greenCoinToGet += 300 * rewardToClaim;
   }
   else if(_root.save.permaBanPenalty[2] == 1)
   {
      greenCoinToGet += 200 * rewardToClaim;
   }
   _root.gainEXP(expToGet,0);
   _root.gainCoin(coinToGet,0);
   _root.gainGreenCoinND(greenCoinToGet,0);
   _root.gainBlueCoin(blueCoinToGet,0);
   if(rewardToClaim > 1)
   {
      _root.dispNews(5,_root.withComma(rewardToClaim) + " rewards claimed! (+" + _root.withComma(expToGet) + " EXP | +" + _root.withComma(coinToGet) + " Coins)");
   }
   else
   {
      _root.dispNews(4,"Reward claimed! (+" + _root.withComma(expToGet) + " EXP | +" + _root.withComma(coinToGet) + " Coins)");
   }
   if(_root.save.level > 10)
   {
      if(Math.random() < (0.01 - _root.save.boost / 100000) * rewardToClaim)
      {
         _root.gainBoost(5,3);
         _root.dispNews(6,"Yay, free boost! (+5% Boost)");
      }
   }
}
function harvestTree(slot, harvestAll)
{
   tmul = Math.floor(Math.pow(_root.save.level,0.6)) / 10 + 6.5;
   if(isNaN(_root.save.gardenHarvestValue[slot]))
   {
      _root.save.gardenHarvestValue[slot] = 0;
   }
   _root.save.curForestDestroyer = 0;
   _root.save.harvestCount += 1;
   _root.save.gardenMastery[_root.save.gardenTrees[slot]] += 1;
   if(_root.save.questType == "Harvest")
   {
      if(_root.save.questSubtype == "Any")
      {
         _root.save.questCount += 1;
      }
   }
   plotExpToEarn = _root.save.gardenTreeExp[slot];
   if(_root.save.gardenTrees[slot] == 1)
   {
      if(_root.save.questType == "Harvest")
      {
         if(_root.save.questSubtype == "Free Tree")
         {
            _root.save.questCount += 1;
         }
      }
   }
   if(_root.save.gardenTrees[slot] == 2)
   {
      if(_root.save.questType == "Harvest")
      {
         if(_root.save.questSubtype == "Blue Tree")
         {
            _root.save.questCount += 1;
         }
      }
   }
   if(_root.save.gardenTrees[slot] == 3)
   {
      if(_root.save.questType == "Harvest")
      {
         if(_root.save.questSubtype == "Pink Tree")
         {
            _root.save.questCount += 1;
         }
      }
   }
   if(_root.save.gardenTrees[slot] == 4)
   {
      if(_root.save.questType == "Harvest")
      {
         if(_root.save.questSubtype == "Green Tree")
         {
            _root.save.questCount += 1;
         }
      }
   }
   if(_root.save.gardenTrees[slot] == 5)
   {
      if(_root.save.questType == "Harvest")
      {
         if(_root.save.questSubtype == "Lime Tree")
         {
            _root.save.questCount += 1;
         }
      }
   }
   if(_root.save.gardenTrees[slot] == 6)
   {
      if(_root.save.questType == "Harvest")
      {
         if(_root.save.questSubtype == "Yellow Tree")
         {
            _root.save.questCount += 1;
         }
      }
   }
   if(_root.save.gardenTrees[slot] == 7)
   {
      if(_root.save.questType == "Harvest")
      {
         if(_root.save.questSubtype == "Red Tree")
         {
            _root.save.questCount += 1;
         }
      }
   }
   if(_root.save.gardenTrees[slot] == 8)
   {
      if(_root.save.questType == "Harvest")
      {
         if(_root.save.questSubtype == "Black Tree")
         {
            _root.save.questCount += 1;
         }
      }
   }
   if(_root.save.gardenTrees[slot] == 9)
   {
      if(_root.save.questType == "Harvest")
      {
         if(_root.save.questSubtype == "Holiday Tree")
         {
            _root.save.questCount += 1;
         }
      }
   }
   if(_root.save.gardenCapacity >= 16 && slot <= 25)
   {
      if(Math.random() < 0.01 * Math.sqrt(plotExpToEarn))
      {
         if(Math.random() < 0.3333333333333333)
         {
            _root.save.gardenSeed[26] += 1;
            _root.dispNews(22,"Gained Seed #1 for Another Garden!");
         }
         else if(Math.random() < 0.5)
         {
            _root.save.gardenSeed[51] += 1;
            _root.dispNews(22,"Gained Seed #26 for Another Garden!");
         }
         else
         {
            _root.save.gardenSeed[76] += 1;
            _root.dispNews(22,"Gained Seed #51 for Another Garden!");
         }
      }
   }
   if(slot >= 26 && slot <= 50)
   {
      if(_root.save.questType == "Harvest")
      {
         if(_root.save.questSubtype == "Another Garden Tree")
         {
            _root.save.questCount += 1;
         }
      }
      if(Math.random() < 0.15 && _root.save.gardenSeed[_root.save.gardenTrees[slot]] < 99)
      {
         _root.save.gardenSeed[_root.save.gardenTrees[slot]] += 1;
         _root.dispNews(22,"Gained Seed #" + (_root.save.gardenTrees[slot] - 25) + " for Another Garden!");
      }
      if(Math.random() < 0.01 * plotExpToEarn)
      {
         fruitToEarn = 1;
         if(_root.save.permaBanPenalty[14] == 3)
         {
            fruitToEarn = 6;
         }
         else if(_root.save.permaBanPenalty[14] == 2)
         {
            fruitToEarn = 4;
         }
         else if(_root.save.permaBanPenalty[14] == 1)
         {
            fruitToEarn = 3;
         }
         _root.save.gardenFruit += fruitToEarn;
         if(harvestAll != true)
         {
            _root.dispNews(21,"Gained " + fruitToEarn + " Randomfruit! You now have: " + _root.withComma(_root.save.gardenFruit));
         }
         else
         {
            harvestSummaryFruit += fruitToEarn;
         }
      }
   }
   if(slot >= 51)
   {
      if(_root.save.questType == "Harvest")
      {
         if(_root.save.questSubtype == "Another Another Garden Tree")
         {
            _root.save.questCount += 1;
         }
      }
   }
   if(Math.random() < 0.01 + 0.002 * plotExpToEarn)
   {
      _root.gainWhiteCoin(1,6);
   }
   _root.save.gardenSlotEXP[slot] += plotExpToEarn;
   _root.save.gardenEXP += plotExpToEarn;
   _root.save.gardenPoint += plotExpToEarn;
   var _loc4_ = 1;
   while(_loc4_ <= _root.todayEvent)
   {
      yy = _root.clock_year % 10;
      mm = _root.clock_month;
      dd = _root.clock_date;
      if(_root.eventList[yy][mm][dd][_loc4_] == "Receive Event Tokens by harvesting trees")
      {
         _root.gainEventToken(plotExpToEarn / 5);
      }
      _loc4_ += 1;
   }
   if(harvestAll != true)
   {
      careerToGain = Math.floor(5 + plotExpToEarn * (1 + _root.save.gardenSlotEXP[slot] / 50000));
      if(careerToGain > 5 + 3 * plotExpToEarn)
      {
         careerToGain = 5 + 3 * plotExpToEarn;
      }
      if(slot >= 26 && slot <= 50)
      {
         careerToGain = Math.floor(careerToGain * 2);
      }
      if(slot >= 51)
      {
         careerToGain = Math.floor(careerToGain * 3);
      }
      _root.gainCareerEXP(2,careerToGain,true);
      _root.dispNews(19,"Tree #" + slot + " harvested! (+" + _root.withComma(_root.save.gardenHarvestValue[slot] * tmul * (1 + _root.curCareerLevel[2] * 0.005)) + " Coins)");
      if(slot <= 25)
      {
         _root.gainEXP(_root.save.gardenHarvestValue[slot] * tmul * (0.3 + _root.curCareerLevel[2] * 0.0015) * (1 + _root.save.petStat[1] * 0.002),6);
      }
      else if(slot <= 50)
      {
         _root.gainEXP(_root.save.gardenHarvestValue[slot] * tmul * (0.45 + _root.curCareerLevel[2] * 0.00225) * (1 + _root.save.petStat[1] * 0.002),6);
      }
      else
      {
         _root.gainEXP(_root.save.gardenHarvestValue[slot] * tmul * (0.6 + _root.curCareerLevel[2] * 0.003) * (1 + _root.save.petStat[1] * 0.002),6);
      }
      _root.gainCoin(Math.floor(_root.save.gardenHarvestValue[slot] * tmul * (1 + _root.curCareerLevel[2] * 0.005),6));
      _root.save.harvestCoin += Math.floor(_root.save.gardenHarvestValue[slot] * (1 + _root.curCareerLevel[2] * 0.005));
      _root.save.gardenRecentTime[slot] = _root.systemtimenow;
      greenCoinToEarn = Math.ceil(250 + plotExpToEarn * 50);
      _root.gainGreenCoin(greenCoinToEarn,6);
      blueCoinToEarn = Math.ceil(0.5 + plotExpToEarn * 0.1);
      if(_root.save.gardenTrees[slot] == 1)
      {
         blueCoinToEarn = 1;
      }
      _root.gainBlueCoin(blueCoinToEarn,6);
   }
   else
   {
      careerToGain = Math.floor(5 + plotExpToEarn * (1 + _root.save.gardenSlotEXP[slot] / 50000));
      if(careerToGain > 5 + 3 * plotExpToEarn)
      {
         careerToGain = 5 + 3 * plotExpToEarn;
      }
      if(slot >= 26 && slot <= 50)
      {
         careerToGain = Math.floor(careerToGain * 2);
      }
      if(slot >= 51)
      {
         careerToGain = Math.floor(careerToGain * 3);
      }
      harvestSummaryCareer += careerToGain;
      harvestSummaryCount += 1;
      harvestSummaryCoin += Math.floor(_root.save.gardenHarvestValue[slot] * tmul * (1 + _root.curCareerLevel[2] * 0.005));
      if(slot <= 25)
      {
         harvestSummaryEXP += Math.floor(_root.save.gardenHarvestValue[slot] * tmul * (0.3 + _root.curCareerLevel[2] * 0.0015) * (1 + _root.save.petStat[1] * 0.002));
      }
      else if(slot <= 50)
      {
         harvestSummaryEXP += Math.floor(_root.save.gardenHarvestValue[slot] * tmul * (0.45 + _root.curCareerLevel[2] * 0.00225) * (1 + _root.save.petStat[1] * 0.002));
      }
      else
      {
         harvestSummaryEXP += Math.floor(_root.save.gardenHarvestValue[slot] * tmul * (0.6 + _root.curCareerLevel[2] * 0.003) * (1 + _root.save.petStat[1] * 0.002));
      }
      _root.save.harvestCoin += Math.floor(_root.save.gardenHarvestValue[slot] * tmul * (1 + _root.curCareerLevel[2] * 0.005));
      _root.save.gardenRecentTime[slot] = _root.systemtimenow;
      greenCoinToEarn = Math.ceil(250 + plotExpToEarn * 50);
      harvestSummaryGreenCoin += greenCoinToEarn;
      blueCoinToEarn = Math.ceil(0.5 + plotExpToEarn * 0.1);
      if(_root.save.gardenTrees[slot] == 1)
      {
         blueCoinToEarn = 1;
      }
      harvestSummaryBlueCoin += blueCoinToEarn;
   }
}
function harvestAllTree()
{
   harvestSummaryCount = 0;
   harvestSummaryEXP = 0;
   harvestSummaryCoin = 0;
   harvestSummaryGreenCoin = 0;
   harvestSummaryBlueCoin = 0;
   harvestSummaryCareer = 0;
   harvestSummaryFruit = 0;
   var _loc2_ = 1;
   while(_loc2_ <= _root.save.gardenCapacity)
   {
      if(_root.save.gardenTrees[_loc2_] > 0)
      {
         if(_root.save.gardenRecentTime[_loc2_] + _root.save.gardenHarvestTime[_loc2_] - _root.systemtimenow <= 0)
         {
            _root.harvestTree(_loc2_,true);
         }
      }
      _loc2_ += 1;
   }
   _root.gainEXP(harvestSummaryEXP,6);
   _root.gainCoin(harvestSummaryCoin,6);
   _root.gainGreenCoin(harvestSummaryGreenCoin,6);
   _root.gainBlueCoin(harvestSummaryBlueCoin,6);
   _root.gainCareerEXP(2,harvestSummaryCareer,true);
   if(harvestSummaryCount >= 2)
   {
      _root.dispNews(19,harvestSummaryCount + " trees harvested! (+" + _root.withComma(harvestSummaryCoin) + " Coins)");
   }
   else if(harvestSummaryCount == 1)
   {
      _root.dispNews(19,"1 tree harvested! (+" + _root.withComma(harvestSummaryCoin) + " Coins)");
   }
   if(harvestSummaryFruit >= 1)
   {
      _root.dispNews(21,"Gained " + harvestSummaryFruit + " Randomfruit! You now have: " + _root.withComma(_root.save.gardenFruit));
   }
}
function printMoney(moneyToPrintX)
{
   _root.printPercent = 0;
   if(_root.save.printerCharge > 0)
   {
      if(_root.save.questType == "Print")
      {
         if(_root.save.questSubtype == "Any")
         {
            _root.save.questCount += 1;
         }
      }
      _root.save.printerCharge -= 1;
      if(_root.save.printerCharge > 160)
      {
         _root.save.printerCharge -= 4;
      }
      if(_root.save.printerCharge > 1000)
      {
         _root.save.printerCharge = 1000;
      }
      if(Math.random() < Math.min(Math.floor(_root.save.totalStupidity / 20),25) * 0.04)
      {
         _root.gainBlueCoin(1,9);
      }
      _root.dispNews(75,"Money printed! (+" + _root.withComma(moneyToPrintX) + " Coins)");
      critPrintChance = 0.01;
      if(_root.save.permaBanPenalty[29] == 3)
      {
         critPrintChance *= 6;
      }
      else if(_root.save.permaBanPenalty[29] == 2)
      {
         critPrintChance *= 4;
      }
      else if(_root.save.permaBanPenalty[29] == 1)
      {
         critPrintChance *= 3;
      }
      if(Math.random() < critPrintChance)
      {
         greenCoinToGain = Math.floor(((_root.save.printerLevel + 25) * Math.pow(Math.min(_root.save.level,9001),0.65) * 0.63 * 10 + 4560) * (100 + _root.save.printerLevel) / 100);
         greenCoinToGain = Math.round(greenCoinToGain / 125) * 10;
         if(_root.save.permaBanPenalty[4] == 3)
         {
            greenCoinToGain = Math.round(greenCoinToGain * 2.5);
         }
         else if(_root.save.permaBanPenalty[4] == 2)
         {
            greenCoinToGain = Math.round(greenCoinToGain * 1.9);
         }
         else if(_root.save.permaBanPenalty[4] == 1)
         {
            greenCoinToGain = Math.round(greenCoinToGain * 1.6);
         }
         _root.gainGreenCoin(greenCoinToGain,9);
         _root.dispNews(76,"CRITICAL PRINT! (+" + _root.withComma(greenCoinToGain) + " Green Coins)");
         if(_root.save.questType == "Print")
         {
            if(_root.save.questSubtype == "Critical")
            {
               _root.save.questCount += 1;
            }
         }
      }
   }
   if(_root.save.printerCharge > 0 && _root.save.printerCharge < 10)
   {
      _root.dispNews(156,"Your Printer Battery is low.");
   }
   if(_root.save.printerCharge <= 0)
   {
      _root.dispNews(157,"Your Printer Battery has run out. Charge it now!");
   }
   _root.gainCoin(moneyToPrintX,9);
   _root.save.totalPrinterMoney += moneyToPrintX;
   if(_root.save.totalPrinterMoney >= 1000000)
   {
      _root.save.totalPrinterMillion += Math.floor(_root.save.totalPrinterMoney / 1000000);
      _root.save.totalPrinterMoney %= 1000000;
   }
}
function toHex(dec)
{
   return dec.toString(16);
}
function jewk(str)
{
   if(str.length == 1)
   {
      return "<font color=\'#FFFF00\'>" + str + " </font>";
   }
   var _loc3_ = "";
   var _loc4_ = undefined;
   var _loc5_ = str.length;
   var _loc6_ = 0;
   var _loc7_ = 0;
   _loc4_ = 0;
   while(_loc4_ < _loc5_)
   {
      if(_loc4_ > (_loc5_ - 1) / 2)
      {
         _loc6_ = Math.round((_loc5_ - 1 - _loc4_) / (_loc5_ - 1) * 300) + 100;
         _loc7_ = 250;
      }
      else
      {
         _loc6_ = 250;
         _loc7_ = Math.round(_loc4_ / (_loc5_ - 1) * 300) + 100;
      }
      if(_loc6_ > 250)
      {
         _loc6_ = 250;
      }
      if(_loc7_ > 250)
      {
         _loc7_ = 250;
      }
      if(_loc6_ < 0)
      {
         _loc6_ = 0;
      }
      if(_loc7_ < 0)
      {
         _loc7_ = 0;
      }
      _loc3_ += "<font color=\'#" + _root.toHex(_loc6_ * 65536 + _loc7_ * 256) + "\'>" + str.substr(_loc4_,1) + "</font>";
      _loc4_ += 1;
   }
   return _loc3_;
}
function jewkB(str)
{
   if(str.length == 1)
   {
      return "<font color=\'#FFFF00\'>" + str + " </font>";
   }
   var _loc3_ = "";
   var _loc4_ = undefined;
   var _loc5_ = str.length;
   var _loc6_ = 0;
   var _loc7_ = 0;
   _loc4_ = 0;
   while(_loc4_ < _loc5_)
   {
      if(_loc4_ > (_loc5_ - 1) / 2)
      {
         _loc6_ = Math.round((_loc5_ - 1 - _loc4_) / (_loc5_ - 1) * 200) + 150;
         _loc7_ = 250;
      }
      else
      {
         _loc6_ = 250;
         _loc7_ = Math.round(_loc4_ / (_loc5_ - 1) * 200) + 150;
      }
      if(_loc6_ > 250)
      {
         _loc6_ = 250;
      }
      if(_loc7_ > 250)
      {
         _loc7_ = 250;
      }
      if(_loc6_ < 0)
      {
         _loc6_ = 0;
      }
      if(_loc7_ < 0)
      {
         _loc7_ = 0;
      }
      _loc3_ += "<font color=\'#" + _root.toHex(_loc6_ * 65536 + _loc7_ * 256) + "\'>" + str.substr(_loc4_,1) + "</font>";
      _loc4_ += 1;
   }
   return _loc3_;
}
function jewkC(str)
{
   if(str.length == 1)
   {
      return "<font color=\'#FFFF00\'>" + str + " </font>";
   }
   var _loc3_ = "";
   var _loc4_ = undefined;
   var _loc5_ = str.length;
   var _loc6_ = 0;
   var _loc7_ = 0;
   _loc4_ = 0;
   while(_loc4_ < _loc5_)
   {
      if(_loc4_ > (_loc5_ - 1) / 2)
      {
         _loc6_ = Math.round((_loc5_ - 1 - _loc4_) / (_loc5_ - 1) * 200) + 150;
         _loc7_ = 250;
         blue = 0;
      }
      else
      {
         _loc6_ = 250;
         _loc7_ = 250;
         blue = Math.round(((_loc5_ - 1) / 2 - _loc4_) / (_loc5_ - 1) * 250);
      }
      if(_loc6_ > 250)
      {
         _loc6_ = 250;
      }
      if(_loc7_ > 250)
      {
         _loc7_ = 250;
      }
      if(blue > 250)
      {
         blue = 250;
      }
      if(_loc6_ < 0)
      {
         _loc6_ = 0;
      }
      if(_loc7_ < 0)
      {
         _loc7_ = 0;
      }
      if(blue < 0)
      {
         blue = 0;
      }
      _loc3_ += "<font color=\'#" + _root.toHex(_loc6_ * 65536 + _loc7_ * 256 + blue) + "\'>" + str.substr(_loc4_,1) + "</font>";
      _loc4_ += 1;
   }
   return _loc3_;
}
function clearChallenge()
{
   if(_root.saveid >= 20)
   {
      _root.save.challengeToken = Math.floor(_root.saveid * (_root.saveid + 1) * (_root.saveid - 7) * 156.4);
   }
}
function scrollUp()
{
   _root.scrollingDir = -1;
}
function scrollDown()
{
   _root.scrollingDir = 1;
}
function calcPerf(op)
{
   tempCPerf = 0;
   if(op == 0)
   {
      tempCPerf = 40 + _root.save.botLevel * 1;
   }
   else if(op == 1)
   {
      tempCPerf = Math.floor(100 + _root.save.highPong * 0.0065 + Math.pow(_root.save.totalPong / 100000,0.4) * 10) * 100;
   }
   else if(op == 2)
   {
      tempCPerf = Math.floor(100 + _root.save.highAvoidance * 0.0065 + Math.pow(_root.save.totalAvoidance / 100000,0.4) * 10) * 100;
   }
   else if(op == 3)
   {
      tempCPerf = Math.floor(100 + _root.save.highMath * 0.0065 + Math.pow(_root.save.totalMath / 100000,0.4) * 10) * 100;
   }
   else if(op == 4)
   {
      tempCPerf = Math.floor(100 + _root.save.highWhack * 0.0065 + Math.pow(_root.save.totalWhack / 100000,0.4) * 10) * 100;
   }
   else if(op == 5)
   {
      tempCPerf = Math.floor(100 + _root.save.highCount * 0.0065 + Math.pow(_root.save.totalCount / 100000,0.4) * 10) * 100;
   }
   else if(op == 6)
   {
      tempCPerf = Math.floor(100 + _root.save.highMind * 0.0065 + Math.pow(_root.save.totalMind / 100000,0.4) * 10) * 100;
   }
   else if(op == 7)
   {
      tempCPerf = Math.floor(100 + _root.save.highBalance * 0.0065 + Math.pow(_root.save.totalBalance / 100000,0.4) * 10) * 100;
   }
   else if(op == 8)
   {
      tempCPerf = Math.floor(50 + _root.save.stadiumAbilityCost / 4 + Math.pow(_root.save.stadiumRace,0.3) * 10 + Math.pow(_root.save.stadiumImpossibleRace,0.4) * 15) / 10;
   }
   else if(op == 9)
   {
      tempCPerf = Math.floor(50 + _root.save.stadiumAbilityCost / 4 + Math.pow(_root.save.stadiumItem,0.3) * 10 + Math.pow(_root.save.stadiumImpossibleItem,0.4) * 15) / 10;
   }
   else if(op == 10)
   {
      tempCPerf = Math.floor(50 + _root.save.stadiumAbilityCost / 8 + _root.save.stadiumBestDeathMatch * 0.65 + Math.pow(_root.save.stadiumDeathMatch,0.5) * 2);
   }
   else if(op == 11)
   {
      tempCPerf = Math.floor(100 + _root.save.highMMRX * 0.0065 + Math.pow(_root.save.totalMMRX / 100000,0.4) * 10) * 100;
   }
   else if(op == 12)
   {
      tempCPerf = Math.floor(45 + 500 * _root.save.fcgMaxStreak1 / (_root.save.fcgMaxStreak1 + 25) + Math.pow(_root.save.fcgLevel1,0.4) * 14 + _root.save.fcgLevel * 9) / 10;
   }
   else if(op == 13)
   {
      tempCPerf = Math.floor(40 + 500 * _root.save.fcgMaxStreak2 / (_root.save.fcgMaxStreak2 + 25) + Math.pow(_root.save.fcgLevel2,0.4) * 13 + _root.save.fcgLevel * 8) / 10;
   }
   else if(op == 14)
   {
      tempCPerf = Math.floor(35 + 500 * _root.save.fcgMaxStreak3 / (_root.save.fcgMaxStreak3 + 25) + Math.pow(_root.save.fcgLevel3,0.4) * 12 + _root.save.fcgLevel * 7) / 10;
   }
   else if(op == 15)
   {
      tempCPerf = Math.floor(30 + 500 * _root.save.fcgMaxStreak4 / (_root.save.fcgMaxStreak4 + 25) + Math.pow(_root.save.fcgLevel4,0.4) * 11 + _root.save.fcgLevel * 6) / 10;
   }
   else if(op == 16)
   {
      tempCPerf = Math.floor(25 + 500 * _root.save.fcgMaxStreak6 / (_root.save.fcgMaxStreak6 + 25) + Math.pow(_root.save.fcgLevel6,0.3) * 9 + _root.save.fcgLevel * 4) / 10;
   }
   else if(op == 17)
   {
      tempCPerf = Math.floor(20 + 500 * _root.save.fcgMaxStreak7 / (_root.save.fcgMaxStreak7 + 25) + Math.pow(_root.save.fcgLevel7,0.3) * 8 + _root.save.fcgLevel * 3) / 10;
   }
   else if(op == 18)
   {
      tempCPerf = Math.floor(15 + 500 * _root.save.fcgMaxStreak8 / (_root.save.fcgMaxStreak8 + 25) + Math.pow(_root.save.fcgLevel8,0.3) * 7 + _root.save.fcgLevel * 2) / 10;
   }
   else if(op == 19)
   {
      tempCPerf = Math.floor(10 + 500 * _root.save.fcgMaxStreak10 / (_root.save.fcgMaxStreak10 + 25) + Math.pow(_root.save.fcgLevel10,0.3) * 5 + _root.save.fcgLevel * 1) / 10;
   }
   else if(op == 20)
   {
      tempCPerf = Math.floor(10 + 500 * _root.save.fishBestStreak / (_root.save.fishBestStreak + 25) + Math.pow(_root.save.fishPerfect,0.3) * 5 + _root.save.fishBestLevel * 5) / 10;
   }
   if(op != 0 && tempCPerf < _root.cyborgActMaxPerf[op])
   {
      tempCPerf += (_root.cyborgActMaxPerf[op] - tempCPerf) * (_root.save.botLevel * 0.0025 + Math.pow(_root.save.botOp[op] * Math.max(30,_root.cyborgActTime[op]) / 30,0.45) * 0.001);
   }
   if(op >= 1 && op <= 7 || op == 11)
   {
      tempCPerf = Math.floor(tempCPerf / 100) * 100;
   }
   else if(op == 10)
   {
      tempCPerf = Math.floor(tempCPerf);
   }
   else
   {
      tempCPerf = Math.floor(tempCPerf * 10) / 10;
   }
   if(tempCPerf > _root.cyborgActMaxPerf[op])
   {
      tempCPerf = _root.cyborgActMaxPerf[op];
   }
   if(tempCPerf < _root.cyborgActMinPerf[op])
   {
      tempCPerf = _root.cyborgActMinPerf[op];
   }
   if(isNaN(tempCPerf))
   {
      tempCPerf = 0;
   }
   return tempCPerf;
}
function calcMaxPerfCount()
{
   maxPerfCount = 0;
   tmpOp = 1;
   while(tmpOp <= 20)
   {
      if(_root.cyborgActMaxPerf[tmpOp] == _root.calcPerf(tmpOp))
      {
         maxPerfCount += 1;
      }
      tmpOp++;
   }
   _root.save.botMaxTask = maxPerfCount;
}
function fishingOp(op)
{
   chaos1 = random(200) + 1;
   if(_root.save.careerLevel[12] >= 200 && Math.random() < 0.03)
   {
      chaos1 = random(20) + 1;
   }
   if(Math.random() < 0.05 && _root.save.fishStreak >= 2)
   {
      cybFishCurrent = 59;
   }
   else if(chaos1 <= 3 && _root.save.fishStreak >= 5)
   {
      chaos = random(100) + 1;
      if(chaos <= 4 && _root.save.fishLevel >= 25)
      {
         cybFishCurrent = 3;
      }
      else if(chaos <= 20 && _root.save.fishLevel >= 15)
      {
         cybFishCurrent = 2;
      }
      else
      {
         cybFishCurrent = 1;
      }
   }
   else if(chaos1 <= 6 && _root.save.fishStreak >= 4)
   {
      chaos = random(100) + 1;
      if(chaos <= 4 && _root.save.fishLevel >= 25)
      {
         cybFishCurrent = 6;
      }
      else if(chaos <= 20 && _root.save.fishLevel >= 15)
      {
         cybFishCurrent = 5;
      }
      else
      {
         cybFishCurrent = 4;
      }
   }
   else if(chaos1 <= 12 && _root.save.fishStreak >= 3)
   {
      chaos = random(100) + 1;
      tempChance = _root.save.fishLevel;
      if(chaos <= tempChance)
      {
         cybFishCurrent = 8;
      }
      else if(chaos <= 50)
      {
         cybFishCurrent = 7;
      }
      else if(chaos <= 50 + tempChance)
      {
         cybFishCurrent = 10;
      }
      else if(chaos <= 100)
      {
         cybFishCurrent = 9;
      }
   }
   else if(chaos1 <= 17 && _root.save.fishStreak >= 6)
   {
      if(_root.save.fishStreak >= 10 && _root.save.fishLevel >= 20 && Math.random() < 0.6)
      {
         cybFishCurrent = 54;
      }
      else if(_root.save.fishStreak >= 9 && _root.save.fishLevel >= 15 && Math.random() < 0.7)
      {
         cybFishCurrent = 61;
      }
      else if(_root.save.fishStreak >= 8 && _root.save.fishLevel >= 10 && Math.random() < 0.8)
      {
         cybFishCurrent = 53;
      }
      else if(_root.save.fishStreak >= 7 && _root.save.fishLevel >= 5 && Math.random() < 0.9)
      {
         cybFishCurrent = 60;
      }
      else
      {
         cybFishCurrent = 52;
      }
   }
   else if(chaos1 <= 20 && _root.save.fishStreak >= 5 || _root.save.eliteFisherTime > 0 && _root.save.fishStreak >= 2 && Math.random() < 0.02 && chaos1 > 20)
   {
      if(_root.save.fishStreak >= 11 && _root.save.fishLevel >= 30 && Math.random() < 0.4)
      {
         cybFishCurrent = 58;
      }
      else if(_root.save.fishStreak >= 9 && _root.save.fishLevel >= 20 && Math.random() < 0.6)
      {
         cybFishCurrent = 57;
      }
      else if(_root.save.fishStreak >= 7 && _root.save.fishLevel >= 10 && Math.random() < 0.8)
      {
         cybFishCurrent = 56;
      }
      else
      {
         cybFishCurrent = 55;
      }
   }
   else if(chaos1 <= 130)
   {
      ftc = 11;
      fL = _root.save.fishLevel + 1 + Math.ceil(Math.sqrt(_root.save.fishStreak / 3));
      if(_root.save.eliteFisherTime > 0)
      {
         fL += 4;
      }
      var _loc3_ = 1;
      while(_loc3_ <= fL)
      {
         if(ftc < 30)
         {
            blah = _root.save.fishLevel - _root.fishArray[ftc + 1].fishLevel;
            if(blah > 0)
            {
               chance = 45 + Math.pow(blah,0.7) * 3;
            }
            else
            {
               chance = 35 - Math.pow(Math.abs(blah),1.1) * 3;
            }
            if(ftc >= 20)
            {
               chance *= 0.6;
            }
            if(chance > 80)
            {
               chance = 80;
            }
            if(Math.random() < chance / 100)
            {
               ftc += 1;
            }
         }
         _loc3_ += 1;
      }
      if(Math.random() < 0.3)
      {
         ftc = 11 + random(ftc - 10);
      }
      cybFishCurrent = ftc;
   }
   else
   {
      ftc = 31;
      fL = _root.save.fishLevel + 1 + Math.ceil(Math.sqrt(_root.save.fishStreak / 3));
      if(_root.save.eliteFisherTime > 0)
      {
         fL += 4;
      }
      _loc3_ = 1;
      while(_loc3_ <= fL)
      {
         if(ftc < 60)
         {
            if(ftc >= 50)
            {
               blah = _root.save.fishLevel - _root.fishArray[ftc + 21].fishLevel;
            }
            else
            {
               blah = _root.save.fishLevel - _root.fishArray[ftc + 1].fishLevel;
            }
            if(blah > 0)
            {
               chance = 45 + Math.pow(blah,0.7) * 3;
            }
            else
            {
               chance = 35 - Math.pow(Math.abs(blah),1.1) * 3;
               if(ftc >= 50)
               {
                  chance *= 0.1;
               }
            }
            if(ftc >= 40)
            {
               chance *= 0.6;
            }
            if(ftc >= 50)
            {
               chance *= 0.5;
            }
            if(ftc >= 50 && _root.save.fishStreak < (ftc - 50) * 2)
            {
               chance *= 0.3;
            }
            if(chance > 80)
            {
               chance = 80;
            }
            if(Math.random() < chance / 100)
            {
               ftc += 1;
            }
         }
         _loc3_ += 1;
      }
      if(ftc > 50 && Math.random() < 0.95)
      {
         ftc = 50 + random(ftc - 49);
         if(Math.random() < 0.75)
         {
            ftc = 50;
         }
      }
      if(Math.random() < 0.3)
      {
         ftc = 31 + random(ftc - 30);
      }
      if(ftc > 50)
      {
         ftc += 20;
      }
      cybFishCurrent = ftc;
   }
   cybFishCurrentExp = Math.floor(_root.fishArray[cybFishCurrent].fishExp * (1 + _root.curCareerLevel[12] * 0.01));
   cybFishCate = _root.fishArray[cybFishCurrent].fishCate;
   cybFishSpec = _root.fishArray[cybFishCurrent].fishSpec;
   cybFishLev = _root.fishArray[cybFishCurrent].fishLevel;
   cybFishAExp = Math.floor(_root.fishArray[cybFishCurrent].fishAExp * (1 + _root.curCareerLevel[12] * 0.005));
   if(_root.save.eliteFisherTime > 0)
   {
      cybFishAExp = Math.floor(cybFishAExp * 1.5);
   }
   if(cybFishCate == "Fish" || cybFishCate == "Junk")
   {
      tempName = "Lv. " + cybFishLev + " " + cybFishCate;
   }
   else if(cybFishLev == "")
   {
      tempName = cybFishCate;
   }
   else
   {
      tempName = cybFishLev + " " + cybFishCate;
   }
   if(Math.random() < _root.calcPerf(op) / 100 && (_root.save.fishStreak < 250 || Math.random() < 0.7) || cybFishSpec == "Manual+")
   {
      _root.save.fishStreak += 1;
      if(_root.save.fishBestStreak < _root.save.fishStreak)
      {
         _root.save.fishBestStreak = _root.save.fishStreak;
      }
      streakBonus = _root.save.fishStreak;
      if(_root.save.fishStreak > 10)
      {
         streakBonus = 9 + Math.ceil(_root.save.fishStreak / 10);
      }
      if(_root.save.fishStreak > 100)
      {
         streakBonus = 20;
      }
      if(_root.save.fishStreak > 1000)
      {
         streakBonus = 0;
      }
      _root.save.fishScore += cybFishCurrentExp * (200 + streakBonus * 50);
      _root.save.fishScoreToday += cybFishCurrentExp * (200 + streakBonus * 50);
      _root.save.fishExp += cybFishCurrentExp + streakBonus;
      _root.gainCareerEXP(12,100 + cybFishCurrentExp * 3 + streakBonus * 5 + _root.save.fishLevel,true);
      if(_root.save.permaBanPenalty[35] == 3)
      {
         _root.gainGreenCoin(30000 + streakBonus * 6000,22);
      }
      else if(_root.save.permaBanPenalty[35] == 2)
      {
         _root.gainGreenCoin(20000 + streakBonus * 4000,22);
      }
      else if(_root.save.permaBanPenalty[35] == 1)
      {
         _root.gainGreenCoin(15000 + streakBonus * 3000,22);
      }
      else
      {
         _root.gainGreenCoin(5000 + streakBonus * 1000,22);
      }
      _root.gainBlueCoin(10 + streakBonus * 2,22);
      _root.dispNews(175,"[Cyborg] Fishing Mastery increased! (+" + _root.withComma(cybFishCurrentExp + streakBonus) + ")");
      expToGain = Math.floor(cybFishAExp * Math.pow(_root.save.level,0.6) * _root.save.boost / 100 * (1 + streakBonus / 20));
      if(_root.save.permaBanPenalty[6] == 3)
      {
         expToGain = Math.floor(expToGain * 3);
      }
      else if(_root.save.permaBanPenalty[6] == 2)
      {
         expToGain = Math.floor(expToGain * 2.2);
      }
      else if(_root.save.permaBanPenalty[6] == 1)
      {
         expToGain = Math.floor(expToGain * 1.8);
      }
      if(cybFishCurrent == 52)
      {
         _root.save.awesomeRefill += 1;
      }
      if(cybFishCurrent == 53)
      {
         _root.save.gardenFertilizer += 1;
      }
      if(cybFishCurrent == 54)
      {
         _root.save.gardenMegaFertilizer += 1;
      }
      if(cybFishCurrent == 55)
      {
         _root.save.mysteryBox[1] += 1;
      }
      if(cybFishCurrent == 56)
      {
         _root.save.mysteryBox[7] += 1;
      }
      if(cybFishCurrent == 57)
      {
         _root.save.mysteryBox[8] += 1;
      }
      if(cybFishCurrent == 58)
      {
         _root.save.mysteryBox[4] += 1;
      }
      if(cybFishCurrent == 59)
      {
         _root.gainWhiteCoin(1,22);
      }
      if(cybFishCurrent == 60)
      {
         _root.save.boostPotion += 1;
      }
      if(cybFishCurrent == 61)
      {
         _root.save.megaBoostPotion += 1;
      }
      _root.gainEXP(expToGain,22);
      _root.dispNews(175,"[Cyborg] PERFECT CATCH (" + _root.save.fishStreak + "x)! " + tempName + " GET! (+" + _root.withComma(expToGain) + " EXP)");
      if(_root.save.questType == "Result")
      {
         if(_root.save.questSubtype == "Perfect" || _root.save.questSubtype == "Success")
         {
            _root.save.questCount += 1;
         }
         if(_root.save.questSubtype == "Perfect Streak")
         {
            if(_root.save.questCount < _root.save.fishStreak)
            {
               _root.save.questCount = _root.save.fishStreak;
            }
         }
      }
      if(_root.save.fishLevel > 30)
      {
         if(_root.save.fishLevel > 50)
         {
            expToGain = Math.floor(expToGain * (_root.save.fishLevel * 0.03 - 0.3));
         }
         else
         {
            expToGain = Math.floor(expToGain * (_root.save.fishLevel * 0.05 - 1.3));
         }
         _root.gainEXP(expToGain,22);
         _root.dispNews(175,"[Cyborg] Bonus LEGEND EXP gained! (+" + _root.withComma(expToGain) + " EXP)");
      }
      if(_root.save.fishStreak >= 3)
      {
         _root.gainCyborgEXP(3);
      }
      else
      {
         _root.gainCyborgEXP(2);
      }
      _root.save.fishPerfect += 1;
      _root.save.fishTotal += 1;
      _root.save.fishFound[cybFishCurrent] += 1;
      _root.save.fishLeft[cybFishCurrent] += 1;
      _root.gainBoost(1,3);
   }
   else
   {
      _root.save.fishStreak = 0;
      _root.save.fishScore += cybFishCurrentExp * 100;
      _root.save.fishScoreToday += cybFishCurrentExp * 100;
      _root.save.fishExp += cybFishCurrentExp;
      _root.gainCareerEXP(12,50 + cybFishCurrentExp * 3 + _root.save.fishLevel,true);
      if(_root.save.permaBanPenalty[35] == 3)
      {
         _root.gainGreenCoin(15000,22);
      }
      else if(_root.save.permaBanPenalty[35] == 2)
      {
         _root.gainGreenCoin(10000,22);
      }
      else if(_root.save.permaBanPenalty[35] == 1)
      {
         _root.gainGreenCoin(7500,22);
      }
      else
      {
         _root.gainGreenCoin(2500,22);
      }
      _root.gainBlueCoin(5,22);
      _root.dispNews(175,"[Cyborg] Fishing Mastery increased! (+" + _root.withComma(cybFishCurrentExp) + ")");
      if(cybFishCurrent == 52)
      {
         _root.save.awesomeRefill += 1;
      }
      if(cybFishCurrent == 53)
      {
         _root.save.gardenFertilizer += 1;
      }
      if(cybFishCurrent == 54)
      {
         _root.save.gardenMegaFertilizer += 1;
      }
      if(cybFishCurrent == 55)
      {
         _root.save.mysteryBox[1] += 1;
      }
      if(cybFishCurrent == 56)
      {
         _root.save.mysteryBox[7] += 1;
      }
      if(cybFishCurrent == 57)
      {
         _root.save.mysteryBox[8] += 1;
      }
      if(cybFishCurrent == 58)
      {
         _root.save.mysteryBox[4] += 1;
      }
      if(cybFishCurrent == 59)
      {
         _root.gainWhiteCoin(1,22);
      }
      if(cybFishCurrent == 60)
      {
         _root.save.boostPotion += 1;
      }
      if(cybFishCurrent == 61)
      {
         _root.save.megaBoostPotion += 1;
      }
      expToGain = Math.floor(cybFishAExp * Math.pow(_root.save.level,0.6) * _root.save.boost / 100 * 0.8);
      if(_root.save.permaBanPenalty[6] == 3)
      {
         expToGain = Math.floor(expToGain * 2);
      }
      else if(_root.save.permaBanPenalty[6] == 2)
      {
         expToGain = Math.floor(expToGain * 1.6);
      }
      else if(_root.save.permaBanPenalty[6] == 1)
      {
         expToGain = Math.floor(expToGain * 1.4);
      }
      _root.gainEXP(expToGain,22);
      _root.dispNews(175,"[Cyborg] " + tempName + " GET! (+" + _root.withComma(expToGain) + " EXP)");
      if(_root.save.fishLevel > 30)
      {
         if(_root.save.fishLevel > 50)
         {
            expToGain = Math.floor(expToGain * (_root.save.fishLevel * 0.03 - 0.3));
         }
         else
         {
            expToGain = Math.floor(expToGain * (_root.save.fishLevel * 0.05 - 1.3));
         }
         _root.gainEXP(expToGain,22);
         _root.dispNews(175,"[Cyborg] Bonus LEGEND EXP gained! (+" + _root.withComma(expToGain) + " EXP)");
      }
      if(_root.save.questType == "Result")
      {
         if(_root.save.questSubtype == "Success")
         {
            _root.save.questCount += 1;
         }
      }
      _root.gainCyborgEXP(1);
      _root.save.fishTotal += 1;
      _root.save.fishFound[cybFishCurrent] += 1;
      _root.save.fishLeft[cybFishCurrent] += 1;
   }
   if(_root.save.questType == "Junk" && cybFishCurrent >= 11 && cybFishCurrent <= 30)
   {
      if(_root.save.questSubtype == "Any")
      {
         _root.save.questCount += 1;
      }
      if(_root.save.questSubtype == "Lv. 5+" && cybFishCurrent >= 15)
      {
         _root.save.questCount += 1;
      }
      if(_root.save.questSubtype == "Lv. 10+" && cybFishCurrent >= 20)
      {
         _root.save.questCount += 1;
      }
      if(_root.save.questSubtype == "Lv. 20+" && cybFishCurrent >= 25)
      {
         _root.save.questCount += 1;
      }
      if(_root.save.questSubtype == "Lv. 30" && cybFishCurrent >= 30)
      {
         _root.save.questCount += 1;
      }
   }
   if(_root.save.questType == "Fish" && (cybFishCurrent >= 31 && cybFishCurrent <= 50 || cybFishCurrent >= 71))
   {
      if(_root.save.questSubtype == "Any")
      {
         _root.save.questCount += 1;
      }
      if(_root.save.questSubtype == "Lv. 5+" && cybFishCurrent >= 35)
      {
         _root.save.questCount += 1;
      }
      if(_root.save.questSubtype == "Lv. 10+" && cybFishCurrent >= 40)
      {
         _root.save.questCount += 1;
      }
      if(_root.save.questSubtype == "Lv. 20+" && cybFishCurrent >= 45)
      {
         _root.save.questCount += 1;
      }
      if(_root.save.questSubtype == "Lv. 30" && cybFishCurrent >= 50)
      {
         _root.save.questCount += 1;
      }
   }
   if(_root.save.questType == "Special Item")
   {
      if(cybFishCurrent <= 10 || cybFishCurrent >= 52)
      {
         if(_root.save.questSubtype == "Any")
         {
            _root.save.questCount += 1;
         }
         if(_root.save.questSubtype == "Treasure Box" && cybFishCurrent >= 1 && cybFishCurrent <= 3)
         {
            _root.save.questCount += 1;
         }
         if(_root.save.questSubtype == "Key" && cybFishCurrent >= 4 && cybFishCurrent <= 6)
         {
            _root.save.questCount += 1;
         }
         if(_root.save.questSubtype == "Energy Drink" && cybFishCurrent >= 7 && cybFishCurrent <= 8)
         {
            _root.save.questCount += 1;
         }
         if(_root.save.questSubtype == "Pet Food" && cybFishCurrent >= 9 && cybFishCurrent <= 10)
         {
            _root.save.questCount += 1;
         }
         if(_root.save.questSubtype == "Energy Refill" && cybFishCurrent == 52)
         {
            _root.save.questCount += 1;
         }
         if(_root.save.questSubtype == "Fertilizer" && cybFishCurrent == 53)
         {
            _root.save.questCount += 1;
         }
         if(_root.save.questSubtype == "Mega Fertilizer" && cybFishCurrent == 54)
         {
            _root.save.questCount += 1;
         }
         if(_root.save.questSubtype == "Mystery Box" && cybFishCurrent >= 55 && cybFishCurrent <= 58)
         {
            _root.save.questCount += 1;
         }
         if(_root.save.questSubtype == "Explosion Crate" && cybFishCurrent == 55)
         {
            _root.save.questCount += 1;
         }
         if(_root.save.questSubtype == "Awesome Crate" && cybFishCurrent == 56)
         {
            _root.save.questCount += 1;
         }
         if(_root.save.questSubtype == "Chaos Crate" && cybFishCurrent == 57)
         {
            _root.save.questCount += 1;
         }
         if(_root.save.questSubtype == "Legendary Box" && cybFishCurrent == 58)
         {
            _root.save.questCount += 1;
         }
         if(_root.save.questSubtype == "White Coin" && cybFishCurrent == 59)
         {
            _root.save.questCount += 1;
         }
         if(_root.save.questSubtype == "Regular Boost Potion" && cybFishCurrent == 60)
         {
            _root.save.questCount += 1;
         }
         if(_root.save.questSubtype == "Mega Boost Potion" && cybFishCurrent == 61)
         {
            _root.save.questCount += 1;
         }
      }
   }
}
function cyborgOp(op)
{
   if(op == 0)
   {
      _root.save.botEnergy += _root.calcPerf(0);
      if(_root.save.botEnergy > 359999)
      {
         _root.save.botEnergy = 359999;
      }
   }
   else if(op >= 1 && op <= 7 || op == 11)
   {
      tempCScore = Math.floor(_root.calcPerf(op) * (0.005 + Math.random() * 0.0025 + Math.random() * 0.001 + Math.random() * Math.random() * 0.0015)) * 100;
      if(op == 1)
      {
         _root.gainWhiteCoin(6 + random(10),10);
         cybA = "Pong";
         medMult = 3;
         div = 50;
         if(_root.save.highPong < tempCScore)
         {
            _root.save.highPong = tempCScore;
         }
         if(_root.save.todayHighPong < tempCScore)
         {
            _root.save.todayHighPong = tempCScore;
         }
         _root.save.totalPong += tempCScore;
         _root.dispNews(175,"[Cyborg] Simulation Cyborg scored " + _root.withComma(tempCScore) + " in Pong.");
      }
      else if(op == 2)
      {
         _root.gainWhiteCoin(2 + random(6),10);
         cybA = "Ultimate Avoidance";
         medMult = 3;
         div = 50;
         if(_root.save.highAvoidance < tempCScore)
         {
            _root.save.highAvoidance = tempCScore;
         }
         if(_root.save.todayHighAvoidance < tempCScore)
         {
            _root.save.todayHighAvoidance = tempCScore;
         }
         _root.save.totalAvoidance += tempCScore;
         _root.dispNews(175,"[Cyborg] Simulation Cyborg scored " + _root.withComma(tempCScore) + " in Ultimate Avoidance.");
      }
      else if(op == 3)
      {
         _root.gainWhiteCoin(1 + random(4),10);
         cybA = "Math Master";
         medMult = 2;
         div = 150;
         if(_root.save.highMath < tempCScore)
         {
            _root.save.highMath = tempCScore;
         }
         if(_root.save.todayHighMath < tempCScore)
         {
            _root.save.todayHighMath = tempCScore;
         }
         _root.save.totalMath += tempCScore;
         _root.dispNews(175,"[Cyborg] Simulation Cyborg scored " + _root.withComma(tempCScore) + " in Math Master.");
      }
      else if(op == 4)
      {
         _root.gainWhiteCoin(2 + random(6),10);
         cybA = "Whack-a-greg";
         medMult = 2;
         div = 100;
         if(_root.save.highWhack < tempCScore)
         {
            _root.save.highWhack = tempCScore;
         }
         if(_root.save.todayHighWhack < tempCScore)
         {
            _root.save.todayHighWhack = tempCScore;
         }
         _root.save.totalWhack += tempCScore;
         _root.dispNews(175,"[Cyborg] Simulation Cyborg scored " + _root.withComma(tempCScore) + " in Whack-a-greg.");
      }
      else if(op == 5)
      {
         _root.gainWhiteCoin(8 + random(14),10);
         cybA = "Triangle Count";
         medMult = 3;
         div = 100;
         if(_root.save.highCount < tempCScore)
         {
            _root.save.highCount = tempCScore;
         }
         if(_root.save.todayHighCount < tempCScore)
         {
            _root.save.todayHighCount = tempCScore;
         }
         _root.save.totalCount += tempCScore;
         _root.dispNews(175,"[Cyborg] Simulation Cyborg scored " + _root.withComma(tempCScore) + " in Triangle Count.");
      }
      else if(op == 6)
      {
         _root.gainWhiteCoin(4 + random(8),10);
         cybA = "MindSweeper";
         medMult = 4;
         div = 100;
         if(_root.save.highMind < tempCScore)
         {
            _root.save.highMind = tempCScore;
         }
         if(_root.save.todayHighMind < tempCScore)
         {
            _root.save.todayHighMind = tempCScore;
         }
         _root.save.totalMind += tempCScore;
         _root.dispNews(175,"[Cyborg] Simulation Cyborg scored " + _root.withComma(tempCScore) + " in MindSweeper.");
      }
      else if(op == 7)
      {
         _root.gainWhiteCoin(6 + random(10),10);
         cybA = "Balance 3";
         medMult = 3;
         div = 80;
         if(_root.save.highBalance < tempCScore)
         {
            _root.save.highBalance = tempCScore;
         }
         if(_root.save.todayHighBalance < tempCScore)
         {
            _root.save.todayHighBalance = tempCScore;
         }
         _root.save.totalBalance += tempCScore;
         _root.dispNews(175,"[Cyborg] Simulation Cyborg scored " + _root.withComma(tempCScore) + " in Balance 3.");
      }
      else if(op == 11)
      {
         _root.gainWhiteCoin(6 + random(10),10);
         cybA = "MMR X";
         medMult = 4;
         div = 80;
         if(_root.save.highMMRX < tempCScore)
         {
            _root.save.highMMRX = tempCScore;
         }
         if(_root.save.todayMMRX < tempCScore)
         {
            _root.save.todayMMRX = tempCScore;
         }
         _root.save.totalMMRX += tempCScore;
         _root.dispNews(175,"[Cyborg] Simulation Cyborg scored " + _root.withComma(tempCScore) + " in MMR X.");
      }
      _root.gainCyborgEXP(Math.ceil((tempCScore / _root.cyborgActMaxPerf[op] + 1) * (_root.cyborgActTime[op] / 20) + _root.cyborgActCost[op] / 10));
      if(tempCScore >= 100000)
      {
         medalToGet = Math.floor(Math.floor(tempCScore / 100000) * medMult * (1 + _root.curCareerLevel[6] * 0.02));
         _root.dispNews(175,"[Cyborg] You have gained " + medalToGet + " Arcade 100k Medals!");
         _root.save.arcade100kMedal += medalToGet;
      }
      if(_root.save.questType == cybA)
      {
         if(_root.save.questSubtype == "High Score")
         {
            if(_root.save.questCount < tempCScore)
            {
               _root.save.questCount = tempCScore;
            }
         }
         if(_root.save.questSubtype == "Total Score")
         {
            _root.save.questCount += tempCScore;
         }
      }
      _root.arcadeRewardMult = 3;
      if(_root.save.careerLevel[6] >= 200)
      {
         _root.arcadeRewardMult *= 1 + _root.save.arcadeRating * 0.06;
      }
      else
      {
         _root.arcadeRewardMult *= 1 + _root.save.arcadeRating * 0.05;
      }
      _root.gainCareerEXP(6,Math.floor(tempCScore / div / 4 * _root.arcadeRewardMult),true);
      baseExp = Math.floor(tempCScore / div / 1.8 * _root.arcadeRewardMult);
      baseCoin = Math.floor(tempCScore / div / 2.4 * _root.arcadeRewardMult);
      baseGreenCoin = Math.floor(tempCScore / div * 2.5 * _root.arcadeRewardMult);
      baseBlueCoin = Math.floor(tempCScore / div / 200 * _root.arcadeRewardMult);
      baseExp = Math.floor(baseExp * (1 + _root.curCareerLevel[6] * 0.005) * (1 + _root.save.petStat[4] * 0.002));
      baseCoin = Math.floor(baseCoin * (1 + _root.curCareerLevel[6] * 0.01));
      baseGreenCoin = Math.floor(baseGreenCoin * (1 + _root.curCareerLevel[6] * 0.01));
      finalExp = Math.ceil(baseExp * Math.pow(_root.save.level,0.6) * (_root.save.boost / 100));
      finalCoin = Math.ceil(baseCoin * Math.pow(_root.save.level,0.6) * (_root.save.boost / 100));
      finalGreenCoin = Math.ceil(baseGreenCoin);
      finalBlueCoin = Math.ceil(baseBlueCoin);
      if(_root.save.permaBanPenalty[10] == 3)
      {
         finalExp = Math.floor(finalExp * 3);
      }
      else if(_root.save.permaBanPenalty[10] == 2)
      {
         finalExp = Math.floor(finalExp * 2.2);
      }
      else if(_root.save.permaBanPenalty[10] == 1)
      {
         finalExp = Math.floor(finalExp * 1.8);
      }
      if(_root.save.banPenalty[9] == 1)
      {
         finalExp = Math.floor(finalExp * 1.3);
      }
      if(finalExp > 99999999999)
      {
         finalExp = 99999999999;
      }
      if(finalCoin > 99999999999)
      {
         finalCoin = 99999999999;
      }
      _root.gainEXP(finalExp,10);
      _root.gainCoin(finalCoin,10);
      _root.gainGreenCoin(finalGreenCoin,10);
      _root.gainBlueCoin(finalBlueCoin,10);
      tempProgToGet = cyborgActTime[op] * 25;
      _root.progPercent += tempProgToGet;
      _root.dispNews(175,"[Cyborg] You have gained: " + _root.withComma(finalExp) + " EXP + " + _root.withComma(finalCoin) + " Coins");
   }
   else if(op >= 8 && op <= 9)
   {
      if(Math.random() < _root.calcPerf(op) / 100)
      {
         order = 1;
         _root.gainCyborgEXP(2);
         if(Math.random() < 0.5)
         {
            _root.gainWhiteCoin(1,11);
         }
      }
      else
      {
         order = 2 + random(4);
         if(order != 5)
         {
            _root.gainCyborgEXP(1);
         }
      }
      if(op == 8)
      {
         baseExp = 3200;
         baseCoin = 5900;
         baseGreenCoin = 10000;
         baseBlueCoin = 20;
         baseToken = 600;
      }
      else
      {
         baseExp = 3750;
         baseCoin = 6900;
         baseGreenCoin = 12500;
         baseBlueCoin = 25;
         baseToken = 700;
      }
      fReward = _root.save.stadiumReward;
      _root.gainCareerEXP(7,Math.floor(300 + (300 + (5 - order) * 50) * (100 + fReward) / 100 / order),true);
      finalExp = Math.ceil((baseExp - 150) / order * Math.pow(_root.save.level,0.6) * (_root.save.boost / 100) * (1 + fReward * 0.01));
      finalCoin = Math.ceil((baseCoin - 150) / order * Math.pow(_root.save.level,0.6) * (_root.save.boost / 100));
      finalGreenCoin = Math.ceil(baseGreenCoin / order);
      finalBlueCoin = Math.ceil(baseBlueCoin / order);
      finalToken = Math.ceil(baseToken / order);
      finalExp = Math.floor(finalExp * (1 + _root.curCareerLevel[7] * 0.005) * (1 + _root.save.petStat[5] * 0.002));
      finalCoin = Math.floor(finalCoin * (1 + _root.curCareerLevel[7] * 0.005));
      finalToken = Math.floor(finalToken * (1 + _root.curCareerLevel[7] * 0.01));
      if(_root.save.careerLevel[7] >= 100)
      {
         finalGreenCoin = Math.floor(finalGreenCoin * 2);
      }
      if(_root.save.careerLevel[7] >= 200)
      {
         finalBlueCoin = Math.floor(finalBlueCoin * 4);
      }
      if(order >= 2)
      {
         finalCoin = Math.floor(finalCoin * 0.5);
         finalToken = Math.floor(finalToken * 0.5);
      }
      if(order == 5)
      {
         finalExp = Math.floor(finalExp * 0.5);
         finalCoin = Math.floor(finalCoin * 0.5);
         finalGreenCoin = Math.floor(finalGreenCoin * 0.5);
         finalBlueCoin = Math.floor(finalBlueCoin * 0.5);
         finalToken = Math.floor(finalToken * 0.5);
      }
      if(_root.save.banPenalty[9] == 1)
      {
         finalExp = Math.floor(finalExp * 1.3);
      }
      if(_root.save.stadiumProTime > 0)
      {
         finalExp = Math.floor(finalExp * 1.5);
         finalToken = Math.floor(finalToken * 2);
      }
      if(_root.save.permaBanPenalty[19] == 3)
      {
         finalExp = Math.floor(finalExp * 3);
      }
      else if(_root.save.permaBanPenalty[19] == 2)
      {
         finalExp = Math.floor(finalExp * 2.2);
      }
      else if(_root.save.permaBanPenalty[19] == 1)
      {
         finalExp = Math.floor(finalExp * 1.8);
      }
      if(finalExp < 0)
      {
         finalExp = 0;
      }
      if(finalCoin < 0)
      {
         finalCoin = 0;
      }
      _root.gainEXP(finalExp,11);
      _root.gainCoin(finalCoin,11);
      _root.gainGreenCoin(finalGreenCoin,11);
      _root.gainBlueCoin(finalBlueCoin,11);
      if(op == 8)
      {
         _root.dispNews(175,"[Cyborg] Simple Race COMPLETE! - Position: #" + order);
      }
      else if(op == 9)
      {
         _root.dispNews(175,"[Cyborg] Item Fight COMPLETE! - Position: #" + order);
      }
      _root.dispNews(175,"[Cyborg] You have gained: " + _root.withComma(finalExp) + " EXP + " + _root.withComma(finalCoin) + " Coins");
      _root.dispNews(175,"[Cyborg] You have gained " + _root.withComma(finalToken) + " Stadium Tokens!");
      if(order == 1)
      {
         if(_root.save.questType == "Simple Race" && op == 8 || _root.save.questType == "Item Fight" && op == 9)
         {
            if(_root.save.questSubtype == "Easy")
            {
               _root.save.questCount += 1;
            }
            if(_root.save.questSubtype == "Medium")
            {
               _root.save.questCount += 1;
            }
            if(_root.save.questSubtype == "Hard")
            {
               _root.save.questCount += 1;
            }
            if(_root.save.questSubtype == "Impossible")
            {
               _root.save.questCount += 1;
            }
         }
         if(op == 8)
         {
            _root.save.stadiumRace += 1;
            _root.save.stadiumImpossibleRace += 1;
         }
         else if(op == 9)
         {
            _root.save.stadiumItem += 1;
            _root.save.stadiumImpossibleItem += 1;
         }
      }
      _root.save.stadiumToken += finalToken;
   }
   else if(op == 10)
   {
      tempCScore = Math.floor(_root.calcPerf(op) * (0.5 + Math.random() * 0.3 + Math.random() * 0.2));
      baseExp = 250000;
      baseCoin = 250000;
      baseGreenCoin = 500000;
      baseBlueCoin = 1000;
      baseToken = 10000;
      fReward = _root.save.stadiumReward;
      if(_root.save.questType == "Death Match")
      {
         if(_root.save.questSubtype == "PWNt")
         {
            if(_root.save.questCount < tempCScore)
            {
               _root.save.questCount = tempCScore;
            }
         }
      }
      if(Math.random() < 0.95 && Math.random() < (tempCScore - 200) / 500)
      {
         order = 1;
         _root.gainCyborgEXP(Math.ceil((tempCScore / 1100 + 1) * (_root.cyborgActTime[op] / 20) + 50));
      }
      else
      {
         order = 2 + random(4);
         if(tempCScore >= 600)
         {
            order = 2;
         }
         _root.gainCyborgEXP(Math.ceil((tempCScore / 1100 + 1) * (_root.cyborgActTime[op] / 20) + 10));
      }
      _root.gainCareerEXP(7,Math.floor(10000 + (20000 + tempCScore * 50 + (5 - order) * 5000) * (100 + fReward) / 100 / order),true);
      finalExp = Math.ceil((baseExp + Math.floor(tempCScore * 250)) / order * Math.pow(_root.save.level,0.6) * (_root.save.boost / 100) * (1 + fReward * 0.01));
      finalCoin = Math.ceil((baseCoin + Math.floor(tempCScore * 250)) / order * Math.pow(_root.save.level,0.6) * (_root.save.boost / 100));
      finalGreenCoin = Math.ceil((baseGreenCoin + tempCScore * 500) / order);
      finalBlueCoin = Math.ceil((baseBlueCoin + tempCScore * 1) / order);
      finalToken = Math.ceil((baseToken + tempCScore * 10) / order);
      finalExp = Math.floor(finalExp * (1 + _root.curCareerLevel[7] * 0.005) * (1 + _root.save.petStat[5] * 0.002));
      finalCoin = Math.floor(finalCoin * (1 + _root.curCareerLevel[7] * 0.005));
      finalToken = Math.floor(finalToken * (1 + _root.curCareerLevel[7] * 0.01));
      if(_root.save.careerLevel[7] >= 100)
      {
         finalGreenCoin = Math.floor(finalGreenCoin * 2);
      }
      if(_root.save.careerLevel[7] >= 200)
      {
         finalBlueCoin = Math.floor(finalBlueCoin * 4);
      }
      if(order >= 2)
      {
         finalCoin = Math.floor(finalCoin * 0.5);
         finalToken = Math.floor(finalToken * 0.5);
      }
      if(order == 5)
      {
         finalExp = Math.floor(finalExp * 0.5);
         finalCoin = Math.floor(finalCoin * 0.5);
         finalGreenCoin = Math.floor(finalGreenCoin * 0.5);
         finalBlueCoin = Math.floor(finalBlueCoin * 0.5);
         finalToken = Math.floor(finalToken * 0.5);
      }
      if(_root.save.banPenalty[9] == 1)
      {
         finalExp = Math.floor(finalExp * 1.3);
      }
      if(_root.save.stadiumProTime > 0)
      {
         finalExp = Math.floor(finalExp * 1.5);
         finalToken = Math.floor(finalToken * 2);
      }
      if(_root.save.permaBanPenalty[19] == 3)
      {
         finalExp = Math.floor(finalExp * 3);
      }
      else if(_root.save.permaBanPenalty[19] == 2)
      {
         finalExp = Math.floor(finalExp * 2.2);
      }
      else if(_root.save.permaBanPenalty[19] == 1)
      {
         finalExp = Math.floor(finalExp * 1.8);
      }
      if(finalExp < 0)
      {
         finalExp = 0;
      }
      if(finalCoin < 0)
      {
         finalCoin = 0;
      }
      if(finalExp > 999999999999)
      {
         finalExp = 999999999999;
      }
      if(finalCoin > 999999999999)
      {
         finalCoin = 999999999999;
      }
      _root.gainEXP(finalExp,11);
      _root.gainCoin(finalCoin,11);
      _root.gainGreenCoin(finalGreenCoin,11);
      _root.gainBlueCoin(finalBlueCoin,11);
      _root.gainWhiteCoin(Math.floor((10 + tempCScore / 25) / order,11));
      _root.save.stadiumToken += finalToken;
      _root.dispNews(175,"[Cyborg] Death Match COMPLETE! - Position: #" + order + " - PWNts: " + _root.withComma(tempCScore));
      _root.dispNews(175,"[Cyborg] You have gained: " + _root.withComma(finalExp) + " EXP + " + _root.withComma(finalCoin) + " Coins");
      _root.dispNews(175,"[Cyborg] You have gained " + _root.withComma(finalToken) + " Stadium Tokens!");
      if(order == 1)
      {
         if(_root.save.questType == "Death Match")
         {
            if(_root.save.questSubtype == "Win")
            {
               _root.save.questCount += 1;
            }
         }
         _root.save.stadiumDeathMatch += 1;
      }
      if(_root.save.stadiumBestDeathMatch < tempCScore)
      {
         _root.save.stadiumBestDeathMatch = tempCScore;
      }
      if(_root.save.stadiumTodayDeathMatch < tempCScore)
      {
         _root.save.stadiumTodayDeathMatch = tempCScore;
      }
   }
   else if(op >= 11 && op <= 19)
   {
      _root.save.fcgPlay += 1;
      if(op == 11)
      {
         fDiff = 0;
         diffMult = 0;
      }
      else if(op == 12)
      {
         fDiff = 1;
         diffMult = 1;
      }
      else if(op == 13)
      {
         fDiff = 2;
         diffMult = 2;
      }
      else if(op == 14)
      {
         fDiff = 3;
         diffMult = 3;
      }
      else if(op == 15)
      {
         fDiff = 4;
         diffMult = 4;
      }
      else if(op == 16)
      {
         fDiff = 6;
         diffMult = 6;
      }
      else if(op == 17)
      {
         fDiff = 7;
         diffMult = 15;
      }
      else if(op == 18)
      {
         fDiff = 8;
         diffMult = 20;
      }
      else if(op == 19)
      {
         fDiff = 10;
         diffMult = 30;
      }
      if(op == 19)
      {
         _root.save.fcgSeriousDeck = 34 + random(35);
      }
      actualWinRate = _root.calcPerf(op);
      if(op == 19 && _root.save.fcgSeriousDeck == 69)
      {
         actualWinRate *= 0.2;
      }
      if(Math.random() < actualWinRate / 100)
      {
         if(_root.save.questType == "Win")
         {
            if(_root.save.questSubtype == "Any")
            {
               _root.save.questCount += 1;
            }
            if(_root.save.questSubtype == "Level 2" && fDiff >= 2)
            {
               _root.save.questCount += 1;
            }
            if(_root.save.questSubtype == "Level 3" && fDiff >= 3)
            {
               _root.save.questCount += 1;
            }
            if(_root.save.questSubtype == "Level 4" && fDiff >= 4)
            {
               _root.save.questCount += 1;
            }
            if(_root.save.questSubtype == "Level 6" && fDiff >= 6)
            {
               _root.save.questCount += 1;
            }
            if(_root.save.questSubtype == "Level 7" && fDiff >= 7)
            {
               _root.save.questCount += 1;
            }
            if(_root.save.questSubtype == "Level 8" && fDiff >= 8)
            {
               _root.save.questCount += 1;
            }
            if(_root.save.questSubtype == "Level 10" && fDiff >= 10)
            {
               _root.save.questCount += 1;
            }
         }
         if(fDiff == 6)
         {
            _root.gainWhiteCoin(1,12);
         }
         else if(fDiff == 7)
         {
            _root.gainWhiteCoin(3,12);
         }
         else if(fDiff == 8)
         {
            _root.gainWhiteCoin(5,12);
         }
         else if(fDiff == 10)
         {
            if(_root.save.fcgStreak10 >= 4 && _root.save.fcgStreak10 % 5 == 4)
            {
               _root.save.fcgSeriousDeck = 69;
            }
            _root.gainWhiteCoin(10,12);
         }
         _root.save.fcgWin += 1;
         _root.save.fcgStreak += 1;
         target = 2500;
         finalFcgExp = 25;
         finalFcgCash = 100;
         if(op == 19 && _root.save.fcgSeriousDeck == 69)
         {
            target = 62500;
            finalFcgExp = 1337;
            finalFcgCash = 5000;
            _root.gainWhiteCoin(50,12);
         }
         _root.save["fcgStreak" + fDiff] += 1;
         if(_root.save["fcgMaxStreak" + fDiff] < _root.save["fcgStreak" + fDiff])
         {
            _root.save["fcgMaxStreak" + fDiff] = _root.save["fcgStreak" + fDiff];
         }
         _root.save["fcgLevel" + fDiff] += 1;
         target += 2500 + Math.min(_root.save["fcgStreak" + fDiff],50) * diffMult * 100 + diffMult * 1000;
         finalFcgExp += 25 + Math.min(_root.save["fcgStreak" + fDiff],50) * diffMult * 1 + diffMult * 25;
         finalFcgCash += 100 + Math.min(_root.save["fcgStreak" + fDiff],50) * diffMult * 2 + diffMult * 50;
         target = Math.floor(target * (1 + _root.save.fcgLevel * 0.02) * (1 + Math.random() * 0.05));
         finalFcgExp = Math.floor(finalFcgExp * (1 + _root.save.fcgLevel * 0.002) * (1 + Math.random() * 0.05));
         finalFcgCash = Math.floor(finalFcgCash * (1 + _root.save.fcgLevel * 0.002) * (0.7 + Math.random() * 0.4));
         if(_root.save.powerUserTime > 0 && _root.save.banPenalty[9] == 1)
         {
            target = Math.floor(target * 1.95);
            finalFcgCash = Math.floor(finalFcgCash * 2);
         }
         else if(_root.save.powerUserTime > 0)
         {
            target = Math.floor(target * 1.5);
            finalFcgCash = Math.floor(finalFcgCash * 2);
         }
         else if(_root.save.banPenalty[9] == 1)
         {
            target = Math.floor(target * 1.3);
         }
         target = Math.floor(target * (1 + _root.save.petStat[6] * 0.002));
         finalExp = Math.ceil(Math.pow(_root.save.level,0.6) * Math.max(_root.boostMax,_root.save.boost) / 100) * target;
         finalExp = Math.floor(finalExp * (1 + _root.curCareerLevel[8] * 0.005));
         if(_root.save.permaBanPenalty[20] == 3)
         {
            finalExp = Math.floor(finalExp * 3);
         }
         else if(_root.save.permaBanPenalty[20] == 2)
         {
            finalExp = Math.floor(finalExp * 2.2);
         }
         else if(_root.save.permaBanPenalty[20] == 1)
         {
            finalExp = Math.floor(finalExp * 1.8);
         }
         if(_root.save.careerLevel[8] >= 100)
         {
            finalFcgCash = Math.floor(finalFcgCash * 1.5);
         }
         _root.gainEXP(finalExp,12);
         _root.save.fcgExp += finalFcgExp;
         _root.save.fcgCash += finalFcgCash;
         _root.gainBlueCoin(Math.floor(finalFcgExp / 2 * (1 + _root.curCareerLevel[8] * 0.01)),12);
         _root.gainCareerEXP(8,Math.floor(500 + finalFcgExp * 15),true);
         _root.gainCyborgEXP(Math.ceil(2 * (_root.cyborgActTime[op] / 20) + _root.cyborgActCost[op] / 10));
         _root.dispNews(175,"[Cyborg] Epic win! (+" + _root.withComma(finalExp) + " EXP)");
         _root.dispNews(175,"[Cyborg] You have gained " + _root.withComma(finalFcgExp) + " FCG EXP + " + _root.withComma(finalFcgCash) + " FCG Cash!");
      }
      else
      {
         target = 500;
         finalFcgExp = 5;
         finalFcgCash = 10;
         _root.save["fcgStreak" + fDiff] = 0;
         _root.save.fcgStreak = 0;
         _root.save.fcgLose += 1;
         target = Math.floor(target * (1 + _root.save.fcgLevel * 0.02) * (1 + Math.random() * 0.05));
         finalFcgExp = Math.floor(finalFcgExp * (1 + _root.save.fcgLevel * 0.005) * (1 + Math.random() * 0.05));
         finalFcgCash = Math.floor(finalFcgCash * (1 + _root.save.fcgLevel * 0.005) * (0.7 + Math.random() * 0.4));
         if(_root.save.powerUserTime > 0 && _root.save.banPenalty[9] == 1)
         {
            target = Math.floor(target * 1.95);
            finalFcgCash = Math.floor(finalFcgCash * 2);
         }
         else if(_root.save.powerUserTime > 0)
         {
            target = Math.floor(target * 1.5);
            finalFcgCash = Math.floor(finalFcgCash * 2);
         }
         else if(_root.save.banPenalty[9] == 1)
         {
            target = Math.floor(target * 1.3);
         }
         target = Math.floor(target * (1 + _root.save.petStat[6] * 0.002));
         finalExp = Math.ceil(Math.pow(_root.save.level,0.6) * Math.max(_root.boostMax,_root.save.boost) / 100) * target;
         _root.gainEXP(finalExp,12);
         _root.save.fcgExp += finalFcgExp;
         _root.save.fcgCash += finalFcgCash;
         _root.gainBlueCoin(Math.floor(finalFcgExp / 2 * (1 + _root.curCareerLevel[8] * 0.01)),12);
         _root.gainCareerEXP(8,Math.floor(500 + finalFcgExp * 15),true);
         _root.dispNews(175,"[Cyborg] Epic lose! (+" + _root.withComma(finalExp) + " EXP)");
         _root.dispNews(175,"[Cyborg] You have gained " + _root.withComma(finalFcgExp) + " FCG EXP + " + _root.withComma(finalFcgCash) + " FCG Cash!");
      }
   }
   else if(op == 20)
   {
      fishingOp(op);
   }
   _root.save.botOp[op] += 1;
}
function checkCyborg()
{
   if(_root.save.bestLevel >= 1250)
   {
      if(_root.save.botCurrentOp >= 1 && _root.save.botCurrentOp <= 7 || _root.save.botCurrentOp == 11)
      {
         if(_root.save.featureArcade == true && _root.house._currentframe != 10)
         {
            _root.save.botActive = true;
         }
         else
         {
            _root.save.botActive = false;
         }
      }
      else if(_root.save.botCurrentOp >= 8 && _root.save.botCurrentOp <= 10)
      {
         if(_root.save.featureStadium == true && _root.house._currentframe != 11)
         {
            _root.save.botActive = true;
         }
         else
         {
            _root.save.botActive = false;
         }
      }
      else if(_root.save.botCurrentOp >= 12 && _root.save.botCurrentOp <= 19)
      {
         if(_root.save.featureTukkunFCG == true && _root.house._currentframe != 12)
         {
            _root.save.botActive = true;
         }
         else
         {
            _root.save.botActive = false;
         }
      }
      else if(_root.save.botCurrentOp == 20)
      {
         if(_root.save.featureFishing == true && _root.house._currentframe != 22 && _root.save.fishExamLeft <= 0)
         {
            _root.save.botActive = true;
         }
         else
         {
            _root.save.botActive = false;
         }
      }
      if(_root.save.botEnergy <= 0)
      {
         _root.save.botEnergy = 0;
         _root.save.botActive = false;
      }
      if(_root.save.botCurrentOp == 0)
      {
         _root.save.botActive = true;
         _root.save.botCurrentOpNum = 1;
         _root.save.botCurrentOpMax = 1;
      }
      if(_root.cyborgWorking == true && _root.save.botActive == false)
      {
         _root.dispNews(176,"[Cyborg] Simulation Cyborg status: PAUSED");
      }
      if(_root.save.botActive == true)
      {
         if(_root.cyborgWorking == false)
         {
            if(_root.save.botCurrentOp != 0)
            {
               _root.dispNews(177,"[Cyborg] Simulation Cyborg status: WORKING");
            }
            else
            {
               _root.dispNews(177,"[Cyborg] Simulation Cyborg status: RECHARGING");
            }
         }
         if(_root.save.botCurrentOp != 0)
         {
            _root.save.botEnergy -= 1;
         }
         _root.save.botCurrentOpTime += 1;
         if(_root.save.botCurrentOpTime >= _root.cyborgActTime[_root.save.botCurrentOp])
         {
            _root.save.botCurrentOpTime = 0;
            _root.cyborgOp(_root.save.botCurrentOp);
            _root.save.botCurrentOpNum += 1;
            if(_root.save.botCurrentOpNum > _root.save.botCurrentOpMax)
            {
               if(_root.save.botCurrentOp != 0)
               {
                  _root.save.botCurrentOp = 0;
                  _root.dispNews(178,"[Cyborg] Simulation Cyborg status: FINISHED");
               }
               _root.save.botActive = true;
               _root.save.botCurrentOpNum = 1;
               _root.save.botCurrentOpMax = 1;
            }
         }
      }
      _root.cyborgWorking = _root.save.botActive;
   }
}
function gainCyborgPoint(amount)
{
   if(!isNaN(amount) && amount > 0 && amount != Infinity && _root.save.bestLevel >= 1250)
   {
      _root.save.botPoint += Math.floor(amount);
      if(_root.save.botPoint > 9999999999)
      {
         _root.save.botPoint = 9999999999;
      }
      if(Math.floor(amount) >= 2)
      {
         _root.dispNews(174,"[Cyborg] Gained " + _root.withComma(amount) + " Cyborg Points! You now have " + _root.withComma(_root.save.botPoint) + ".");
      }
      else
      {
         _root.dispNews(174,"[Cyborg] Gained 1 Cyborg Point! You now have " + _root.withComma(_root.save.botPoint) + ".");
      }
   }
}
function gainCyborgEXP(amount)
{
   if(!isNaN(amount) && amount > 0 && amount != Infinity)
   {
      expReq = _root.save.botLevel * 5;
      if(_root.save.botLevel > 100)
      {
         expReq = _root.save.botLevel * (_root.save.botLevel - 99) * 5;
      }
      if(_root.save.botLevel == 200)
      {
         expReq = -1;
      }
      if(amount > expReq && expReq > 0)
      {
         amount = expReq;
      }
      _root.save.botExp += Math.floor(amount);
      _root.dispNews(179,"[Cyborg] Simulation Cyborg gained " + _root.withComma(amount) + " EXP!");
      if(_root.save.botExp >= expReq && expReq > 0)
      {
         _root.save.botExp -= expReq;
         _root.save.botLevel += 1;
         _root.dispNews(180,"[Cyborg] Simulation Cyborg LEVEL UP! Simulation Cyborg is now Lv. " + _root.withComma(_root.save.botLevel) + ".");
      }
   }
}
function equipModule(modLoc)
{
   if(_root.save.progModuleTier[modLoc] > 0)
   {
      _root.organizeModule();
      if(_root.save.progModuleSize[modLoc] <= _root.moduleSlotLeft)
      {
         im = _root.save.progModuleSize[modLoc] - 1;
         var _loc3_ = 0;
         while(_loc3_ <= im)
         {
            _root.swapModulePiece(modLoc + _loc3_,_root.moduleSlotOccupied + _loc3_ + 1);
            _loc3_ += 1;
         }
      }
      else
      {
         _root.showPopup("Error","Insufficient space. This module is too large.");
      }
   }
   else
   {
      _root.showPopup("Error","An unexpected error has occurred. The module you are trying to equip appears to be non-existent.");
   }
   _root.organizeModule();
}
function unequipModule(modLoc)
{
   if(_root.save.progModuleTier[modLoc] > 0)
   {
      _root.organizeModule();
      if(_root.save.progModuleSize[modLoc] <= _root.moduleInvSlotLeft)
      {
         im = _root.save.progModuleSize[modLoc] - 1;
         var _loc3_ = 0;
         while(_loc3_ <= im)
         {
            _root.swapModulePiece(modLoc + _loc3_,_root.moduleInvSlotOccupied + _loc3_ + 11);
            _loc3_ += 1;
         }
      }
      else
      {
         _root.showPopup("Error","Insufficient inventory space. This module is too large.");
      }
   }
   else
   {
      _root.showPopup("Error","An unexpected error has occurred. The module you are trying to unequip appears to be non-existent.");
   }
   _root.organizeModule();
}
function organizeModule()
{
var _loc2_ = 1;
while(_loc2_ <= 8)
{
   if(_root.save.progModuleTier[_loc2_] == 0)
   {
      mustSwap = false;
      var _loc3_ = _loc2_ + 1;
      while(_loc3_ <= 9)
      {
         if(_root.save.progModuleTier[_loc3_] != 0)
         {
            mustSwap = true;
            _loc3_ = 10;
         }
         _loc3_ += 1;
      }
      if(mustSwap == true)
      {
         _loc3_ = _loc2_ + 1;
         while(_loc3_ <= 9)
         {
            _root.swapModulePiece(_loc3_ - 1,_loc3_);
            _loc3_ += 1;
         }
         _loc2_ -= 1;
      }
      else
      {
         _loc2_ = 9;
      }
   }
   _loc2_ += 1;
}
_loc2_ = 11;
while(_loc2_ <= 110)
{
   if(_root.save.progModuleTier[_loc2_] == 0)
   {
      mustSwap = false;
      _loc3_ = _loc2_ + 1;
      while(_loc3_ <= 110)
      {
         if(_root.save.progModuleTier[_loc3_] != 0)
         {
            mustSwap = true;
            _loc3_ = 111;
         }
         _loc3_ += 1;
      }
      if(mustSwap == true)
      {
         _loc3_ = _loc2_ + 1;
         while(_loc3_ <= 110)
         {
            _root.swapModulePiece(_loc3_ - 1,_loc3_);
            _loc3_ += 1;
         }
         _loc2_ -= 1;
      }
      else
      {
         _loc2_ = 111;
      }
   }
   _loc2_ += 1;
}
_root.moduleSlotOccupied = 0;
_loc2_ = 1;
while(_loc2_ <= 9)
{
   if(_root.save.progModuleTier[_loc2_] != 0)
   {
      _root.moduleSlotOccupied += 1;
   }
   else
   {
      _loc2_ = 10;
   }
   _loc2_ += 1;
}
_root.moduleInvSlotOccupied = 0;
_loc2_ = 11;
while(_loc2_ <= 110)
{
   if(_root.save.progModuleTier[_loc2_] != 0)
   {
      _root.moduleInvSlotOccupied += 1;
   }
   else
   {
      _loc2_ = 111;
   }
   _loc2_ += 1;
}
_root.moduleSlotLeft = 9 - _root.moduleSlotOccupied;
_root.moduleInvSlotLeft = _root.save.progModuleSlot - _root.moduleInvSlotOccupied;
}
function buyModule(modLoc)
{
   _root.organizeModule();
   modName = _root.save.progModuleName[modLoc];
   modTier = _root.save.progModuleTier[modLoc];
   modSize = _root.save.progModuleSize[modLoc];
   modShiny = _root.save.progModuleShiny[modLoc];
   modType = _root.save.progModuleType[modLoc];
   modChance = _root.save.progModuleChance[modLoc];
   modEffect = _root.save.progModuleEffect[modLoc];
   modCost = _root.save.progModuleCost[modLoc];
   shinyCost = 0;
   if(modShiny == true)
   {
      shinyCost = Math.floor((30 + modTier * 2 + modTier * modTier / 2) * modSize);
      if(modTier == 9)
      {
         shinyCost = 100 * modSize;
      }
   }
   if(modTier > 0)
   {
      if(_root.save.shinyToken < shinyCost)
      {
         _root.showPopup("Error","You don\'t have enough Shiny Tokens to buy this module. Buy more in the Mystery Shop!");
      }
      else if(_root.save.whiteCoin >= modCost && _root.moduleInvSlotLeft >= modSize)
      {
         _root.save.shinyToken -= shinyCost;
         _root.save.whiteCoin -= modCost;
         if(_root.save.progModuleSize[modLoc] <= _root.moduleInvSlotLeft)
         {
            var _loc3_ = 0;
            while(_loc3_ <= modSize - 1)
            {
               _root.swapModulePiece(_root.moduleInvSlotOccupied + _loc3_ + 11,modLoc + _loc3_);
               _loc3_ += 1;
            }
         }
      }
      else if(_root.save.whiteCoin < modCost)
      {
         _root.showPopup("Error","You don\'t have enough White Coins to buy this module.");
      }
      else
      {
         _root.showPopup("Error","You don\'t have sufficient inventory slots to buy this module.");
      }
   }
   else
   {
      _root.showPopup("Error","An unexpected error has occurred. The module you are trying to buy appears to be non-existent.");
   }
   _root.organizeModule();
}
function getModule(modName, modTier, modSize, modShiny, modType, modChance, modEffect, modCost)
{
   if(modTier > 0)
   {
      _root.organizeModule();
      if(modSize <= _root.moduleInvSlotLeft)
      {
         _root.save.progModuleName[_root.moduleInvSlotOccupied + 11] = modName;
         _root.save.progModuleTier[_root.moduleInvSlotOccupied + 11] = modTier;
         _root.save.progModuleSize[_root.moduleInvSlotOccupied + 11] = modSize;
         _root.save.progModuleShiny[_root.moduleInvSlotOccupied + 11] = modShiny;
         _root.save.progModuleType[_root.moduleInvSlotOccupied + 11] = modType;
         _root.save.progModuleChance[_root.moduleInvSlotOccupied + 11] = modChance;
         _root.save.progModuleEffect[_root.moduleInvSlotOccupied + 11] = modEffect;
         _root.save.progModuleCost[_root.moduleInvSlotOccupied + 11] = modCost;
         var _loc10_ = 1;
         while(_loc10_ <= modSize - 1)
         {
            _root.deleteModulePiece(_root.moduleInvSlotOccupied + _loc10_ + 11);
            _root.save.progModuleTier[_root.moduleInvSlotOccupied + _loc10_ + 11] = -1;
            _loc10_ += 1;
         }
      }
      else
      {
         _root.showPopup("Error","Insufficient inventory space. This module is too large.");
      }
   }
   else
   {
      _root.showPopup("Error","An unexpected error has occurred. The module you are trying to get appears to be non-existent.");
   }
   _root.organizeModule();
}
function sellModule(modLoc)
{
   if(_root.save.progModuleTier[modLoc] > 0)
   {
      if(!isNaN(_root.save.progModuleCost[modLoc]) && _root.save.progModuleCost[modLoc] > 0)
      {
         _root.save.whiteCoin += Math.ceil(_root.save.progModuleCost[modLoc] / 2);
      }
      _root.organizeModule();
      mi = _root.save.progModuleSize[modLoc] - 1;
      var _loc3_ = 0;
      while(_loc3_ <= mi)
      {
         _root.deleteModulePiece(modLoc + _loc3_);
         _loc3_ += 1;
      }
   }
   else
   {
      _root.showPopup("Error","An unexpected error has occurred. The module you are trying to sell appears to be non-existent.");
   }
   _root.organizeModule();
}
function swapModulePiece(pieceA, pieceB)
{
   _root.copyModulePiece(pieceA,141);
   _root.copyModulePiece(pieceB,pieceA);
   _root.copyModulePiece(141,pieceB);
   _root.deleteModulePiece(141);
}
function copyModulePiece(pieceOrig, pieceDest)
{
   _root.save.progModuleName[pieceDest] = _root.save.progModuleName[pieceOrig];
   _root.save.progModuleTier[pieceDest] = _root.save.progModuleTier[pieceOrig];
   _root.save.progModuleSize[pieceDest] = _root.save.progModuleSize[pieceOrig];
   _root.save.progModuleShiny[pieceDest] = _root.save.progModuleShiny[pieceOrig];
   _root.save.progModuleType[pieceDest] = _root.save.progModuleType[pieceOrig];
   _root.save.progModuleChance[pieceDest] = _root.save.progModuleChance[pieceOrig];
   _root.save.progModuleEffect[pieceDest] = _root.save.progModuleEffect[pieceOrig];
   _root.save.progModuleCost[pieceDest] = _root.save.progModuleCost[pieceOrig];
}
function deleteModulePiece(pieceA)
{
   _root.save.progModuleName[pieceA] = "";
   _root.save.progModuleTier[pieceA] = 0;
   _root.save.progModuleSize[pieceA] = 0;
   _root.save.progModuleShiny[pieceA] = 0;
   _root.save.progModuleType[pieceA] = 0;
   _root.save.progModuleChance[pieceA] = 0;
   _root.save.progModuleEffect[pieceA] = 0;
   _root.save.progModuleCost[pieceA] = 0;
}
function restockModule(typ)
{
   var _loc3_ = 111;
   if(typ == 1)
   {
      tierUpChance = 0.5;
      minTier = 1;
      maxTier = 6;
      shinyChance = 0.02;
   }
   else if(typ == 2)
   {
      tierUpChance = 0.6;
      minTier = 3;
      maxTier = 7;
      shinyChance = 0.05;
   }
   else if(typ == 3)
   {
      tierUpChance = 0.7;
      minTier = 5;
      maxTier = 8;
      shinyChance = 0.15;
   }
   else if(typ == 4)
   {
      tierUpChance = 0.8;
      minTier = 7;
      maxTier = 9;
      shinyChance = 0.3;
   }
   else
   {
      tierUpChance = 0.42;
      minTier = 1;
      maxTier = 4 + _root.save.banned;
      shinyChance = 0.008;
      if(_root.save.bestLevel >= 9000)
      {
         shinyChance = 0.069;
      }
      tierUpChance += _root.save.whiteCoin / 2500000;
      if(_root.dow == 0 || _root.dow == 2 || _root.dow == 4 || _root.dow == 6)
      {
         tierUpChance += 0.1;
      }
      if(_root.dow == 5 || _root.dow == 6)
      {
         shinyChance += 0.1;
      }
      if(_root.clock_year == 2015 && _root.clock_month == 1 && _root.clock_date >= 25)
      {
         shinyChance += 0.2;
      }
   }
   var _loc4_ = 111;
   while(_loc4_ <= 140)
   {
      _root.deleteModulePiece(_loc4_);
      _root.save.progModuleTier[_loc4_] = -1;
      _loc4_ += 1;
   }
   while(_loc3_ <= 140)
   {
      maxSize = 141 - _loc3_;
      tempModuleType = random(42) + 1;
      if(Math.random() < 0.2)
      {
         tempModuleType = random(4) + 1;
      }
      if(tempModuleType == 5 || tempModuleType == 13 || tempModuleType == 22 || tempModuleType == 24 || tempModuleType == 25 || tempModuleType == 27 || tempModuleType >= 33 && tempModuleType <= 39 || tempModuleType == 41)
      {
         tempModuleType = random(42) + 1;
      }
      tempShiny = 0;
      tempTier = 1;
      _loc4_ = 1;
      while(_loc4_ <= 8)
      {
         if(Math.random() < shinyChance && maxSize >= 2)
         {
            tempShiny = 1;
         }
         if(Math.random() < tierUpChance && tempTier < maxTier || tempTier < minTier)
         {
            tempTier += 1;
         }
         else if(Math.random() < 0.5)
         {
            _loc4_ = 9;
         }
         _loc4_ += 1;
      }
      if(tempModuleType == 1)
      {
         tempNameA = "EXP Module";
         tempSize = 1;
         tempChance = 1000;
         tempEffect = 15;
         tempCost = 25;
      }
      else if(tempModuleType == 2)
      {
         tempNameA = "Coin Module";
         tempSize = 1;
         tempChance = 1000;
         tempEffect = 15;
         tempCost = 10;
      }
      else if(tempModuleType == 3)
      {
         tempNameA = "Green Coin Module";
         tempSize = 1;
         tempChance = 1000;
         tempEffect = 250;
         tempCost = 10;
      }
      else if(tempModuleType == 4)
      {
         tempNameA = "Blue Coin Module";
         tempSize = 2;
         tempChance = 500;
         tempEffect = 2;
         tempCost = 25;
      }
      else if(tempModuleType == 5)
      {
         tempNameA = "White Coin Module";
         tempSize = 4;
         tempChance = 10;
         tempEffect = 1;
         tempCost = 250;
      }
      else if(tempModuleType == 6)
      {
         tempNameA = "Boost Module";
         tempSize = 2;
         tempChance = 250;
         tempEffect = 2;
         tempCost = 50;
      }
      else if(tempModuleType == 7)
      {
         tempNameA = "Boost Freeze Module";
         tempSize = 2;
         tempChance = 50;
         tempEffect = 5;
         tempCost = 100;
      }
      else if(tempModuleType == 8)
      {
         tempNameA = "1.5x EXP Module";
         tempSize = 2;
         tempChance = 100;
         tempEffect = 10;
         tempCost = 25;
      }
      else if(tempModuleType == 9)
      {
         tempNameA = "1.5x Coin Module";
         tempSize = 2;
         tempChance = 100;
         tempEffect = 10;
         tempCost = 10;
      }
      else if(tempModuleType == 10)
      {
         tempNameA = "Harvest Value Module";
         tempSize = 2;
         tempChance = 500;
         tempEffect = 100;
         tempCost = 25;
      }
      else if(tempModuleType == 11)
      {
         tempNameA = "Pet Mana Module";
         tempSize = 2;
         tempChance = 50;
         tempEffect = 1;
         tempCost = 25;
      }
      else if(tempModuleType == 12)
      {
         tempNameA = "Garden Point Module";
         tempSize = 2;
         tempChance = 500;
         tempEffect = 5;
         tempCost = 25;
      }
      else if(tempModuleType == 13)
      {
         tempNameA = "Randomfruit Module";
         tempSize = 4;
         tempChance = 100;
         tempEffect = 1;
         tempCost = 50;
      }
      else if(tempModuleType == 14)
      {
         tempNameA = "HP Recovery Module";
         tempSize = 1;
         tempChance = 2000;
         tempEffect = 25;
         tempCost = 25;
      }
      else if(tempModuleType == 15)
      {
         tempNameA = "MP Recovery Module";
         tempSize = 1;
         tempChance = 2000;
         tempEffect = 25;
         tempCost = 50;
      }
      else if(tempModuleType == 16)
      {
         tempNameA = "Rage Module";
         tempSize = 2;
         tempChance = 250;
         tempEffect = 3;
         tempCost = 50;
      }
      else if(tempModuleType == 17)
      {
         tempNameA = "Pixel Module";
         tempSize = 2;
         tempChance = 500;
         tempEffect = 1000;
         tempCost = 25;
      }
      else if(tempModuleType == 18)
      {
         tempNameA = "CM Module";
         tempSize = 2;
         tempChance = 500;
         tempEffect = 100;
         tempCost = 25;
      }
      else if(tempModuleType == 19)
      {
         tempNameA = "SCM Module";
         tempSize = 2;
         tempChance = 500;
         tempEffect = 1;
         tempCost = 25;
      }
      else if(tempModuleType == 20)
      {
         tempNameA = "Unobtainium Module";
         tempSize = 3;
         tempChance = 200;
         tempEffect = 1;
         tempCost = 50;
      }
      else if(tempModuleType == 21)
      {
         tempNameA = "Enhancer Fragment Module";
         tempSize = 1;
         tempChance = 500;
         tempEffect = 10;
         tempCost = 10;
      }
      else if(tempModuleType == 22)
      {
         tempNameA = "Bacon Module";
         tempSize = 3;
         tempChance = 200;
         tempEffect = 1;
         tempCost = 25;
      }
      else if(tempModuleType == 23)
      {
         tempNameA = "Crystal Module";
         tempSize = 3;
         tempChance = 100;
         tempEffect = 1;
         tempCost = 25;
      }
      else if(tempModuleType == 24)
      {
         tempNameA = "Ultimate Crystal Module";
         tempSize = 4;
         tempChance = 25;
         tempEffect = 1;
         tempCost = 50;
      }
      else if(tempModuleType == 25)
      {
         tempNameA = "Purple Button Module";
         tempSize = 3;
         tempChance = 200;
         tempEffect = 1;
         tempCost = 25;
      }
      else if(tempModuleType == 26)
      {
         tempNameA = "Career EXP Module";
         tempSize = 1;
         tempChance = 500;
         tempEffect = 50;
         tempCost = 10;
      }
      else if(tempModuleType == 27)
      {
         tempNameA = "100k Medal Module";
         tempSize = 3;
         tempChance = 200;
         tempEffect = 1;
         tempCost = 25;
      }
      else if(tempModuleType == 28)
      {
         tempNameA = "Stadium Token Module";
         tempSize = 1;
         tempChance = 500;
         tempEffect = 20;
         tempCost = 10;
      }
      else if(tempModuleType == 29)
      {
         tempNameA = "FCG Cash Module";
         tempSize = 1;
         tempChance = 500;
         tempEffect = 20;
         tempCost = 10;
      }
      else if(tempModuleType >= 30 && tempModuleType <= 39)
      {
         tempNameA = "LolMarket Lv. " + (tempModuleType - 29) + " Module";
         if(tempModuleType == 30)
         {
            tempSize = 1;
            tempChance = 10;
            tempEffect = 1;
            tempCost = 10;
         }
         else if(tempModuleType == 31)
         {
            tempSize = 2;
            tempChance = 10;
            tempEffect = 1;
            tempCost = 10;
         }
         else if(tempModuleType == 32)
         {
            tempSize = 2;
            tempChance = 10;
            tempEffect = 1;
            tempCost = 20;
         }
         else if(tempModuleType == 33)
         {
            tempSize = 3;
            tempChance = 15;
            tempEffect = 1;
            tempCost = 20;
         }
         else if(tempModuleType == 34)
         {
            tempSize = 3;
            tempChance = 15;
            tempEffect = 1;
            tempCost = 30;
         }
         else if(tempModuleType == 35)
         {
            tempSize = 3;
            tempChance = 15;
            tempEffect = 1;
            tempCost = 50;
         }
         else if(tempModuleType == 36)
         {
            tempSize = 4;
            tempChance = 20;
            tempEffect = 1;
            tempCost = 50;
         }
         else if(tempModuleType == 37)
         {
            tempSize = 4;
            tempChance = 20;
            tempEffect = 1;
            tempCost = 60;
         }
         else if(tempModuleType == 38)
         {
            tempSize = 4;
            tempChance = 20;
            tempEffect = 1;
            tempCost = 75;
         }
         else if(tempModuleType == 39)
         {
            tempSize = 4;
            tempChance = 20;
            tempEffect = 1;
            tempCost = 100;
         }
      }
      else if(tempModuleType == 40)
      {
         tempNameA = "Adventure Time Module";
         tempSize = 2;
         tempChance = 200;
         tempEffect = 2;
         tempCost = 25;
      }
      else if(tempModuleType == 41)
      {
         tempNameA = "Special Food Module";
         tempSize = 4;
         tempChance = 400;
         tempEffect = 1;
         tempCost = 10;
      }
      else if(tempModuleType == 42)
      {
         tempNameA = "Fatigue Recovery Module";
         tempSize = 2;
         tempChance = 250;
         tempEffect = 3;
         tempCost = 50;
      }
      if(tempTier >= 9)
      {
         tempTier = 9;
         if(tempEffect == 1)
         {
            tempChance = Math.round(tempChance * 4);
         }
         else
         {
            tempChance = Math.round(tempChance * 2);
            tempEffect = Math.floor(tempEffect * 2);
         }
         tempCost = Math.round(tempCost * 100);
      }
      else
      {
         if(tempEffect == 1)
         {
            tempChance = Math.round(tempChance * (1 + (tempTier - 1) / 10) * (1 + (tempTier - 1) / 10));
         }
         else
         {
            tempChance = Math.round(tempChance * (1 + (tempTier - 1) / 10));
            tempEffect = Math.floor(tempEffect * (1 + (tempTier - 1) / 10));
         }
         tempCost = Math.round(tempCost * tempTier * tempTier);
      }
      if(tempShiny == 1)
      {
         tempSize += 1;
         if(tempEffect == 1)
         {
            tempChance = Math.ceil(tempChance * 5);
         }
         else
         {
            tempChance = Math.ceil(tempChance * 2.5);
            tempEffect = Math.floor(tempEffect * 2);
         }
         tempCost = Math.round(tempCost * 10);
      }
      if(tempTier < 9)
      {
         tempCost = Math.ceil(tempCost * (tempTier + 11) / 20);
      }
      if(tempCost < 100)
      {
         tempCost = Math.ceil(tempCost / 10) * 10;
      }
      else if(tempCost < 1000)
      {
         tempCost = Math.ceil(tempCost / 100) * 100;
      }
      else
      {
         tempCost = Math.ceil(tempCost / 1000) * 1000;
      }
      tempValid = true;
      if(tempSize > maxSize)
      {
         tempValid = false;
      }
      if(tempModuleType >= 14 && tempModuleType <= 16)
      {
         tempValid = false;
      }
      if(tempValid == true)
      {
         _root.save.progModuleName[_loc3_] = tempNameA;
         _root.save.progModuleTier[_loc3_] = tempTier;
         _root.save.progModuleSize[_loc3_] = tempSize;
         _root.save.progModuleShiny[_loc3_] = tempShiny;
         _root.save.progModuleType[_loc3_] = tempModuleType;
         _root.save.progModuleChance[_loc3_] = tempChance;
         _root.save.progModuleEffect[_loc3_] = tempEffect;
         _root.save.progModuleCost[_loc3_] = tempCost;
         _loc3_ += tempSize;
      }
   }
}
bannedUsers = ["Guest","Tukkun","omfg13321","milleraus10","Valmont06","DarkWazza","idan2","luungockhang","danielm59","Batux1995","nc666","hilariousguy878","Dariush","wazor","Darnal","Weredeer","littleNekoDemon","oblivion60","Chendler","tiopo","supersonicguy","blackwiz","jamesty","omonoiadam","CECIII","KidDeath","Hedgehog101","Eciplyse2","Arutima","Mnchngrnqs","keith143","kamitop","p9a9u9l","EsCaPeThEfAtE2","MattiasM","TecknozThaBezt","thelolofdeath","alsc","Darvious","AntonioS2740","saltineface","JaredOfSubway","HARIB0L","luka1795","Vsegdaskray","Mnchngrngs","perez7631","zeroskil1","Salomanity","Franklinperry2","delshady","Salomanity2","Inhruby","justfg","Bunker","vitinho90","BNR32k","fateofblade"];
scoreBanned = false;
i = 0;
while(i <= bannedUsers.length)
{
   if(_root.kongregate_username == bannedUsers[i])
   {
      scoreBanned = true;
   }
   i++;
}
careerName = ["","Idler","Gardener","Fighter","Item Maker","Button Basher","Arcade Player","Racer","Card Player","Gem Trader","Adventurer","Pet Trainer","Fisher"];
nameValue = 0;
str = _root.kongregate_username;
if(str == undefined)
{
   str = "Kongregate Username";
}
i = 1;
while(i <= str.length)
{
   cDigit = str.substr(i,1);
   switch(cDigit)
   {
      case "A":
         nD = 21;
         break;
      case "B":
         nD = 15;
         break;
      case "C":
         nD = 34;
         break;
      case "D":
         nD = 23;
         break;
      case "E":
         nD = 12;
         break;
      case "F":
         nD = 37;
         break;
      case "G":
         nD = 29;
         break;
      case "H":
         nD = 13;
         break;
      case "I":
         nD = 31;
         break;
      case "J":
         nD = 26;
         break;
      case "K":
         nD = 14;
         break;
      case "L":
         nD = 39;
         break;
      case "M":
         nD = 24;
         break;
      case "N":
         nD = 19;
         break;
      case "O":
         nD = 35;
         break;
      case "P":
         nD = 27;
         break;
      case "Q":
         nD = 14;
         break;
      case "R":
         nD = 36;
         break;
      case "S":
         nD = 23;
         break;
      case "T":
         nD = 18;
         break;
      case "U":
         nD = 37;
         break;
      case "V":
         nD = 27;
         break;
      case "W":
         nD = 18;
         break;
      case "X":
         nD = 36;
         break;
      case "Y":
         nD = 21;
         break;
      case "Z":
         nD = 14;
         break;
      case "a":
         nD = 43;
         break;
      case "b":
         nD = 33;
         break;
      case "c":
         nD = 22;
         break;
      case "d":
         nD = 45;
         break;
      case "e":
         nD = 34;
         break;
      case "f":
         nD = 27;
         break;
      case "g":
         nD = 43;
         break;
      case "h":
         nD = 39;
         break;
      case "i":
         nD = 25;
         break;
      case "j":
         nD = 48;
         break;
      case "k":
         nD = 37;
         break;
      case "l":
         nD = 25;
         break;
      case "m":
         nD = 46;
         break;
      case "n":
         nD = 35;
         break;
      case "o":
         nD = 25;
         break;
      case "p":
         nD = 49;
         break;
      case "q":
         nD = 37;
         break;
      case "r":
         nD = 27;
         break;
      case "s":
         nD = 46;
         break;
      case "t":
         nD = 32;
         break;
      case "u":
         nD = 28;
         break;
      case "v":
         nD = 45;
         break;
      case "w":
         nD = 31;
         break;
      case "x":
         nD = 24;
         break;
      case "y":
         nD = 43;
         break;
      case "z":
         nD = 33;
         break;
      case "0":
         nD = 22;
         break;
      case "1":
         nD = 52;
         break;
      case "2":
         nD = 44;
         break;
      case "3":
         nD = 34;
         break;
      case "4":
         nD = 43;
         break;
      case "5":
         nD = 36;
         break;
      case "6":
         nD = 55;
         break;
      case "7":
         nD = 45;
         break;
      case "8":
         nD = 54;
         break;
      case "9":
         nD = 37;
         break;
      default:
         nD = 1;
   }
   if(i == 1)
   {
      nameValue += 7 * nD + 133;
   }
   else
   {
      nameValue += (i + 1) * nD + 2;
   }
   if(nameValue > 10000)
   {
      nameValue -= 337;
   }
   i++;
}
if(str == "Guest")
{
   nameValue = 0;
}
b = 1;
while(b <= 30)
{
   _root["X0breakNews" + b] = "";
   _root["X0breakStamp" + b] = "";
   _root["X0breakColor" + b] = 0;
   _root["X1breakNews" + b] = "";
   _root["X1breakStamp" + b] = "";
   _root["X1breakColor" + b] = 0;
   _root["X2breakNews" + b] = "";
   _root["X2breakStamp" + b] = "";
   _root["X2breakColor" + b] = 0;
   _root["X3breakNews" + b] = "";
   _root["X3breakStamp" + b] = "";
   _root["X3breakColor" + b] = 0;
   _root["X4breakNews" + b] = "";
   _root["X4breakStamp" + b] = "";
   _root["X4breakColor" + b] = 0;
   c = 1;
   while(c <= 30)
   {
      _root["F" + c + "breakNews" + b] = "";
      _root["F" + c + "breakStamp" + b] = "";
      _root["F" + c + "breakColor" + b] = 0;
      c++;
   }
   b++;
}
var mouseListener = new Object();
mouseListener.onMouseWheel = function(wheelNum)
{
   if(wheelNum > 0)
   {
      _root.scrollUp();
   }
   else if(wheelNum < 0)
   {
      _root.scrollDown();
   }
};
Mouse.addListener(mouseListener);
cyborgActShortName = ["Recharge","Pong","Ult. Avoidance","Math Master","Whack-a-greg","Triangle Count","MindSweeper","Balance 3","Simple Race","Item Fight","Death Match","MMR X","FCG - Level 1","FCG - Level 2","FCG - Level 3","FCG - Level 4","FCG - Level 6","FCG - Level 7","FCG - Level 8","FCG - Level 10","Fishing"];
cyborgActLongName = ["Recharging...","Arcade - Pong: Survival Battle","Arcade - Ultimate Avoidance","Arcade - Math Master","Arcade - Whack-a-greg","Arcade - Triangle Count","Arcade - MindSweeper","Arcade - Balance 3","Stadium - Simple Race (Impossible)","Stadium - Item Fight (Impossible)","Stadium - Death Match","Arcade - MMR X","TukkunFCG - Level 1","TukkunFCG - Level 2","TukkunFCG - Level 3","TukkunFCG - Level 4","TukkunFCG - Level 6","TukkunFCG - Level 7","TukkunFCG - Level 8","TukkunFCG - Level 10","Fishing"];
cyborgActMinPerf = [40,10000,10000,10000,10000,10000,10000,10000,5,5,50,5,4.5,4,3.5,3,2.5,2,1.5,1,1];
cyborgActMaxPerf = [240,4200000,1750000,2400000,3300000,13500000,10000000,7200000,90,90,1100,7200000,98,97,96,95,90,85,80,70,95];
cyborgActPerfText = ["Energy","Maximum Score","Maximum Score","Maximum Score","Maximum Score","Maximum Score","Maximum Score","Maximum Score","Win Rate","Win Rate","Maximum PWNts","Maximum Score","Win Rate","Win Rate","Win Rate","Win Rate","Win Rate","Win Rate","Win Rate","Win Rate","Perfect Rate"];
cyborgActPerfSign = [" sec","","","","","","","","%","%","","","%","%","%","%","%","%","%","%","%"];
cyborgActTime = [300,420,175,80,165,675,500,360,17,19,600,360,120,150,170,190,200,300,350,450,27];
cyborgActCost = [0,84,35,16,33,135,100,72,4,5,1000,72,30,35,40,45,60,90,120,180,11];
cyborgWorking = false;
