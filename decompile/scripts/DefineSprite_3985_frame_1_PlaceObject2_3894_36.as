//! status=pending
onClipEvent(load){
   holding = false;
   if(_root.save.disableDrawing == true)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}


