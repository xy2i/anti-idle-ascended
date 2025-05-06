//! status=pending
on(press){
   dragging = true;
}


on(releaseOutside,release){
   dragging = false;
}


onClipEvent(enterFrame){
   if(_parent._ymouse >= 0 && _parent._ymouse <= 105 && _parent._xmouse < 500 && _root.optionsScreen._currentframe == 1)
   {
      if(_root.scrollingDir == 1)
      {
         if(_root.breakoffset < 26)
         {
            _root.breakoffset += 1;
            _root.updateBreakNews = 1;
         }
      }
      else if(_root.scrollingDir == -1)
      {
         if(_root.breakoffset > 0)
         {
            _root.breakoffset -= 1;
            _root.updateBreakNews = 1;
         }
      }
   }
   if(dragging == true)
   {
      _Y = Math.round(_parent._ymouse - 5);
      if(_Y < 40)
      {
         _Y = 40;
      }
      if(_Y > 66)
      {
         _Y = 66;
      }
      tempOff = _Y - 40;
      if(_root.breakoffset != tempOff)
      {
         _root.breakoffset = tempOff;
         _root.updateBreakNews = 1;
      }
   }
   else
   {
      _Y = 40 + _root.breakoffset;
   }
}


onClipEvent(load){
   dragging = false;
   _Y = 40;
}


