//! status=pending
on(press){
   dragging = true;
}


on(releaseOutside,release){
   dragging = false;
}


onClipEvent(enterFrame){
   if(_root.scrollingDir == -1)
   {
      _root.save.progModuleScroll -= 3;
      if(_root.save.progModuleScroll < 0)
      {
         _root.save.progModuleScroll = 0;
      }
   }
   if(_root.scrollingDir == 1)
   {
      _root.save.progModuleScroll += 3;
      if(_root.save.progModuleScroll > 70)
      {
         _root.save.progModuleScroll = 70;
      }
   }
   if(Key.isDown(37))
   {
      _root.save.progModuleScroll -= 1;
      if(_root.save.progModuleScroll < 0)
      {
         _root.save.progModuleScroll = 0;
      }
   }
   if(Key.isDown(39))
   {
      _root.save.progModuleScroll += 1;
      if(_root.save.progModuleScroll > 70)
      {
         _root.save.progModuleScroll = 70;
      }
   }
   if(dragging == true)
   {
      diff = 0;
      if(_parent._xmouse < _X && _root.save.progModuleScroll > 0)
      {
         diff = -1 + Math.floor((_parent._xmouse - _X) / 10);
         if(diff < - _root.save.progModuleScroll)
         {
            diff = - _root.save.progModuleScroll;
         }
      }
      if(_parent._xmouse > _X + 50 && _root.save.progModuleScroll < 70)
      {
         diff = 1 + Math.floor((_parent._xmouse - _X - 50) / 10);
         if(diff > 70 - _root.save.progModuleScroll)
         {
            diff = 70 - _root.save.progModuleScroll;
         }
      }
      _root.save.progModuleScroll += diff;
   }
   _X = 15 + Math.round(_root.save.progModuleScroll / 70 * 570);
}


onClipEvent(load){
   _X = 15 + Math.round(_root.save.progModuleScroll / 70 * 570);
}


