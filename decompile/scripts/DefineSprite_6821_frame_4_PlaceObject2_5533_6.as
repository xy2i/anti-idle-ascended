//! status=pending
on(release){
   if(_root.save.rankedMode == true)
   {
      tokenCost = 3;
   }
   else
   {
      tokenCost = 0;
   }
   if(_root.save.arcadeToken >= tokenCost)
   {
      _root.save.arcadeToken -= tokenCost;
      _parent.pframe = 22;
      _parent.gotoAndStop(20);
   }
}


