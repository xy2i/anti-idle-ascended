//! status=pending
stop();
onEnterFrame = function()
{
   if(_root.save.arenaZone != _root.challengeZone)
   {
      fr = 5;
   }
   else if(_root.challengeDuration > 0)
   {
      fr = 3;
   }
   else if(_root.challengeDuration > -60)
   {
      fr = 4;
   }
   else
   {
      fr = 2;
   }
   if(_currentframe != fr)
   {
      gotoAndStop(fr);
   }
};
onRollOver = function()
{
   if(_root.save.arenaZone == _root.challengeZone && _root.challengeDuration <= -90)
   {
      _root.actiondescription = "<font color=\'#FFFF00\'><b>Time Attack Challenge</b></font>\n\nClick here to start the Challenge! Defeat as many monsters as you can during the Challenge. During the Challenge, monsters will be much stronger but monster reward and spawn rate will be increased.\n\nHigh score: <b>" + _root.save.arenaZoneChallenge[_root.save.arenaZone] + "</b>";
   }
};
onRollOut = function()
{
   _root.actiondescription = "";
};
onDragOver = onRollOver;
onDragOut = onRollOut;
onRelease = function()
{
   if(_root.save.arenaZone == _root.challengeZone && _root.challengeDuration <= -90)
   {
      _root.challengeDuration = 180;
      if(_root.save.arenaHardcore == true)
      {
         _root.challengeDuration += 30;
      }
      if(_root.worstMoon == true)
      {
         _root.challengeDuration += 60;
      }
      if(_root.apocalypse == true)
      {
         _root.challengeDuration += 30;
      }
      _root.challengeMaxDuration = _root.challengeDuration;
      _root.challengeKill = 0;
      _root.fightStat = "Challenge Start!";
      _root.fightStat2 = "Defeat as many monsters as you can within the time limit!";
   }
   _root.actiondescription = "";
};
gotoAndStop(5);
