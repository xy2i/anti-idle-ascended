//! status=pending
on(release){
   if(_root.save.shinyToken >= 200)
   {
      _root.save.shinyToken -= 200;
      _root.restockModule(4);
      _parent.gotoAndStop(1);
   }
}


onClipEvent(load){
   _alpha = 30;
   if(_root.save.shinyToken >= 200)
   {
      _alpha = 100;
   }
}


