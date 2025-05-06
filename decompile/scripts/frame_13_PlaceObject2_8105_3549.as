//! status=pending
onClipEvent(enterFrame){
   if(_root.cursoridle > 300 || _root.save.showProgBar == false && _root._xmouse < 510)
   {
      targetX = 825;
   }
   else
   {
      targetX = 525;
   }
   _X = _X + (targetX - _X) / 1.5;
   _X = Math.round(_X);
}


onClipEvent(load){
   targetX = 525;
}


