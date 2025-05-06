//! status=pending
stop();
_root.treasurerevealed = 0;
_root.keyx = random(20);
_root.keyy = random(10);
_root.keyrevealed = false;
_root.redrevealed = false;
_root.focusx = -5;
_root.focusy = -5;
_root.focusTiletype = -1;
_root.focusDist = -1;
_root.mindPowerCooldown = 0;
onEnterFrame = function()
{
   _root.arcadeTimeLeft -= 1 / _root.fps;
   _root.mindPowerCooldown -= 1 / _root.fps;
   if(_root.arcadeTimeLeft <= 0 || _root.arcadeTurns <= 0)
   {
      _parent.gotoAndStop(35);
   }
   _root.arcadeFakeScore += Math.ceil((_root.arcadeScore - _root.arcadeFakeScore) / 1.1);
   _parent.scoreText.text = _root.withComma(_root.arcadeFakeScore);
   _parent.timeText.text = _root.convertSec(_root.arcadeTimeLeft);
   _parent.multiplierText.text = _root.arcadeMultiplier + "x";
   _parent.turnText.text = _root.arcadeTurns;
   mDispText.text = _root.arcadeMultiplier + "x";
   tDispText.text = Math.floor(_root.arcadeTimeLeft);
};
