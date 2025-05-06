//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "<b>Blessed Career</b>\nGain extra Career EXP!\n\nBless Time Left: <b>" + _root.convertSecFull(_root.save.careerBoost[_parent.careerID]) + "</b>\n\nSHIFT + Click to deactivate blessing.";
}


on(release){
   if(Key.isDown(16))
   {
      _root.save.careerBoost[_parent.careerID] = 0;
      _root.checkCareer();
      _root.actiondescription = "";
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


