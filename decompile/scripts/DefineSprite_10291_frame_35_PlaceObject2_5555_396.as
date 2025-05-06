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
      if(_parent._ymouse < _Y && _parent.bcOffset > 0)
      {
         diff = -1 + Math.floor((_parent._ymouse - _Y) / 10);
         if(diff < - _parent.bcOffset)
         {
            diff = - _parent.bcOffset;
         }
      }
      if(_parent._ymouse > _Y + 50 && _parent.bcOffset < _parent.bcMaxOffset)
      {
         diff = 1 + Math.floor((_parent._ymouse - _Y - 50) / 10);
         if(diff > _parent.bcMaxOffset - _parent.bcOffset)
         {
            diff = _parent.bcMaxOffset - _parent.bcOffset;
         }
      }
      _parent.bcOffset += diff;
   }
   _Y = 70 + _parent.bcOffset / _parent.bcMaxOffset * 350;
}


