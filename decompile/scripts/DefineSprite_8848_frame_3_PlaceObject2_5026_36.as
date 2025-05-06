//! status=pending
on(release){
   _parent.bugType = 3;
   _root.showPopup("Important Notice","Please only tick this box if the bug you\'re reporting makes the game a lot EASIER. Otherwise, please tick a different one.");
}


onClipEvent(enterFrame){
   if(_parent.bugType == 3)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}


