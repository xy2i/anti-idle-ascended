//! status=pending
onClipEvent(enterFrame){
   if(numberDisp.text != _root.withComma(_root.save.buttonPress))
   {
      numberDisp.text = _root.withComma(_root.save.buttonPress);
      scale = 110;
   }
   if(scale > 100)
   {
      scale -= 2;
   }
   _xscale = scale;
   _yscale = scale;
}


onClipEvent(load){
   scale = 100;
}


