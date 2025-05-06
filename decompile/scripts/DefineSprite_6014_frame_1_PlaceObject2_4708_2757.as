//! status=pending
onClipEvent(enterFrame){
   if(_root.save.arenaCraft > 999999999999)
   {
      _root.save.arenaCraft = 999999999999;
   }
   target = _root.save.arenaCraft;
   if(target > disp)
   {
      disp += Math.ceil((target - disp) / 1.1);
   }
   else if(target < disp)
   {
      disp += Math.floor((target - disp) / 1.1);
   }
   if(craftText.text != _root.withComma(disp))
   {
      craftText.text = _root.withComma(disp);
   }
}


onClipEvent(load){
   disp = _root.save.arenaCraft;
}


