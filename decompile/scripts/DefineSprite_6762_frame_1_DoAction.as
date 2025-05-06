//! status=pending
_root.arcadeScore = 0;
_root.arcadeFakeScore = 0;
_root.arcadeTimeLeft = 420;
pongMonster = 125;
pongATW = 0;
_root.arcadePongPower = 0;
_root.arcadePongPowerType = "";
_root.arcadeDifficulty = 1;
_root.arcadeMultiplier = 1;
onEnterFrame = function()
{
   _root.arcadeTimeLeft -= 0.025;
   if(_root.arcadeTimeLeft <= 0)
   {
      _root.showPopup("Spectate Mode","The Dragon of Wisdom scored " + _root.withComma(_root.arcadeScore) + " in Pong.");
      _parent.gotoAndStop(2);
   }
   if(_root.arcadePongPowerType != "")
   {
      _root.arcadeMultiplier = _root.arcadeDifficulty * 2;
   }
   else
   {
      _root.arcadeMultiplier = _root.arcadeDifficulty;
   }
   _root.arcadeFakeScore += Math.ceil((_root.arcadeScore - _root.arcadeFakeScore) / 1.1);
   _parent.scoreText.text = _root.withComma(_root.arcadeFakeScore);
   _parent.timeText.text = _root.convertSec(_root.arcadeTimeLeft);
   _parent.multiplierText.text = _root.arcadeMultiplier + "x";
};
