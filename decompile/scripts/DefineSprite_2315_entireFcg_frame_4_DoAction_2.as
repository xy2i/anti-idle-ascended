//! status=pending
_root.epicdesc = "";
onEnterFrame = null;
_root.fcg_dep = 2;
_root.fcg_targety = 0;
if(_root.fcg_epic < 1)
{
   _root.save.fcgStreak += 1;
   if(_root.fcg_challenged == false)
   {
      _root.save["fcgStreak" + _root.fcg_opponentlevel] += 1;
      if(_root.save["fcgMaxStreak" + _root.fcg_opponentlevel] < _root.save["fcgStreak" + _root.fcg_opponentlevel])
      {
         _root.save["fcgMaxStreak" + _root.fcg_opponentlevel] = _root.save["fcgStreak" + _root.fcg_opponentlevel];
      }
      _root.save["fcgLevel" + _root.fcg_opponentlevel] += 1;
   }
   _root.save.fcgWin += 1;
   if(_root.fcg_opponentlevel <= 4)
   {
      _root.gainCyborgPoint(Math.floor(2 + _root.fcg_opponentlevel * 2));
   }
   if(_root.fcg_opponentlevel == 5)
   {
      _root.gainCyborgPoint(30);
   }
   if(_root.fcg_opponentlevel == 6)
   {
      _root.gainCyborgPoint(30);
   }
   if(_root.fcg_opponentlevel == 7)
   {
      _root.gainCyborgPoint(100);
   }
   if(_root.fcg_opponentlevel == 8)
   {
      _root.gainCyborgPoint(100);
   }
   if(_root.fcg_opponentlevel == 9)
   {
      _root.gainCyborgPoint(200);
   }
   if(_root.fcg_opponentlevel == 10)
   {
      _root.gainCyborgPoint(200);
   }
   if(_root.save.questType == "Win")
   {
      if(_root.save.questSubtype == "Any")
      {
         _root.save.questCount += 1;
      }
      if(_root.save.questSubtype == "Level 2" && _root.fcg_opponentlevel >= 2)
      {
         _root.save.questCount += 1;
      }
      if(_root.save.questSubtype == "Level 3" && _root.fcg_opponentlevel >= 3)
      {
         _root.save.questCount += 1;
      }
      if(_root.save.questSubtype == "Level 4" && _root.fcg_opponentlevel >= 4)
      {
         _root.save.questCount += 1;
      }
      if(_root.save.questSubtype == "Level 6" && _root.fcg_opponentlevel >= 6)
      {
         _root.save.questCount += 1;
      }
      if(_root.save.questSubtype == "Level 7" && _root.fcg_opponentlevel >= 7)
      {
         _root.save.questCount += 1;
      }
      if(_root.save.questSubtype == "Level 8" && _root.fcg_opponentlevel >= 8)
      {
         _root.save.questCount += 1;
      }
      if(_root.save.questSubtype == "Level 10" && _root.fcg_opponentlevel >= 10)
      {
         _root.save.questCount += 1;
      }
   }
}
target = 1;
if(_root.fcg_opponentlevel == 9)
{
   _root.save.fcgLegendLife -= 1;
   target = 10 - _root.save.fcgLegendLife;
   if(_root.save.fcgLegendLife <= 0)
   {
      _root.save.fcgLegendCount += 1;
      target = 10;
      _root.gainWhiteCoin(75);
   }
   else
   {
      _root.gainWhiteCoin(25);
   }
}
_root.fcg_reward1a = target;
_root.fcg_reward1b = Math.ceil(Math.pow(_root.save.level,0.6) * Math.max(_root.boostMax,_root.save.boost) / 100) * 1000 * target;
_root.fcg_reward1c = Math.ceil(target * 25);
_root.fcg_reward1d = Math.ceil(target * 100);
if(target == 10 && _root.saveid < 10)
{
   if(_root.save.boost < _root.boostMax * 2.5 - 1 && _root.save.megaBoostPotion >= 1 && _root.save.boostAuto2 == true)
   {
      _root.save.megaBoostPotion -= 1;
      _root.gainBoost(9999,4);
      _root.save.boost = _root.boostMax * 2.5;
      if(_root.save.boostFreeze < 45 + Math.min(Math.floor(_root.save.totalStupidity / 500),250))
      {
         _root.save.boostFreeze = 45 + Math.min(Math.floor(_root.save.totalStupidity / 500),250);
      }
   }
   _root.fcg_reward1b = Math.ceil(Math.pow(_root.save.level,0.6) * Math.max(_root.boostMax,_root.save.boost) / 100) * 100000;
   _root.fcg_reward1c = 1337;
   _root.fcg_reward1d = 5000;
}
if(enemy_deck == 69)
{
   if(_root.save.boost < _root.boostMax * 2.5 - 1 && _root.save.megaBoostPotion >= 1 && _root.save.boostAuto2 == true)
   {
      _root.save.megaBoostPotion -= 1;
      _root.gainBoost(9999,4);
      _root.save.boost = _root.boostMax * 2.5;
      if(_root.save.boostFreeze < 45 + Math.min(Math.floor(_root.save.totalStupidity / 500),250))
      {
         _root.save.boostFreeze = 45 + Math.min(Math.floor(_root.save.totalStupidity / 500),250);
      }
   }
   _root.fcg_reward1b = Math.ceil(Math.pow(_root.save.level,0.6) * Math.max(_root.boostMax,_root.save.boost) / 100) * 50000;
   _root.fcg_reward1c = 1337;
   _root.fcg_reward1d = 5000;
   _root.gainWhiteCoin(50);
}
if(_root.fcg_opponentlevel == 10 && _root.saveid == 25)
{
   _root.save.fcgChallenge5[enemy_deck] += 1;
   if(_root.save.fcgLevel10 == 79)
   {
      _root.save.fcgSeriousDeck = 69;
   }
}
target = _root.save["fcgStreak" + _root.fcg_opponentlevel];
if(_root.fcg_opponentlevel >= 6 && target > 100)
{
   target = 100;
}
else if(target > 50)
{
   target = 50;
}
_root.fcg_reward2a = target;
_root.fcg_reward2b = Math.ceil(Math.pow(_root.save.level,0.6) * Math.max(_root.boostMax,_root.save.boost) / 100) * 50 * target;
_root.fcg_reward2c = Math.ceil(target * 1);
_root.fcg_reward2d = Math.ceil(target * 4);
if(_root.fcg_opponentlevel >= 10)
{
   _root.fcg_reward2a = target;
   _root.fcg_reward2b = Math.ceil(Math.pow(_root.save.level,0.6) * Math.max(_root.boostMax,_root.save.boost) / 100) * 500 * target;
   _root.fcg_reward2c = Math.ceil(target * 10);
   _root.fcg_reward2d = Math.ceil(target * 40);
}
target = _root.fcg_opponentlevel;
_root.fcg_reward3a = target;
if(_root.fcg_opponentlevel == 5)
{
   target = 8;
}
if(_root.fcg_opponentlevel == 6)
{
   target = 6;
   _root.gainWhiteCoin(1);
}
if(_root.fcg_opponentlevel == 7)
{
   target = 15;
   _root.gainWhiteCoin(3);
}
if(_root.fcg_opponentlevel == 8)
{
   target = 20;
   _root.gainWhiteCoin(5);
}
if(_root.fcg_opponentlevel == 9)
{
   target = 50;
}
if(_root.fcg_opponentlevel == 10)
{
   target = 30;
   if(_root.save.fcgStreak10 >= 5 && _root.save.fcgStreak10 % 5 == 0 && _root.saveid != 25)
   {
      _root.save.fcgSeriousDeck = 69;
   }
   _root.gainWhiteCoin(10);
}
_root.fcg_reward3b = Math.ceil(Math.pow(_root.save.level,0.6) * Math.max(_root.boostMax,_root.save.boost) / 100) * 1000 * target;
_root.fcg_reward3c = Math.ceil(target * 25);
_root.fcg_reward3d = Math.ceil(target * 100);
i = 1;
while(i <= _root.todayEvent)
{
   yy = _root.clock_year % 10;
   mm = _root.clock_month;
   dd = _root.clock_date;
   if(_root.eventList[yy][mm][dd][i] == "Receive Event Tokens by winning in TukkunFCG")
   {
      _root.gainEventToken(target);
   }
   i++;
}
target = 50 - _root.fcg_turn;
if(target < 0)
{
   target = 0;
}
_root.fcg_reward4a = target;
_root.fcg_reward4b = Math.ceil(Math.pow(_root.save.level,0.6) * Math.max(_root.boostMax,_root.save.boost) / 100) * 40 * target;
_root.fcg_reward4c = Math.ceil(target * 0.5);
_root.fcg_reward4d = Math.ceil(target * 1);
target = _root.fcg_player_chp;
_root.fcg_reward5a = target;
_root.fcg_reward5b = Math.ceil(Math.pow(_root.save.level,0.6) * Math.max(_root.boostMax,_root.save.boost) / 100) * 20 * target;
_root.fcg_reward5c = Math.ceil(target * 0.5);
_root.fcg_reward5d = Math.ceil(target * 1);
target = _root.fcgDamageDealt;
_root.fcg_reward6a = target;
_root.fcg_reward6b = Math.ceil(Math.pow(_root.save.level,0.6) * Math.max(_root.boostMax,_root.save.boost) / 100) * 20 * target;
_root.fcg_reward6c = Math.ceil(target * 0.5);
_root.fcg_reward6d = Math.floor(target * 1);
target = _root.save.fcgLevel;
_root.fcg_reward7a = target;
_root.fcg_reward7b = Math.ceil((_root.fcg_reward1b + _root.fcg_reward2b + _root.fcg_reward3b + _root.fcg_reward4b + _root.fcg_reward5b + _root.fcg_reward6b) * target * 0.02);
_root.fcg_reward7c = Math.ceil((_root.fcg_reward1c + _root.fcg_reward2c + _root.fcg_reward3c + _root.fcg_reward4c + _root.fcg_reward5c + _root.fcg_reward6c) * target * 0.002);
_root.fcg_reward7d = Math.ceil((_root.fcg_reward1d + _root.fcg_reward2d + _root.fcg_reward3d + _root.fcg_reward4d + _root.fcg_reward5d + _root.fcg_reward6d) * target * 0.002);
target = 0;
if(_root.save.powerUserTime > 0)
{
   target = 1;
}
_root.fcg_reward8a = target;
if(target == 1)
{
   _root.fcg_reward8b = Math.ceil((_root.fcg_reward1b + _root.fcg_reward2b + _root.fcg_reward3b + _root.fcg_reward4b + _root.fcg_reward5b + _root.fcg_reward6b + _root.fcg_reward7b) * 0.5);
   _root.fcg_reward8c = 0;
   _root.fcg_reward8d = Math.ceil((_root.fcg_reward1d + _root.fcg_reward2d + _root.fcg_reward3d + _root.fcg_reward4d + _root.fcg_reward5d + _root.fcg_reward6d + _root.fcg_reward7d) * 1);
}
else
{
   _root.fcg_reward8b = 0;
   _root.fcg_reward8c = 0;
   _root.fcg_reward8d = 0;
}
target = _root.save.petStat[6];
_root.fcg_reward9a = target;
_root.fcg_reward9b = Math.ceil((_root.fcg_reward1b + _root.fcg_reward2b + _root.fcg_reward3b + _root.fcg_reward4b + _root.fcg_reward5b + _root.fcg_reward6b + _root.fcg_reward7b) * 0.002 * target);
_root.fcg_reward9c = Math.ceil(target * 0);
_root.fcg_reward9d = Math.ceil(target * 0);
target = _root.discards;
_root.fcg_reward10a = target;
_root.fcg_reward10b = Math.ceil(Math.pow(_root.save.level,0.6) * Math.max(_root.boostMax,_root.save.boost) / 100) * -50 * target;
_root.fcg_reward10c = Math.ceil(target * 1) * -1;
_root.fcg_reward10d = Math.ceil(target * 2) * -1;
_root.fcg_rewardt1 = 0;
_root.fcg_rewardt2 = 0;
_root.fcg_rewardt3 = 0;
i = 1;
while(i <= 10)
{
   _root["fcg_reward" + i + "b"] = Math.floor(_root["fcg_reward" + i + "b"] * (1 + _root.curCareerLevel[8] * 0.005));
   if(_root.save.permaBanPenalty[20] == 3)
   {
      _root["fcg_reward" + i + "b"] = Math.floor(_root["fcg_reward" + i + "b"] * 3);
   }
   else if(_root.save.permaBanPenalty[20] == 2)
   {
      _root["fcg_reward" + i + "b"] = Math.floor(_root["fcg_reward" + i + "b"] * 2.2);
   }
   else if(_root.save.permaBanPenalty[20] == 1)
   {
      _root["fcg_reward" + i + "b"] = Math.floor(_root["fcg_reward" + i + "b"] * 1.8);
   }
   if(_root.power7Active == true)
   {
      _root["fcg_reward" + i + "b"] = Math.floor(_root["fcg_reward" + i + "b"] * 2);
   }
   if(_root.save.careerLevel[8] >= 100)
   {
      _root["fcg_reward" + i + "d"] = Math.floor(_root["fcg_reward" + i + "d"] * 1.5);
   }
   if(_root.power8Active == true && i == 8)
   {
      _root.fcg_reward8d += 400;
   }
   _root.fcg_rewardt1 += _root["fcg_reward" + i + "b"];
   _root.fcg_rewardt2 += _root["fcg_reward" + i + "c"];
   _root.fcg_rewardt3 += _root["fcg_reward" + i + "d"];
   i++;
}
if(_root.fcg_rewardt1 > 99999999999)
{
   _root.fcg_rewardt1 = 99999999999;
}
if(_root.fcg_rewardt1 < 0)
{
   _root.fcg_rewardt1 = 0;
}
if(_root.fcg_rewardt2 < 0)
{
   _root.fcg_rewardt2 = 0;
}
if(_root.fcg_rewardt3 < 0)
{
   _root.fcg_rewardt3 = 0;
}
if(_root.fcg_epic >= 1)
{
   _root.fcg_rewardt1 = 0;
   _root.fcg_rewardt2 = 0;
   _root.fcg_rewardt3 = 0;
}
_root.gainEXP(_root.fcg_rewardt1);
_root.save.fcgExp += _root.fcg_rewardt2;
_root.save.fcgCash += _root.fcg_rewardt3;
_root.gainBlueCoin(Math.floor(_root.fcg_rewardt2 / 2 * (1 + _root.curCareerLevel[8] * 0.01)));
_root.gainCareerEXP(8,Math.floor(500 + _root.fcg_rewardt2 * 15),true);
_root.dispNews(105,"Epic win! (+" + _root.withComma(_root.fcg_rewardt1) + " EXP)");
if(_root.saveid == 25 && _root.save.fcgLevel10 == 80)
{
   _root.clearChallenge();
}
