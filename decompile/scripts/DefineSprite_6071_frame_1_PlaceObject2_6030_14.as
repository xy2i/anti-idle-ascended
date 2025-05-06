//! status=pending
onClipEvent(enterFrame){
   if(numberDisp.text != _root.withComma(_root.buttonMultiplier) + "%")
   {
      numberDisp.text = _root.withComma(_root.buttonMultiplier) + "%";
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


