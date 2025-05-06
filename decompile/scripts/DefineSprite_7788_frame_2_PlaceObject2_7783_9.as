//! status=pending
onClipEvent(enterFrame){
   if(_root.save.fishExamPerfect >= _root.save.fishExamPerfectReq && _root.save.fishExamStreak >= _root.save.fishExamStreakReq)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}


