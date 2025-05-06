//! status=pending
_root.epicdesc = "";
onEnterFrame = null;
_root.fcg_dep = 2;
_root.fcg_targety = 0;
if(_root.fcg_epic < 1)
{
   _root.save.fcgStreak = 0;
   if(_root.fcg_challenged == false)
   {
      _root.save["fcgStreak" + _root.fcg_opponentlevel] = 0;
   }
   _root.save.fcgLose += 1;
}
target = 1;
_root.fcg_reward1a = target;
_root.fcg_reward1b = Math.ceil(Math.pow(_root.save.level,0.6) * Math.max(_root.boostMax,_root.save.boost) / 100) * 500 * target;
_root.fcg_reward1c = Math.floor(target * 5);
_root.fcg_reward1d = Math.floor(target * 10);
if(_root.forfeit == true)
{
   _root.fcg_reward1b = 0;
   _root.fcg_reward1c = 0;
   _root.fcg_reward1d = 0;
}
if(_root.atie == true)
{
   _root.fcg_reward1b = Math.ceil(Math.pow(_root.save.level,0.6) * Math.max(_root.boostMax,_root.save.boost) / 100) * 1000 * target;
   _root.fcg_reward1c = Math.floor(target * 15);
   _root.fcg_reward1d = Math.floor(target * 30);
}
target = 0;
_root.fcg_reward2a = 0;
_root.fcg_reward2b = 0;
_root.fcg_reward2c = 0;
_root.fcg_reward2d = 0;
target = 0;
if(_root.atie == true)
{
   target = _root.fcg_opponentlevel;
}
_root.fcg_reward3a = target;
if(_root.atie == true)
{
   if(_root.fcg_opponentlevel == 5)
   {
      target = 8;
   }
   if(_root.fcg_opponentlevel == 6)
   {
      target = 8;
   }
   if(_root.fcg_opponentlevel == 7)
   {
      target = 15;
   }
   if(_root.fcg_opponentlevel == 8)
   {
      target = 20;
   }
   if(_root.fcg_opponentlevel == 9)
   {
      target = 50;
   }
   if(_root.fcg_opponentlevel == 10)
   {
      target = 30;
      if(_root.save.fcgStreak10 >= 5 && _root.save.fcgStreak10 % 5 == 0)
      {
         _root.save.fcgSeriousDeck = 52;
      }
   }
}
_root.fcg_reward3b = Math.ceil(Math.pow(_root.save.level,0.6) * Math.max(_root.boostMax,_root.save.boost) / 100) * 500 * target;
_root.fcg_reward3c = Math.floor(target * 5);
_root.fcg_reward3d = Math.floor(target * 10);
target = 0;
_root.fcg_reward4a = 0;
_root.fcg_reward4b = 0;
_root.fcg_reward4c = 0;
_root.fcg_reward4d = 0;
target = 0;
_root.fcg_reward5a = 0;
_root.fcg_reward5b = 0;
_root.fcg_reward5c = 0;
_root.fcg_reward5d = 0;
target = _root.fcgDamageDealt;
_root.fcg_reward6a = target;
_root.fcg_reward6b = Math.ceil(Math.pow(_root.save.level,0.6) * Math.max(_root.boostMax,_root.save.boost) / 100) * 20 * target;
_root.fcg_reward6c = Math.ceil(target * 0.25);
_root.fcg_reward6d = Math.floor(target * 0.25);
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
if(_root.forfeit == true)
{
   target += 99;
}
_root.fcg_reward10a = target;
_root.fcg_reward10b = Math.ceil(Math.pow(_root.save.level,0.6) * Math.max(_root.boostMax,_root.save.boost) / 100) * -50 * target;
_root.fcg_reward10c = Math.ceil(target * 1) * -1;
_root.fcg_reward10d = Math.ceil(target * 2) * -1;
_root.fcg_rewardt1 = 0;
_root.fcg_rewardt2 = 0;
_root.fcg_rewardt3 = 0;
if(_root.fcg_separate == true)
{
   i = 1;
   while(i <= 10)
   {
      _root["fcg_reward" + i + "b"] = 0;
      i++;
   }
}
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
   _root.fcg_rewardt1 += _root["fcg_reward" + i + "b"];
   _root.fcg_rewardt2 += _root["fcg_reward" + i + "c"];
   _root.fcg_rewardt3 += _root["fcg_reward" + i + "d"];
   i++;
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
}
_root.gainEXP(_root.fcg_rewardt1);
_root.save.fcgExp += _root.fcg_rewardt2;
_root.save.fcgCash += _root.fcg_rewardt3;
_root.gainCareerEXP(8,Math.floor(_root.fcg_rewardt2 * 15),true);
_root.dispNews(105,"Epic lose! (+" + _root.withComma(_root.fcg_rewardt1) + " EXP)");
