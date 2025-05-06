//! status=pending
on(release){
   _root.sorttype = type;
   _parent.sortCards(type);
}


onClipEvent(enterFrame){
   if(_root.sorttype == type)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 30;
   }
}


onClipEvent(load){
   type = 6;
}


