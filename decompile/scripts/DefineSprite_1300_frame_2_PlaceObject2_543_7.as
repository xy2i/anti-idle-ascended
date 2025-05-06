//! status=pending
onClipEvent(load){
   this.setMask(_parent.itemMark);
   gotoAndStop(_parent._parent.frame);
   d = 0;
   if(_parent._parent.range == false)
   {
      _Y = 40;
   }
   else
   {
      _Y = 20;
   }
}


