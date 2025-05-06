//! status=pending
on(release){
   _root.save.aagStat4 += 5;
   if(_root.save.aagStat4 > 200)
   {
      _root.save.aagStat4 = 200;
   }
}


