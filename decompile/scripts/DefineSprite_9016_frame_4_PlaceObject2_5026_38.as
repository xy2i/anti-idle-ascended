//! status=pending
on(release){
   _root.save.autoAscendEnabled1 = !_root.save.autoAscendEnabled1;
   checkFrame();
}


onClipEvent(load){
   function checkFrame()
   {
      if(_root.save.autoAscendEnabled1 == true)
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


