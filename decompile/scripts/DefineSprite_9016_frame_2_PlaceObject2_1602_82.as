//! status=pending
on(release){
   checkCost();
   if(_root.save.remStupidity >= _parent.cost)
   {
      _root.save.remStupidity -= _parent.cost;
      _root.save.ascStupidity += 1;
      checkCost();
   }
}


onClipEvent(load){
   function checkCost()
   {
      _parent.checkAsc();
      if(_root.save.remStupidity < _parent.cost)
      {
         _alpha = 30;
      }
      else
      {
         _alpha = 100;
      }
   }
   checkCost();
}


