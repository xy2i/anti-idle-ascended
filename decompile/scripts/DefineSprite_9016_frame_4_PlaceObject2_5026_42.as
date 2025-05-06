//! status=pending
on(release){
   _root.save.autoAscendEnabled3 = !_root.save.autoAscendEnabled3;
   checkFrame();
}


onClipEvent(load){
   function checkFrame()
   {
      if(_root.save.autoAscendEnabled3 == true)
      {
         gotoAndStop(2);
      }
      else
      {
         gotoAndStop(1);
      }
   }
   checkFrame();
}


