//! status=pending
on(release){
   if(_root.save.arenaTurnBased != true)
   {
      _root.save.arenaTurnBased = true;
      gotoAndStop(2);
   }
   else
   {
      _root.save.arenaTurnBased = false;
      gotoAndStop(1);
   }
}


onClipEvent(load){
   if(_root.save.arenaTurnBased == true)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}


