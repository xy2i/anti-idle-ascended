//! status=pending
onClipEvent(enterFrame){
   if(_root.save.progBoxNext > 600)
   {
      Xalpha = _root.save.progBoxNext * 100 - 60000;
      if(Xalpha > 100)
      {
         Xalpha = 100;
      }
      _alpha = Xalpha;
   }
   else
   {
      _alpha = 0;
   }
}


onClipEvent(load){
   _alpha = 0;
}


