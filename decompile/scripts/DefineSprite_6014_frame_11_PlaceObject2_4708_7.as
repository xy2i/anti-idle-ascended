//! status=pending
onClipEvent(enterFrame){
   target = _root.save.arenaCraft;
   if(target > disp)
   {
      disp += Math.ceil((target - disp) / 5);
   }
   else if(target < disp)
   {
      disp += Math.floor((target - disp) / 5);
   }
   if(craftText.text != _root.withComma(disp))
   {
      craftText.text = _root.withComma(disp);
   }
}


onClipEvent(load){
   disp = _root.save.arenaCraft;
}


