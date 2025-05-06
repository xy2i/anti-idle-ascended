//! status=pending
on(release){
   _root.save.graphDisplay = "exp";
   _root.save.graphName = "EXP";
   _root.save.graphType = 1;
   if(_root.save.syncChart == true)
   {
      _root.save.sauceType = 1;
      _root.save.totalType = 1;
   }
   _parent.checkGraph();
}


onClipEvent(enterFrame){
   checkPos();
}


onClipEvent(load){
   function checkPos()
   {
      _X = 528.5;
      _alpha = 30;
      if(_root.save.graphType == 1)
      {
         _alpha = 100;
         _X = 508.5;
      }
   }
   checkPos();
}


