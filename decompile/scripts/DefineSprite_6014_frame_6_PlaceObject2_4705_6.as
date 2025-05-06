//! status=pending
onClipEvent(enterFrame){
   target = _root.save.arenaPixel;
   if(target > disp)
   {
      disp += Math.ceil((target - disp) / 5);
   }
   else if(target < disp)
   {
      disp += Math.floor((target - disp) / 5);
   }
   if(pixelText.text != _root.withComma(disp))
   {
      pixelText.text = _root.withComma(disp);
   }
}


onClipEvent(load){
   disp = _root.save.arenaPixel;
}


