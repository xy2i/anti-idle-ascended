//! status=pending
onClipEvent(load){
   if(_root.save.battlePoint >= 0 || _root.save.dt >= 1)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}


