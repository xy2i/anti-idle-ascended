//! status=pending
on(release){
   _root.save.aagStat4 -= 5;
   if(_root.save.aagStat4 < 0)
   {
      _root.save.aagStat4 = 0;
   }
}


