//! status=pending
function checkRuneLevel()
{
   rune1Text.text = "Lv. " + _root.save.arenaRuneLevel[1];
   rune2Text.text = "Lv. " + _root.save.arenaRuneLevel[2];
   rune3Text.text = "Lv. " + _root.save.arenaRuneLevel[3];
   rune4Text.text = "Lv. " + _root.save.arenaRuneLevel[4];
   rune5Text.text = "Lv. " + _root.save.arenaRuneLevel[5];
   rune6Text.text = "Lv. " + _root.save.arenaRuneLevel[6];
   _root.trackRuneLevel();
}
checkRuneLevel();
runeMult = 1;
if(_root.save.permaBanPenalty[27] == 3)
{
   runeMult = 1.5;
}
else if(_root.save.permaBanPenalty[27] == 2)
{
   runeMult = 1.3;
}
else if(_root.save.permaBanPenalty[27] == 1)
{
   runeMult = 1.2;
}
onEnterFrame = null;
