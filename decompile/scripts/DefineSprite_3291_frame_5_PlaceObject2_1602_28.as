//! status=pending
on(release){
   _root.save.aagStat2 -= 1;
   if(_root.save.aagStat2 < 0)
   {
      _root.save.aagStat2 = 0;
   }
}


