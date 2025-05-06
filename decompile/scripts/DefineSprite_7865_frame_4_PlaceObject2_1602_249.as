//! status=pending
on(release){
   if(_root.save.greenCoin >= 250000000 && _root.save.fishExp >= 1000000)
   {
      _root.save.greenCoin -= 250000000;
      _root.save.fishExp -= 1000000;
      _root.save.fishTotalExp += 1000000;
      _root.save.fishExamLeft = 10;
      _root.save.fishExamRod = _root.save.fishRod;
      _root.save.fishRod = 8;
      _root.save.fishShield = 100;
      _root.save.fishExamPerfect = 0;
      _root.save.fishExamStreak = 0;
      _root.save.fishStreak = 0;
      _parent.gotoAndStop(1);
   }
}


onClipEvent(enterFrame){
   if(_root.save.greenCoin >= 250000000 && _root.save.fishExp >= 1000000)
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


