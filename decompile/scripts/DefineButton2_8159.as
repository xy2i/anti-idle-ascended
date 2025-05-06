//! status=pending
on(press){
   if(_root.breakoffset < 26)
   {
      _root.breakoffset += 4;
      if(_root.breakoffset > 26)
      {
         _root.breakoffset = 26;
      }
      _root.updateBreakNews = 1;
   }
}


