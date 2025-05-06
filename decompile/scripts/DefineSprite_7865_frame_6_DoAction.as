//! status=pending
streakTextC.text = _root.withComma(_root.save.fishExamStreak) + "x / " + _root.withComma(_root.save.fishExamStreakReq) + "x";
perfectTextC.text = _root.withComma(_root.save.fishExamPerfect) + " / " + _root.withComma(_root.save.fishExamPerfectReq);
if(_root.save.fishLevel >= 60)
{
   streakTextC.text = _root.withComma(_root.save.fishExamStreak) + "x";
   perfectTextC.text = _root.withComma(_root.save.fishExamPerfect);
}
onEnterFrame = null;
