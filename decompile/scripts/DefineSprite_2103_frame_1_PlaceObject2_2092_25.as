//! status=pending
onClipEvent(enterFrame){
   delay += 1;
   if(delay > 2)
   {
      delay = 0;
      _height = 10;
      if(_root["exist_card" + (_parent._parent.cardloc + 1)] == 0)
      {
         _height = _height + 10;
         if(_root["exist_card" + (_parent._parent.cardloc + 2)] == 0)
         {
            _height = _height + 10;
         }
         if(_root["exist_card" + (_parent._parent.cardloc + 3)] == 0)
         {
            _height = _height + 10;
         }
      }
   }
}


onClipEvent(load){
   delay = 0;
}


