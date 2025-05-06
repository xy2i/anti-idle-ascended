//! status=pending
on(release){
   if(_root.save.blueCoin >= 500000 && _root.save.fishExp >= 2000000 && _root.save.fishExamReduce < 250 && (_root.save.fishExamPerfectReq > 20 || _root.save.fishExamStreakReq > 3) && _root.save.fishLevel < 60)
   {
      _root.save.blueCoin -= 500000;
      _root.save.fishExp -= 2000000;
      _root.save.fishTotalExp += 2000000;
      _root.save.fishExamReduce += 1;
      _parent.checkExam();
   }
}


onClipEvent(enterFrame){
   if(_root.save.blueCoin >= 500000 && _root.save.fishExp >= 2000000 && _root.save.fishExamReduce < 250 && (_root.save.fishExamPerfectReq > 20 || _root.save.fishExamStreakReq > 3) && _root.save.fishLevel < 60)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 20;
   }
}


onClipEvent(load){
   _alpha = 20;
}


