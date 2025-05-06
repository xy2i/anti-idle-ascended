//! status=pending
on(press){
   if(_parent._ymouse >= 96)
   {
      selectedColor = 3;
   }
   else if(_parent._ymouse >= 76)
   {
      selectedColor = 2;
   }
   else
   {
      selectedColor = 1;
   }
}


on(releaseOutside,release){
   selectedColor = 0;
}


onClipEvent(enterFrame){
   if(selectedColor == 1)
   {
      _root.save.bgred = Math.round(_xmouse);
      if(_root.save.bgred < 0)
      {
         _root.save.bgred = 0;
      }
      if(_root.save.bgred > 255)
      {
         _root.save.bgred = 255;
      }
   }
   else if(selectedColor == 2)
   {
      _root.save.bggreen = Math.round(_xmouse);
      if(_root.save.bggreen < 0)
      {
         _root.save.bggreen = 0;
      }
      if(_root.save.bggreen > 255)
      {
         _root.save.bggreen = 255;
      }
   }
   else if(selectedColor == 3)
   {
      _root.save.bgblue = Math.round(_xmouse);
      if(_root.save.bgblue < 0)
      {
         _root.save.bgblue = 0;
      }
      if(_root.save.bgblue > 255)
      {
         _root.save.bgblue = 255;
      }
   }
}


