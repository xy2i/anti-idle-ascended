//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "Time Left: <b>" + _root.convertSecFull(_root.save.careerActive[_parent.careerID]) + "</b>\n\nSHIFT + Click to deactivate this career manually.";
}


on(release){
   if(Key.isDown(16))
   {
      _root.save.careerActive[_parent.careerID] = 0;
      _root.checkCareer();
      _root.actiondescription = "";
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


