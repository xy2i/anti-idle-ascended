//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = _parent.levDesc[lev];
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(load){
   lev = 2;
   if(_parent.recipe >= lev)
   {
      gotoAndStop(lev + 1);
   }
}


