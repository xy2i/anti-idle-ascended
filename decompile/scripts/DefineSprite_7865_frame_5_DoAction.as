//! status=pending
skillTextB.text = "Skill " + Math.round(_root.save.fishLevel - 1) + " -> " + Math.round(_root.save.fishLevel);
streakTextB.text = _root.withComma(_root.save.fishExamStreak) + "x / " + _root.withComma(_root.save.fishExamStreakReq) + "x";
perfectTextB.text = _root.withComma(_root.save.fishExamPerfect) + " / " + _root.withComma(_root.save.fishExamPerfectReq);
onEnterFrame = null;
