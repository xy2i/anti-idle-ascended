//! status=pending
on(release){
   if(_root.save.arenaAlly != _parent.ID)
   {
      _root.save.arenaAlly = _parent.ID;
   }
   else
   {
      _root.save.arenaAlly = 0;
   }
   _parent.checkAlly();
}


