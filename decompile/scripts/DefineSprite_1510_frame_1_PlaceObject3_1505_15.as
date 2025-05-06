//! status=pending
onClipEvent(enterFrame){
   rank = _root.save.fcgLevel;
   fts = rank;
   if(fts > 51)
   {
      fts = 51;
   }
   gotoAndStop(fts);
}


