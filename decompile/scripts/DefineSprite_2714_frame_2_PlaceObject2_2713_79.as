//! status=pending
onClipEvent(enterFrame){
   if(_parent.featureDropdown._y > 330 - _parent.featureDropdown._height && _alpha < 100)
   {
      _alpha = _alpha + 20;
   }
   else if(_parent.featureDropdown._y <= 330 - _parent.featureDropdown._height && _alpha > 0)
   {
      _alpha = _alpha - 20;
   }
   if(this.hitTest(_root.cursor) && _alpha > 0)
   {
      _parent.featureDropdown.yspeed += 1;
      h = true;
      gotoAndStop(2);
   }
   else if(h == true)
   {
      h = false;
      gotoAndStop(1);
   }
}


onClipEvent(load){
   _alpha = 0;
}


