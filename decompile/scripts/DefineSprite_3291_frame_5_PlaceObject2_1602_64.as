//! status=pending
on(release){
   _root.save.aagStat3 += 1;
   if(_root.save.aagStat3 > 200)
   {
      _root.save.aagStat3 = 200;
   }
}


