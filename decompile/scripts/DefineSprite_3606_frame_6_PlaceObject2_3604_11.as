//! status=pending
onClipEvent(enterFrame){
   if(_alpha > 0)
   {
      _alpha = _alpha - 1;
   }
   else if(Math.random() < 0.1)
   {
      res();
   }
}


onClipEvent(load){
   function res()
   {
      _X = Math.round((60 + Math.random() * 365) / 5) * 5;
      _Y = Math.round((30 + Math.random() * 100) / 5) * 5;
      _alpha = 100;
   }
   _alpha = 0;
}


