//! status=pending
if(_root.save.fishLevel >= 15)
{
   _root.save.fishRodUnlock[2] = 1;
}
if(_root.save.fishBestStreak >= 25)
{
   _root.save.fishRodUnlock[4] = 1;
}
if(_root.save.fishLevel >= 30)
{
   _root.save.fishRodUnlock[7] = 1;
}
if(_root.save.fishLevel >= 50)
{
   _root.save.fishRodUnlock[8] = 1;
}
if(_root.save.fishScoreRecord >= 50000000)
{
   _root.save.fishRodUnlock[8] = 1;
}
if(_root.save.fishScore >= 1000000000)
{
   _root.save.fishRodUnlock[9] = 1;
}
if(_root.save.fishPerfect >= 20000)
{
   _root.save.fishRodUnlock[10] = 1;
}
fishCapacityText.text = _root.withComma(_root.save.fishCapacity);
_root.fishRodCount = 0;
i = 1;
while(i <= 10)
{
   if(_root.save.fishRodUnlock[i] == 1)
   {
      _root.fishRodCount += 1;
   }
   if(_root.fishRodCount >= 7)
   {
      _root.save.fishRodUnlock[10] = 1;
   }
   i++;
}
fishRodText.text = _root.fishRodCount + " / 10";
onEnterFrame = null;
