//! status=pending
onClipEvent(enterFrame){
   del += 1;
   if(del >= 2)
   {
      del = 0;
      checkFrame();
   }
}


onClipEvent(load){
   function checkFrame()
   {
      if(_root.previewingCate == cate && _root.previewingItem != -1)
      {
         fr = _root.previewingItem + 2;
      }
      else
      {
         fr = _root.save["newHouse" + cate];
      }
      if(_currentframe != fr)
      {
         gotoAndStop(fr);
      }
   }
   cate = "RightHand";
   del = 0;
   checkFrame();
}


