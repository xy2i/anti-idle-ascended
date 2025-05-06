//! status=pending
on(release){
   if(_root.save.autoAp > 0)
   {
      _root.save.autoAp -= 1;
      checkAutoAp();
   }
}


