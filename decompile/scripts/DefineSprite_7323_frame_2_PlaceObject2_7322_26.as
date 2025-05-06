//! status=pending
onClipEvent(enterFrame){
   fts = _root.save.awesomeMaxEnergy - 4;
   if(fts > 11)
   {
      fts = 11;
   }
   gotoAndStop(fts);
}


