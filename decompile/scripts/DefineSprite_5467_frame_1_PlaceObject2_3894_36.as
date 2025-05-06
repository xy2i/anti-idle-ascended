//! status=pending
on(press){
   holding = true;
}


on(releaseOutside,release){
   holding = false;
}


onClipEvent(load){
   holding = false;
   gotoAndStop(1);
}


