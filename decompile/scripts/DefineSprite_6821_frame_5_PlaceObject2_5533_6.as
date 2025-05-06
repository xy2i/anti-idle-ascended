//! status=pending
on(keyPress "D"){
   _parent.pframe = 43;
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
      _parent.pframe = 23;
      _parent.gotoAndStop(20);
   }
}


