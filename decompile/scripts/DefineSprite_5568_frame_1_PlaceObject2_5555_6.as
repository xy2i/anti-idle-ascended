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
      if(_parent._ymouse < _Y && _parent.museumOffset > 0)
      {
         diff = -1 + Math.floor((_parent._ymouse - _Y) / 10);
         if(diff < - _parent.museumOffset)
         {
            diff = - _parent.museumOffset;
         }
      }
      if(_parent._ymouse > _Y + 50 && _parent.museumOffset < _parent.museumMaxOffset)
      {
         diff = 1 + Math.floor((_parent._ymouse - _Y - 50) / 10);
         if(diff > _parent.museumMaxOffset - _parent.museumOffset)
         {
            diff = _parent.museumMaxOffset - _parent.museumOffset;
         }
      }
      _parent.museumOffset += diff;
   }
   _Y = 20 + _parent.museumOffset / _parent.museumMaxOffset * 110;
}


