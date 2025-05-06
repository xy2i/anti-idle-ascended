//! status=pending
onClipEvent(enterFrame){
   if(_root.cursoridle > 300 || _root.save.antiLag2 == true)
   {
      targetX = -700;
   }
   else
   {
      targetX = 0;
   }
   _X = _X + (targetX - _X) / 1.5;
   _X = Math.round(_X);
}


onClipEvent(load){
   targetX = 0;
}


