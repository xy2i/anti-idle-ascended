//! status=pending
on(release){
   _root.save.aagStat2 += 1;
   if(_root.save.aagStat2 > 200)
   {
      _root.save.aagStat2 = 200;
   }
}


