//! status=pending
on(release){
   _root.save.graphDisplay = "greenCoin";
   _root.save.graphName = "Green Coins";
   _root.save.graphType = 3;
   if(_root.save.syncChart == true)
   {
      _root.save.sauceType = 3;
      _root.save.totalType = 3;
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
      if(_root.save.graphType == 3)
      {
         _alpha = 100;
         _X = 510;
      }
   }
   checkPos();
}


