//! status=pending
stop();
mindMonster = true;
_root.mindMonsterFound = 0;
_root.mindMonsterCooldown = 1;
_root.mindPowerCooldown = 1;
_root.mindMonsterX = 0;
_root.mindMonsterY = 0;
_root.treasurerevealed = 0;
_root.keyx = random(20);
_root.keyy = random(10);
_root.keyrevealed = false;
_root.redrevealed = false;
_root.focusx = -5;
_root.focusy = -5;
_root.focusTiletype = -1;
_root.focusDist = -1;
_root.focusNearby = -1;
onEnterFrame = function()
{
   _root.arcadeTimeLeft -= 1 / _root.fps;
   _root.mindMonsterCooldown -= 1 / _root.fps;
   if(_root.mindMonsterCooldown <= 0)
   {
      if(_root.mindMonsterCooldown <= -0.1)
      {
         tilex = random(20);
         tiley = random(10);
      }
      if(_root.treasurerevealed == 0)
      {
         tilex = 8 + random(4);
         tiley = 4 + random(2);
      }
      if(_root.treasurerevealed == Math.round(10 + _root.arcadeMultiplier / 3) || _root.mindMonsterCooldown <= -0.4)
      {
         tilex = _root.keyx;
         tiley = _root.keyy;
      }
      if(_root.mindMonsterFound == true)
      {
         nextFrame();
      }
      else
      {
         while(_root["tile" + tilex + "_" + tiley + "F"] == 0 && _root["tile" + tilex + "_" + tiley + "R"] == 0 && _root.mindMonsterCooldown <= 0)
         {
            _root["tile" + tilex + "_" + tiley + "R"] = 1;
            _root.mindMonsterCooldown = 0.4;
            tilex += random(2) - random(2);
            tiley += random(2) - random(2);
            _root.mindPowerCooldown -= 1;
         }
      }
   }
   if(_root.arcadeTimeLeft <= 0 || _root.arcadeTurns <= 0)
   {
      _root.showPopup("Spectate Mode","The Dragon of Wisdom scored " + _root.withComma(_root.arcadeScore) + " in MindSweeper.");
      _parent.gotoAndStop(2);
   }
   _root.arcadeFakeScore += Math.ceil((_root.arcadeScore - _root.arcadeFakeScore) / 1.1);
   _parent.scoreText.text = _root.withComma(_root.arcadeFakeScore);
   _parent.timeText.text = _root.convertSec(_root.arcadeTimeLeft);
   _parent.multiplierText.text = _root.arcadeMultiplier + "x";
   _parent.turnText.text = _root.arcadeTurns;
   mDispText.text = _root.arcadeMultiplier + "x";
   tDispText.text = Math.floor(_root.arcadeTimeLeft);
};
