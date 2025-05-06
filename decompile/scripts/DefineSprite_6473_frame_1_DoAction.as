//! status=pending
onEnterFrame = null;
fr = 2 + random(3);
if(_root.save.arcadeDifficulty[3] == 4 && _root.arcadeCorrect % 3 == 0)
{
   fr = 5;
}
gotoAndStop(fr);
