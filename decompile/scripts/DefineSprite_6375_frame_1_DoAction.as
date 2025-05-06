//! status=pending
_root.arcadeScore = 0;
_root.arcadeFakeScore = 0;
_root.arcadeTimeLeft = 420;
_root.arcadeLife = 1;
_root.arcadePongPower = 0;
_root.arcadePongPowerType = "";
_root.arcadeDifficulty = 1;
_root.arcadeMultiplier = 1;
onEnterFrame = function()
{
   _root.arcadeTimeLeft -= 0.025;
   if(_root.arcadeTimeLeft <= 0)
   {
      if(_root.save.arcadeDifficulty[1] == 1)
      {
         _root.arcadeScore = Math.floor(_root.arcadeScore * 1.05);
      }
      else if(_root.save.arcadeDifficulty[1] == 2)
      {
         _root.arcadeScore = Math.floor(_root.arcadeScore * 1.1);
      }
      else if(_root.save.arcadeDifficulty[1] == 3)
      {
         _root.arcadeScore = Math.floor(_root.arcadeScore * 1.2);
      }
      else if(_root.save.arcadeDifficulty[1] == 4)
      {
         _root.arcadeScore = Math.floor(_root.arcadeScore * 1.5);
      }
      _root.save.survivor = 1337;
      _parent.gotoAndStop(31);
   }
   if(_root.arcadePongPowerType != "")
   {
      _root.arcadeMultiplier = _root.arcadeDifficulty * 2;
      if(_root.save.arcadeDifficulty[1] >= 3)
      {
         _root.arcadeMultiplier = _root.arcadeDifficulty * 3;
      }
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
