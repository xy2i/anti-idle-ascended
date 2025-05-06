//! status=pending
onClipEvent(enterFrame){
   fr = 2;
   if(_root.dungeonRoom % 6 == 1)
   {
      fr = 1;
   }
   gotoAndStop(fr);
}


