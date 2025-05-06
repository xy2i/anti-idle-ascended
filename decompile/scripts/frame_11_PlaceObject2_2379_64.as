//! status=pending
on(release){
   if(_root.saveGlobal.challengeUnlocked == true)
   {
      if(_root.saveGlobal.selectedSave != 5)
      {
         _root.saveGlobal.selectedSave = 5;
      }
      else
      {
         _root.selectSavefile(_root.saveGlobal.selectedSave);
      }
   }
}


onClipEvent(enterFrame){
   checkFrame();
}


onClipEvent(load){
   function checkFrame()
   {
      if(_root.saveGlobal.challengeUnlocked != true)
      {
         gotoAndStop(5);
      }
      else if(_root.saveGlobal.selectedSave == 5)
      {
         gotoAndStop(1);
      }
      else if(_xmouse >= 0 && _xmouse < 120 && _ymouse >= 0 && _ymouse < 80)
      {
         gotoAndStop(3);
      }
      else
      {
         gotoAndStop(2);
      }
   }
   checkFrame();
}


