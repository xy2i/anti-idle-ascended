//! status=pending
on(release){
   _parent.allyFiltered = false;
   _parent.allyOffset = _root.save.arenaAlly - 1;
   _parent.allyMaxOffset = _root.totalMonster - 12;
   if(_parent.allyOffset < 0)
   {
      _parent.allyOffset = 0;
   }
   if(_parent.allyMaxOffset < 1)
   {
      _parent.allyMaxOffset = 1;
   }
   if(_parent.allyOffset > _parent.allyMaxOffset)
   {
      _parent.allyOffset = _parent.allyMaxOffset;
   }
   _parent.recheckAlly = 2;
}


