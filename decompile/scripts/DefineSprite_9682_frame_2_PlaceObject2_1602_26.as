//! status=pending
on(release){
   if(_root.save.shinyToken >= 30)
   {
      _root.save.shinyToken -= 30;
      _root.restockModule(3);
      _parent.gotoAndStop(1);
   }
}


onClipEvent(load){
   _alpha = 30;
   if(_root.save.shinyToken >= 30)
   {
      _alpha = 100;
   }
}


