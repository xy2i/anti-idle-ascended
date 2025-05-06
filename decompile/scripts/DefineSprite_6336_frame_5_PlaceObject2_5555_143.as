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
      if(_parent._ymouse < _Y && _parent.songOffset > 0)
      {
         diff = -1 + Math.floor((_parent._ymouse - _Y) / 10);
         if(diff < - _parent.songOffset)
         {
            diff = - _parent.songOffset;
         }
      }
      if(_parent._ymouse > _Y + 50 && _parent.songOffset < _parent.songMaxOffset)
      {
         diff = 1 + Math.floor((_parent._ymouse - _Y - 50) / 10);
         if(diff > _parent.songMaxOffset - _parent.songOffset)
         {
            diff = _parent.songMaxOffset - _parent.songOffset;
         }
      }
      _parent.songOffset += diff;
   }
   _Y = 60 + _parent.songOffset / _parent.songMaxOffset * 155;
}


