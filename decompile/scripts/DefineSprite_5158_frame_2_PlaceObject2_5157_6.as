//! status=pending
onClipEvent(enterFrame){
   del += 1;
   _alpha = 50;
   if(del >= 20)
   {
      _alpha = 100;
   }
   if(del >= 40)
   {
      _alpha = 50;
      del = 0;
   }
   slt = _root.save.arenaDeletedSlot - 1;
   if(slt == 800)
   {
      slt = 830;
   }
   _X = (slt - 801) % 6 * 40;
   _Y = Math.ceil((slt - 800) / 6) * 40 - 240;
}


onClipEvent(load){
   del = 0;
   _alpha = 0;
   gotoAndStop(2);
}


