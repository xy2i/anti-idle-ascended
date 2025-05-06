//! status=pending
onClipEvent(enterFrame){
   minLevel = 3;
   i = 1;
   while(i <= 36)
   {
      if(minLevel > _root.save.permaBanPenalty[i])
      {
         minLevel = _root.save.permaBanPenalty[i];
      }
      i++;
   }
   _root.permaBanMax = minLevel + 1;
   fr = 5 - _root.permaBanMax;
   if(_currentframe != fr)
   {
      gotoAndStop(fr);
   }
}


onClipEvent(load){
   minLevel = 3;
   i = 1;
   while(i <= 36)
   {
      if(minLevel > _root.save.permaBanPenalty[i])
      {
         minLevel = _root.save.permaBanPenalty[i];
      }
      i++;
   }
   _root.permaBanMax = minLevel + 1;
   gotoAndStop(5 - _root.permaBanMax);
}


