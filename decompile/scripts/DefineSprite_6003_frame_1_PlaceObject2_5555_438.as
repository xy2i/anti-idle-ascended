//! status=pending
on(press){
   dragging = true;
}


on(releaseOutside,release){
   dragging = false;
}


onClipEvent(enterFrame){
   if(dragging == true)
   {
      diff = 0;
      if(_parent._ymouse < _Y && _parent.allyOffset > 0)
      {
         diff = -1 + Math.floor((_parent._ymouse - _Y) / 20);
         if(diff < - _parent.allyOffset)
         {
            diff = - _parent.allyOffset;
         }
      }
      if(_parent._ymouse > _Y + 50 && _parent.allyOffset < _parent.allyMaxOffset)
      {
         diff = 1 + Math.floor((_parent._ymouse - _Y - 50) / 20);
         if(diff > _parent.allyMaxOffset - _parent.allyOffset)
         {
            diff = _parent.allyMaxOffset - _parent.allyOffset;
         }
      }
      _parent.allyOffset += diff;
   }
   _Y = 20 + _parent.allyOffset / _parent.allyMaxOffset * 150;
}


