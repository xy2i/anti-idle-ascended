//! status=pending
on(release,keyPress "<Left>"){
   if(_root.save.fcgCurDiff > 0)
   {
      _root.save.fcgCurDiff -= 1;
   }
}


onClipEvent(enterFrame){
   gotoAndStop(_root.save.fcgCurDiff + 1);
}


