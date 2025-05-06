//! status=pending
on(release,keyPress "<Left>"){
   if(_root.bookPage > 1)
   {
      _root.bookPage -= 1;
      _parent.checkWisdom();
   }
   else
   {
      _parent.gotoAndStop(2);
   }
}


