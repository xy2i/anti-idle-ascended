//! status=pending
on(release){
   _root.save.bgNum = id;
}


onClipEvent(enterFrame){
   checkAlp();
}


onClipEvent(load){
   function checkAlp()
   {
      if(_root.save.bgNum == id)
      {
         _alpha = 100;
      }
      else
      {
         _alpha = 30;
      }
   }
   id = 5;
   checkAlp();
}


