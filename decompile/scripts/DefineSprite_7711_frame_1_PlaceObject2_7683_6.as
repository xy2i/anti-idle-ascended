//! status=pending
on(release){
   if(_root.fishStatus != 2)
   {
      if(_root.fishPopPage == 0)
      {
         _parent._parent.fishPop.gotoAndStop(2);
      }
      else
      {
         _parent._parent.fishPop.gotoAndStop(3);
      }
   }
}


