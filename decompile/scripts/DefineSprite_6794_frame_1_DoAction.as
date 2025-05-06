//! status=pending
_root.monsterTargetX = 260;
_root.monsterTargetY = 120;
whackMonster = true;
_root.monsterLeastTime = 999;
_root.arcadeScore = 0;
_root.arcadeFakeScore = 0;
_root.arcadeLife = 100;
_root.arcadeWhack = 0;
_root.arcadeAppear = 0;
_root.arcadeAppearDelay = 3;
_root.arcadeMultiplier = 1;
onEnterFrame = function()
{
   _root.arcadeAppearDelay -= 1 / _root.fps;
   if(_root.arcadeLife > 100)
   {
      _root.arcadeLife = 100;
   }
   if(_root.arcadeLife <= 0)
   {
      _root.showPopup("Spectate Mode","The Dragon of Wisdom scored " + _root.withComma(_root.arcadeScore) + " in Whack-a-greg.");
      _parent.gotoAndStop(2);
   }
   _root.arcadeFakeScore += Math.ceil((_root.arcadeScore - _root.arcadeFakeScore) / 1.1);
   _parent.scoreText.text = _root.withComma(_root.arcadeFakeScore);
   _parent.countText.text = _root.withComma(_root.arcadeWhack);
   _parent.multiplierText.text = _root.arcadeMultiplier + "x";
   mDispText.text = _root.arcadeMultiplier + "x";
   tDispText.text = Math.floor(_root.arcadeLife) + "%";
};
