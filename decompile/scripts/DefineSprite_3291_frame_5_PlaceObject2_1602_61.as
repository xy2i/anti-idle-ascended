//! status=pending
on(release){
   _root.save.aagStat3 -= 1;
   if(_root.save.aagStat3 < 0)
   {
      _root.save.aagStat3 = 0;
   }
}


