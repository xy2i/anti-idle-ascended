//! status=pending
on(release){
   _root.save.mainStatPage = 2;
   _parent.statPage.gotoAndStop(2);
   _root.save.sauceType = 1;
   if(_root.save.syncChart == true)
   {
      _root.save.totalType = 1;
      _root.save.graphDisplay = "exp";
      _root.save.graphName = "EXP";
      _root.save.graphType = 1;
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
         if(_root.save.sauceType == 1)
         {
            _alpha = 100;
            _X = 540;
         }
      }
   }
   checkPos();
}


