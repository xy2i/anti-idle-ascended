//! status=pending
on(dragOver,rollOver){
   if(_root.save.fishExamPerfect >= _root.save.fishExamPerfectReq && _root.save.fishExamStreak >= _root.save.fishExamStreakReq)
   {
      _root.actiondescription = "Click here to finish the exam. You can also keep on fishing until you run out of lives. During the exam, you will receive extra EXP and no Fatigue. You will pass the exam even if you run out of lives.";
   }
   else
   {
      _root.actiondescription = "Shift + Click this button to end the exam. You will fail the exam since you have yet to meet the requirements.";
   }
}


on(release){
   if(_root.save.fishExamPerfect >= _root.save.fishExamPerfectReq && _root.save.fishExamStreak >= _root.save.fishExamStreakReq || Key.isDown(16))
   {
      _root.actiondescription = "";
      _root.save.fishExamLeft = 0;
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


