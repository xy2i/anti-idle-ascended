//! status=pending
onClipEvent(enterFrame){
   al -= 80 / _root.fps;
   if(numberDisp.text != _root.withComma(_root.buttonHitCombo))
   {
      numberDisp.text = _root.withComma(_root.buttonHitCombo);
      scale = 110;
      al = 150;
   }
   if(scale > 100)
   {
      scale -= 2;
   }
   if(al < 1)
   {
      _root.buttonHitCombo = 0;
      al = 0;
   }
   _xscale = scale;
   _yscale = scale;
   _alpha = al;
}


onClipEvent(load){
   scale = 100;
   al = 0;
}


