//! status=pending
_root.arcadeScore = 0;
_root.arcadeFakeScore = 0;
_root.arcadeShieldCharge = 3 - _root.save.arcadeDifficulty[2];
if(_root.save.arcadeDifficulty[2] == 4)
{
   _root.arcadeShieldCharge = 0;
}
_root.arcadeShieldTime = 0;
_root.arcadeAvoidCount = 0;
_root.arcadeMultiplier = 1;
_root.arcadeLife = 1;
_root.arcadeInvincibility = 3;
if(_root.save.rankedMode != true)
{
   _root.arcadeInvincibility = 3 + _root.save.unrankedPower[8] * 3;
}
onEnterFrame = function()
{
   _root.arcadeFakeScore += Math.ceil((_root.arcadeScore - _root.arcadeFakeScore) / 1.1);
   _parent.countText.text = _root.withComma(_root.arcadeAvoidCount);
   _parent.scoreText.text = _root.withComma(_root.arcadeFakeScore);
   _parent.multiplierText.text = _root.arcadeMultiplier + "x";
   if(_root.arcadeShieldTime > -1)
   {
      _root.arcadeShieldTime -= 1 / _root.fps;
   }
   if(_root.arcadeShieldCharge < 3)
   {
      _root.arcadeShieldCharge += 1 / _root.fps / (15 + _root.save.arcadeDifficulty[2] * 15);
      if(_root.save.rankedMode != true)
      {
         _root.arcadeShieldCharge += 0.1 / _root.fps / (15 + _root.save.arcadeDifficulty[2] * 15) * _root.save.unrankedPower[8];
      }
   }
   if(Key.isDown(17) && _root.arcadeShieldTime < 0 && _root.arcadeShieldCharge >= 1)
   {
      _root.arcadeShieldCharge -= 1;
      _root.arcadeShieldTime = 1;
   }
};
