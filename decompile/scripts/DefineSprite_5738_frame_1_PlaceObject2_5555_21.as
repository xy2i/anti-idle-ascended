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
      if(_parent._ymouse < _Y && _parent.craftOffset > 0)
      {
         diff = -1 + Math.floor((_parent._ymouse - _Y) / 10);
         if(diff < - _parent.craftOffset)
         {
            diff = - _parent.craftOffset;
         }
      }
      if(_parent._ymouse > _Y + 50 && _parent.craftOffset < _parent.craftMaxOffset)
      {
         diff = 1 + Math.floor((_parent._ymouse - _Y - 50) / 10);
         if(diff > _parent.craftMaxOffset - _parent.craftOffset)
         {
            diff = _parent.craftMaxOffset - _parent.craftOffset;
         }
      }
      _parent.craftOffset += diff;
   }
   _Y = 20 + _parent.craftOffset / _parent.craftMaxOffset * 150;
}


