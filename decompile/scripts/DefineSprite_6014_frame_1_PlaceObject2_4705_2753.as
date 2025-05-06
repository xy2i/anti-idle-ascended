//! status=pending
onClipEvent(enterFrame){
   if(_root.save.arenaPixel > 999999999999)
   {
      _root.save.arenaPixel = 999999999999;
   }
   target = _root.save.arenaPixel;
   _root.save.arenaPixel = Math.floor(_root.save.arenaPixel);
   if(target > disp)
   {
      disp += Math.ceil((target - disp) / 1.1);
   }
   else if(target < disp)
   {
      disp += Math.floor((target - disp) / 1.1);
   }
   if(pixelText.text != _root.withComma(disp))
   {
      pixelText.text = _root.withComma(disp);
   }
}


onClipEvent(load){
   disp = _root.save.arenaPixel;
}


