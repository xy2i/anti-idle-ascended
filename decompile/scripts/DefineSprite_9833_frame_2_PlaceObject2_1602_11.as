//! status=pending
on(release){
   if(_parent.quantity > 0)
   {
      _root.save.botPoint -= _parent.totalCost;
      _root.save.botCurrentOp = _parent.selectedTask;
      _root.save.botCurrentOpTime = 0;
      _root.save.botCurrentOpNum = 1;
      _root.save.botCurrentOpMax = _parent.quantity;
      _parent.gotoAndStop(1);
   }
}


onClipEvent(enterFrame){
   checkAlpha();
}


onClipEvent(load){
   function checkAlpha()
   {
      if(_parent.quantity > 0 && !isNaN(_parent.quantity) && !isNaN(_parent.totalCost))
      {
         _alpha = 100;
      }
      else
      {
         _alpha = 30;
      }
   }
   checkAlpha();
}


