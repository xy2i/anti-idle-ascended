//! status=pending
_root.arcadeScore = 0;
_root.arcadeMultiplier = 1;
_root.arcadeStage = 1;
_root.arcadeTurns = 50;
if(_root.save.rankedMode != true)
{
   _root.arcadeTurns = 50 + _root.save.unrankedPower[26] * 10;
}
_root.arcadeTimeLeft = 900;
if(_root.save.rankedMode != true)
{
   _root.arcadeTimeLeft = 900 + _root.save.unrankedPower[28] * 60;
}
_root.arcadeFakeScore = 0;
