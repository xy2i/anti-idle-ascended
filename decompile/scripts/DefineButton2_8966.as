//! status=pending
on(release){
   if(_root.save.autoAp < 20)
   {
      _root.save.autoAp += 1;
      checkAutoAp();
   }
}


