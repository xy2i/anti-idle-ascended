//! status=pending
on(release){
   if(_root.save["antiLag" + t] != true)
   {
      _root.save["antiLag" + t] = true;
   }
   else
   {
      _root.save["antiLag" + t] = false;
   }
}


onClipEvent(enterFrame){
   if(_root.save["antiLag" + t] == true)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}


onClipEvent(load){
   t = 1;
}


