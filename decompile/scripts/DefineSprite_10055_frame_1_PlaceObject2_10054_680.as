//! status=pending
on(dragOver,rollOver){
   if(targetAlpha > 0)
   {
      _root.actiondescription = "Click to move";
   }
}


on(release){
   _parent.questMoveSpeed -= 25;
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(enterFrame){
   if(_parent.questScroll < _parent.maxScroll)
   {
      targetAlpha = 100;
   }
   else
   {
      targetAlpha = 0;
   }
   _alpha = _alpha + Math.round((targetAlpha - _alpha) / 2);
}


onClipEvent(load){
   _alpha = 0;
   targetAlpha = 0;
}


