//! status=pending
on(release){
   if(_root.saveGlobal.skipMenu != true)
   {
      _root.saveGlobal.skipMenu = true;
   }
   else
   {
      _root.saveGlobal.skipMenu = false;
   }
}


onClipEvent(enterFrame){
   if(_root.saveGlobal.skipMenu == true)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}


