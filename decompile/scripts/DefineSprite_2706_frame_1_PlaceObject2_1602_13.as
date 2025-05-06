//! status=pending
on(release){
   if(_alpha > 50)
   {
      _root.house.gotoAndStop(10);
   }
}


onClipEvent(load){
   if(_root.save.featureArcade == true)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 30;
   }
}


