//! status=pending
on(release){
   if(_alpha == 100)
   {
      _root.bTitle = _parent.titleText.text;
      _root.bDesc = _parent.descText.text;
      _root.bScreenshot = _parent.ssText.text;
      _parent.gotoAndStop(3);
   }
}


onClipEvent(enterFrame){
   if(_parent.titleRemX <= 55 && _parent.descRemX <= 1300 && _parent.descRemX >= 0)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 30;
   }
}


