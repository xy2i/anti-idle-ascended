//! status=pending
on(keyPress "D"){
   _parent.pframe = 44;
}


on(release){
   if(_root.save.rankedMode == true)
   {
      tokenCost = 2;
   }
   else
   {
      tokenCost = 0;
   }
   if(_root.save.arcadeToken >= tokenCost)
   {
      _root.save.arcadeToken -= tokenCost;
      _parent.pframe = 24;
      _parent.gotoAndStop(20);
   }
}


