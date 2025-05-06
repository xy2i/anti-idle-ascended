//! status=pending
function addBlock(bar, type)
{
   loc = 7 - balanceBlock[bar];
   if(loc >= 0)
   {
      balanceBar[bar][loc] = type;
      balanceBlock[bar] += 1;
      _root.arcadeScore += Math.floor((115 + 5 * loc) * _root.arcadeMultiplier);
      if(balanceBar[bar][loc + 1] == type && balanceBar[bar][loc + 2] == type)
      {
         balanceBar[bar][loc] = 0;
         balanceBar[bar][loc + 1] = 0;
         balanceBar[bar][loc + 2] = 0;
         balanceFlash[bar] = 1000;
         balanceBlock[bar] -= 3;
         _root.arcadeScore += Math.floor(3000 * _root.arcadeMultiplier);
         _root.arcadeBlock += 3;
         _root.arcadeMultiplierProgress += 9;
      }
   }
   else
   {
      _root.showPopup("Spectate Mode","The Dragon of Wisdom scored " + _root.withComma(_root.arcadeScore) + " in Balance 3.");
      _parent.gotoAndStop(2);
   }
}
monsterBalance = true;
monsterBalanceCooldown = 0.5;
balanceBar = new Array();
balanceBar[1] = [0,0,0,0,0,0,0,0];
balanceBar[2] = [0,0,0,0,0,0,0,0];
balanceBar[3] = [0,0,0,0,0,0,0,0];
balanceLoc = new Array();
balanceLoc[1] = 1300;
balanceLoc[2] = 1300;
balanceLoc[3] = 1300;
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
onEnterFrame = function()
{
   monsterBalanceCooldown -= 1 / _root.fps;
   _root.arcadeFakeScore += Math.ceil((_root.arcadeScore - _root.arcadeFakeScore) / 1.1);
   _parent.countText.text = _root.withComma(_root.arcadeBlock);
   _parent.scoreText.text = _root.withComma(_root.arcadeFakeScore);
   _parent.multiplierText.text = _root.arcadeMultiplier + "x";
   mDispText.text = _root.arcadeMultiplier + "x";
   totalBlock = balanceBlock[1] + balanceBlock[2] + balanceBlock[3];
   balanceLoc[1] += (balanceBlock[1] * 3 - totalBlock) * (1 + _root.arcadeBlock / 50) / _root.fps;
   balanceLoc[2] += (balanceBlock[2] * 3 - totalBlock) * (1 + _root.arcadeBlock / 50) / _root.fps;
   balanceLoc[3] += (balanceBlock[3] * 3 - totalBlock) * (1 + _root.arcadeBlock / 50) / _root.fps;
   if(balanceLoc[1] > 2000 || balanceLoc[2] > 2000 || balanceLoc[3] > 2000)
   {
      _root.showPopup("Spectate Mode","The Dragon of Wisdom scored " + _root.withComma(_root.arcadeScore) + " in Balance 3.");
      _parent.gotoAndStop(2);
   }
   del += 1 / _root.fps;
   if(del >= 1)
   {
      balanceLoc[1] += 1;
      balanceLoc[2] += 1;
      balanceLoc[3] += 1;
      del = 0;
   }
   if(_root.arcadeMultiplierProgress > 0)
   {
      _root.arcadeMultiplierProgress -= (1.5 + _root.arcadeMultiplier * 0.1) / _root.fps;
   }
};
