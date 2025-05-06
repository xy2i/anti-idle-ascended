//! status=pending
on(release){
   _root.save.mainStatPage = 2;
   _parent.statPage.gotoAndStop(2);
   _root.save.sauceType = 5;
   if(_root.save.syncChart == true)
   {
      _root.save.totalType = 5;
      _root.save.graphDisplay = "whiteCoin";
      _root.save.graphName = "White Coins";
      _root.save.graphType = 5;
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
         if(_root.save.sauceType == 5)
         {
            _alpha = 100;
            _X = 540;
         }
      }
   }
   checkPos();
}


