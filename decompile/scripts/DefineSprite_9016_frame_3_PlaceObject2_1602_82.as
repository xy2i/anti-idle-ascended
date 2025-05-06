//! status=pending
on(release){
   if(_root.save.permaBanRes > 0)
   {
      _alpha = 30;
      _root.save.permaBanRes -= 1;
      _root.save.permaBanPenalty = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
      _root.save.permaStupidity = _root.save.banned;
      _root.save.permaStupidityHard = _root.save.bannedHard;
      _root.save.permaStupidityImpossible = _root.save.bannedImpossible;
   }
}


onClipEvent(load){
   if(_root.save.permaBanRes > 0)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 30;
   }
}


