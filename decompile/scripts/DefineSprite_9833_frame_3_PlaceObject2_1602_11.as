//! status=pending
on(release){
   _root.save.botCurrentOp = 0;
   _root.save.botCurrentOpTime = 0;
   _root.save.botCurrentOpNum = 1;
   _root.save.botCurrentOpMax = 1;
   _parent.gotoAndStop(1);
}


