//! status=pending
on(release){
   _root.save.aagStat1 -= 1;
   if(_root.save.aagStat1 < 0)
   {
      _root.save.aagStat1 = 0;
   }
}


