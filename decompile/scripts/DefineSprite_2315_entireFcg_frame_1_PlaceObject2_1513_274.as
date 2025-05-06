//! status=pending
onClipEvent(enterFrame){
   _X = _parent._xmouse;
   _Y = _parent._ymouse;
   if(epicText.text != _root.epicdesc)
   {
      epicText.text = _root.epicdesc;
      if(_root.epicdesc != "")
      {
         _alpha = 100;
      }
      else
      {
         _alpha = 0;
      }
   }
}


