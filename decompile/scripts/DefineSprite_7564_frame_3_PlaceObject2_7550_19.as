//! status=pending
on(release,keyPress "<Right>"){
   if(_root.bookPage < Math.ceil(_parent.wisdomList.length / 8))
   {
      _root.bookPage += 1;
      _parent.checkWisdom();
   }
   else
   {
      _parent.gotoAndStop(4);
   }
}


