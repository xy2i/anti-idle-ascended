//! status=pending
on(release){
   _root.save.graphDisplay = "whiteCoin";
   _root.save.graphName = "White Coins";
   _root.save.graphType = 5;
   if(_root.save.syncChart == true)
   {
      _root.save.sauceType = 5;
      _root.save.totalType = 5;
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
      if(_root.save.graphType == 5)
      {
         _alpha = 100;
         _X = 510;
      }
   }
   checkPos();
}


