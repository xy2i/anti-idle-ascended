//! status=pending
_root.arcadeScore = 0;
_root.arcadeMultiplier = 1;
_root.arcadeTurns = 50;
_root.arcadeTimeLeft = 900;
_root.arcadeFakeScore = 0;
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
