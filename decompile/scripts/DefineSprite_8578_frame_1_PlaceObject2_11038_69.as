//! status=pending
on(release){
   _root.save.graphDisplay = "coin";
   _root.save.graphName = "Coins";
   _root.save.graphType = 2;
   if(_root.save.syncChart == true)
   {
      _root.save.sauceType = 2;
      _root.save.totalType = 2;
   }
   _parent.checkGraph();
}


onClipEvent(enterFrame){
   checkPos();
}


onClipEvent(load){
   function checkPos()
   {
      _X = 530;
      _alpha = 30;
      if(_root.save.graphType == 2)
      {
         _alpha = 100;
         _X = 510;
      }
   }
   checkPos();
}


