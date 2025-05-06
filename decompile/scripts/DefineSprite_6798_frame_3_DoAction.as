//! status=pending
tileX = 0;
while(tileX <= 19)
{
   tileY = 0;
   while(tileY <= 9)
   {
      _root["tile" + tileX + "_" + tileY + "F"] = 0;
      _root["tile" + tileX + "_" + tileY + "R"] = 0;
      tileY++;
   }
   tileX++;
}
_root.mindMonsterFound = false;
_root.arcadeMultiplier += 1;
gain = 15 - _root.arcadeMultiplier;
if(gain < 5)
{
   gain = 5;
}
_root.arcadeScore += 1000 * _root.arcadeMultiplier;
_root.arcadeTurns += gain;
prevFrame();
