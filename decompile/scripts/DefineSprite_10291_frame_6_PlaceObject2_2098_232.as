//! status=pending
on(release){
   if(_root.achMode == "All")
   {
      _root.achMode = "Earned";
   }
   else if(_root.achMode == "Earned")
   {
      _root.achMode = "Unearned";
   }
   else
   {
      _root.achMode = "All";
   }
   _parent.achPage = 1;
   _parent.toRefresh = 5;
}


