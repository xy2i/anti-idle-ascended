//! status=pending
on(dragOver,rollOver){
   if(targetAlpha > 0)
   {
      _root.actiondescription = "Click to move";
   }
}


on(release){
   if(_parent.totalLoc > -5000)
   {
      _parent.shopMoveSpeed -= 25;
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(enterFrame){
   if(_parent.totalLoc > -4975)
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


