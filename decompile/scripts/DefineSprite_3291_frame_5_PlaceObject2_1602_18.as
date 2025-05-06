//! status=pending
on(release){
   _root.save.aagStat1 += 1;
   if(_root.save.aagStat1 > 200)
   {
      _root.save.aagStat1 = 200;
   }
}


