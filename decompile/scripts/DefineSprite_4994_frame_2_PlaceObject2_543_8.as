//! status=pending
onClipEvent(enterFrame){
   if(_root.gCheck == true)
   {
      checkFrame();
   }
}


onClipEvent(load){
   function checkFrame()
   {
      gotoAndStop(_parent._parent.frame);
      if(_parent._parent.subtype == "Secondary Weapon")
      {
         _Y = 40;
      }
      else if(_parent._parent.range == false)
      {
         _Y = 40;
         _parent.scanLine._y = 40;
         while(_parent.scanLine.hitTest(this))
         {
            _parent.scanLine._y -= 3;
         }
         _parent._parent.weaponRange = Math.round((40 - _parent.scanLine._y) * 5 / 3);
         if(_height > 40)
         {
            _Y = _height;
         }
         else
         {
            _Y = 20 + _height / 2;
         }
      }
      else
      {
         _Y = 20;
      }
      _parent.scanLine._y = 1999;
   }
   this.setMask(_parent.itemMark);
   checkFrame();
}


