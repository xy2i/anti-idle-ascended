//! status=pending
if(_root.arcadeMultiplier < 99)
{
   _root.arcadeMultiplier += 1;
}
_root.arcadeStage += 1;
gain = 15 - _root.arcadeMultiplier;
if(gain < 5)
{
   gain = 5;
}
if(_root.save.arcadeDifficulty[5] == 1)
{
   if(_root.arcadeMultiplier > 20)
   {
      gain = -1;
   }
   if(_root.arcadeMultiplier > 50)
   {
      gain = -1;
   }
   if(_root.arcadeMultiplier > 90)
   {
      gain = -1;
   }
}
_root.arcadeScore += (750 + _root.save.arcadeDifficulty[5] * 250) * _root.arcadeMultiplier;
_root.arcadeTurns += gain;
timeGain = Math.floor((50 - _root.arcadeMultiplier) / 5);
if(timeGain < 3)
{
   timeGain = 3;
}
_root.arcadeTimeLeft += timeGain;
prevFrame();
