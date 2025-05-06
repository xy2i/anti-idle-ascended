//! status=pending
onClipEvent(enterFrame){
   if(_root.cursoridle > 300 || _root.save.antiLag1 == true)
   {
      targetX = -700;
   }
   else
   {
      targetX = 0;
   }
   _X = _X + (targetX - _X) / 5;
}


onClipEvent(load){
   targetX = 0;
}


