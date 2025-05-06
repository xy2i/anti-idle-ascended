//! status=pending
on(release){
   _root.save.mainStatPage = 2;
   _parent.statPage.gotoAndStop(2);
   _root.save.sauceType = 4;
   if(_root.save.syncChart == true)
   {
      _root.save.totalType = 4;
      _root.save.graphDisplay = "blueCoin";
      _root.save.graphName = "Blue Coins";
      _root.save.graphType = 4;
   }
}


onClipEvent(enterFrame){
   checkPos();
}


onClipEvent(load){
   function checkPos()
   {
      if(_root.save.mainStatPage != 2)
      {
         _visible = false;
      }
      else
      {
         _visible = true;
         _X = 560;
         _alpha = 30;
         if(_root.save.sauceType == 4)
         {
            _alpha = 100;
            _X = 540;
         }
      }
   }
   checkPos();
}


