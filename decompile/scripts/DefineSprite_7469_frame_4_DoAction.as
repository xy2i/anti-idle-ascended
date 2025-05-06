//! status=pending
boxID = 3;
levelMult = Math.ceil(_root.save.bestLevel / 100);
if(_root.save.bestLevel >= 9001 || isNaN(levelMult))
{
   levelMult = 100;
}
boxExp = levelMult * 5000;
if(_root.save.bannedB >= 1 && _root.save.arenaLevel < 500)
{
   boxExp = 0;
}
boxExpText.text = _root.withComma(boxExp);
