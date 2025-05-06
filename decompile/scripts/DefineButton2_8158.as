//! status=pending
on(press){
   if(_root.breakoffset > 0)
   {
      _root.breakoffset -= 4;
      if(_root.breakoffset < 0)
      {
         _root.breakoffset = 0;
      }
      _root.updateBreakNews = 1;
   }
}


