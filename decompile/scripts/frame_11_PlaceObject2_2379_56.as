//! status=pending
on(release){
   if(Key.isDown(17))
   {
      if(_root.saveGlobal.selectedSave != 4)
      {
         _root.saveGlobal.selectedSave = 4;
      }
      else
      {
         _root.selectSavefile(_root.saveGlobal.selectedSave);
      }
   }
   else if(_root.saveGlobal.selectedSave != 2)
   {
      _root.saveGlobal.selectedSave = 2;
   }
   else
   {
      _root.selectSavefile(_root.saveGlobal.selectedSave);
   }
}


onClipEvent(enterFrame){
   checkFrame();
}


onClipEvent(load){
   function checkFrame()
   {
      if(_root.saveGlobal.selectedSave == 2)
      {
         gotoAndStop(1);
      }
      else if(_xmouse >= 0 && _xmouse < 120 && _ymouse >= 0 && _ymouse < 80)
      {
         gotoAndStop(3);
      }
      else if(_root.saveGlobal.selectedSave == 4)
      {
         gotoAndStop(4);
      }
      else
      {
         gotoAndStop(2);
      }
   }
   checkFrame();
}


