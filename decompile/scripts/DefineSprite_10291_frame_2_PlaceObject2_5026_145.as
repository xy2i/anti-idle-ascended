//! status=pending
on(release){
   if(_root.save.disableDrawing != true)
   {
      _root.save.disableDrawing = true;
   }
   else
   {
      _root.save.disableDrawing = false;
   }
}


onClipEvent(enterFrame){
   if(_root.save.disableDrawing == true)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}


