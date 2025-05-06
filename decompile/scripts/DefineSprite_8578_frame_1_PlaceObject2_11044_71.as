//! status=pending
on(release){
   _root.save.graphDisplay = "blueCoin";
   _root.save.graphName = "Blue Coins";
   _root.save.graphType = 4;
   if(_root.save.syncChart == true)
   {
      _root.save.sauceType = 4;
      _root.save.totalType = 4;
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
      if(_root.save.graphType == 4)
      {
         _alpha = 100;
         _X = 510;
      }
   }
   checkPos();
}


