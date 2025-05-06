//! status=pending
on(release,keyPress "<Right>"){
   if(_root.save.fcgCurDiff < 11)
   {
      _root.save.fcgCurDiff += 1;
      if(_root.saveid == 25 && _root.save.fcgCurDiff == 10)
      {
         _root.fcgCooldown = 1;
      }
   }
}


onClipEvent(enterFrame){
   gotoAndStop(_root.save.fcgCurDiff + 3);
}


