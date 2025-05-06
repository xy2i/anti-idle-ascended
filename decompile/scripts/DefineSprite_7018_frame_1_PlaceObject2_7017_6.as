//! status=pending
onClipEvent(enterFrame){
   del += 1;
   if(del > 2)
   {
      del = 0;
      checkFr();
   }
}


onClipEvent(load){
   function checkFr()
   {
      if(_parent._parent._parent._currentframe == 6)
      {
         if(_parent.targetScale <= 0)
         {
            fr = 4;
         }
         else if(_root.lowPlayer == _parent.t)
         {
            fr = 3;
         }
         else if(_parent.targetScale <= 20)
         {
            fr = 2;
         }
         else
         {
            fr = 1;
         }
         if(_currentframe != fr)
         {
            gotoAndStop(fr);
         }
      }
   }
   del = 2;
}


