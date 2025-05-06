//! status=pending
on(release){
   if(_root.save.whiteCoin >= 25)
   {
      _root.save.whiteCoin -= 25;
      _root.restockModule(1);
      _parent.gotoAndStop(1);
   }
}


onClipEvent(load){
   _alpha = 30;
   if(_root.save.whiteCoin >= 25)
   {
      _alpha = 100;
   }
}


