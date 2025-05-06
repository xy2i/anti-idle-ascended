//! status=pending
on(release){
   if(_root.achViewType == 1)
   {
      _root.achViewType = 2;
      _parent.achPage = Math.ceil(_parent.achPage / 2);
   }
   else
   {
      _root.achViewType = 1;
      _parent.achPage = Math.floor(_parent.achPage * 2) - 1;
   }
   _parent.toRefresh = 5;
}


