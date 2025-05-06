//! status=pending
on(keyPress "<Space>"){
   _parent.nextFrame();
}


on(release){
   _parent.gotoAndStop(1);
}


