//! status=pending
on(release){
   _root.save.graphDisplay = "exp";
   _root.save.graphName = "EXP";
   _root.save.graphType = 1;
   _root.graphUpdate = true;
}


onClipEvent(enterFrame){
   _X = 527;
   if(_root.save.graphType == 1)
   {
      _X = 507;
   }
}


onClipEvent(load){
   _X = 527;
   if(_root.save.graphType == 1)
   {
      _X = 507;
   }
}


