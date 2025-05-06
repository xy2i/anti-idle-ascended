//! status=pending
function addBlock(bar, type)
{
   loc = 7 - balanceBlock[bar];
   if(loc >= 0)
   {
      balanceBar[bar][loc] = type;
      balanceBlock[bar] += 1;
      if(_root.save.arcadeDifficulty[7] == 4)
      {
         balanceAlp[bar][loc] = 100;
      }
      _root.arcadeScore += Math.floor((115 + 5 * loc) * _root.arcadeMultiplier);
      if(balanceBar[bar][loc + 1] == type && balanceBar[bar][loc + 2] == type)
      {
         balanceBar[bar][loc] = 0;
         balanceBar[bar][loc + 1] = 0;
         balanceBar[bar][loc + 2] = 0;
         balanceFlash[bar] = 1000;
         balanceBlock[bar] -= 3;
         _root.arcadeScore += Math.floor(3000 * _root.arcadeMultiplier);
         if(_root.save.arcadeDifficulty[7] == 1)
         {
            _root.arcadeScore -= Math.floor(1500 * _root.arcadeMultiplier);
         }
         if(_root.save.arcadeDifficulty[7] == 3)
         {
            _root.arcadeScore += Math.floor(1500 * _root.arcadeMultiplier);
         }
         if(_root.save.arcadeDifficulty[7] == 4)
         {
            _root.arcadeScore += Math.floor(7500 * _root.arcadeMultiplier);
         }
         _root.arcadeBlock += 3;
         if(_root.arcadeBlock % 30 == 0 && _root.arcadeMultiplier == 15)
         {
            _root.gainWhiteCoin(1);
         }
         _root.arcadeMultiplierProgress += 9;
         if(_root.save.arcadeDifficulty[7] == 3)
         {
            _root.arcadeMultiplierProgress += 3;
         }
         if(_root.save.arcadeDifficulty[7] == 4)
         {
            _root.arcadeMultiplierProgress += 9;
         }
         if(_root.save.rankedMode != true)
         {
            _root.arcadeMultiplierProgress += 0.45 * _root.save.unrankedPower[31];
            if(_root.save.arcadeDifficulty[7] == 3)
            {
               _root.arcadeMultiplierProgress += 0.15 * _root.save.unrankedPower[31];
            }
            if(_root.save.arcadeDifficulty[7] == 4)
            {
               _root.arcadeMultiplierProgress += 0.45 * _root.save.unrankedPower[31];
            }
         }
         progToEarn = 30 + _root.arcadeMultiplier * 6;
         _root.progPercent += progToEarn;
         _root.dispNews(90,"[Balance 3] Blocks destroyed! (+" + progToEarn + "% Progress)");
      }
   }
   else
   {
      _parent.gotoAndStop(37);
   }
}
balanceBar = new Array();
balanceBar[1] = [0,0,0,0,0,0,0,0];
balanceBar[2] = [0,0,0,0,0,0,0,0];
balanceBar[3] = [0,0,0,0,0,0,0,0];
balanceAlp = new Array();
balanceAlp[1] = [0,0,0,0,0,0,0,0];
balanceAlp[2] = [0,0,0,0,0,0,0,0];
balanceAlp[3] = [0,0,0,0,0,0,0,0];
balanceLoc = new Array();
balanceLoc[1] = 1300;
balanceLoc[2] = 1300;
balanceLoc[3] = 1300;
if(_root.save.rankedMode != true)
{
   balanceLoc[1] = 1300 - _root.save.unrankedPower[33] * 30;
   balanceLoc[2] = 1300 - _root.save.unrankedPower[33] * 30;
   balanceLoc[3] = 1300 - _root.save.unrankedPower[33] * 30;
}
balanceBlock = new Array();
balanceBlock[1] = 0;
balanceBlock[2] = 0;
balanceBlock[3] = 0;
balanceFlash = new Array();
balanceFlash[1] = 100;
balanceFlash[2] = 100;
balanceFlash[3] = 100;
_root.arcadeFakeScore = 0;
_root.arcadeScore = 0;
_root.arcadeBlock = 0;
_root.arcadeMultiplier = 1;
_root.arcadeMultiplierProgress = 0;
del = 0;
gameSpeed = 1;
if(_root.save.rankedMode != true)
{
   gameSpeed = 1 - _root.save.unrankedPower[32] * 0.04;
}
if(_root.save.arcadeDifficulty[7] == 1)
{
   gameSpeed *= 0.9;
}
if(_root.save.arcadeDifficulty[7] >= 3)
{
   gameSpeed *= 1.1;
}
onEnterFrame = function()
{
   if(_root.save.arcadeDifficulty[7] == 4)
   {
      i = 1;
      while(i <= 3)
      {
         j = 0;
         while(j <= 7)
         {
            if(balanceAlp[i][j] > 0)
            {
               balanceAlp[i][j] -= 100 / _root.fps * gameSpeed;
            }
            j++;
         }
         i++;
      }
   }
   _root.arcadeFakeScore += Math.ceil((_root.arcadeScore - _root.arcadeFakeScore) / 1.1);
   _parent.countText.text = _root.withComma(_root.arcadeBlock);
   _parent.scoreText.text = _root.withComma(_root.arcadeFakeScore);
   _parent.multiplierText.text = _root.arcadeMultiplier + "x";
   mDispText.text = _root.arcadeMultiplier + "x";
   totalBlock = balanceBlock[1] + balanceBlock[2] + balanceBlock[3];
   balanceLoc[1] += (balanceBlock[1] * 3 - totalBlock) * (1 + _root.arcadeBlock / 50) / _root.fps * gameSpeed;
   balanceLoc[2] += (balanceBlock[2] * 3 - totalBlock) * (1 + _root.arcadeBlock / 50) / _root.fps * gameSpeed;
   balanceLoc[3] += (balanceBlock[3] * 3 - totalBlock) * (1 + _root.arcadeBlock / 50) / _root.fps * gameSpeed;
   if(balanceLoc[1] > 2000 || balanceLoc[2] > 2000 || balanceLoc[3] > 2000)
   {
      _parent.gotoAndStop(37);
   }
   del += 1 / _root.fps * gameSpeed;
   if(del >= 1)
   {
      balanceLoc[1] += 1;
      balanceLoc[2] += 1;
      balanceLoc[3] += 1;
      del -= 1;
   }
   if(_root.arcadeMultiplierProgress > 0)
   {
      _root.arcadeMultiplierProgress -= (1.5 + _root.arcadeMultiplier * 0.1) / _root.fps * gameSpeed;
   }
};
