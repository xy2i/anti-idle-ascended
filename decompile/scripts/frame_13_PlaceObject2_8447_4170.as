//! status=pending
onClipEvent(enterFrame){
   if(_root.saveid == 4 && Key.isDown(17) && Key.isDown(68))
   {
      gotoAndStop(2);
   }
   else if(_root.save.cheatEnabled == true && Key.isDown(17) && Key.isDown(68))
   {
      gotoAndStop(2);
   }
}


onClipEvent(load){
   if(_root.saveid == 4 || _root.save.cheatEnabled == true)
   {
      gotoAndStop(2);
   }
}


