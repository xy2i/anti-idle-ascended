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
      if(_root.save.petExist != 1)
      {
         fr = 2;
      }
      else if(_root.previewingCate == cate && _root.previewingItem != -1)
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
   cate = "Pet";
   del = 0;
   checkFrame();
}


