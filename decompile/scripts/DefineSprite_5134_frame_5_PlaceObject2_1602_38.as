//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "\'Please consider donating. For each 500,000,000 Pixels, you help speed up my next invention a little bit, and can use this machine 50 extra times today.\'";
}


on(release){
   if(_root.save.arenaBonusChange < 50 && _root.save.arenaPixel >= 500000000)
   {
      _root.save.arenaPixel -= 500000000;
      _root.save.arenaBonusChange += 50;
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(enterFrame){
   if(_root.save.arenaBonusChange < 50 && _root.save.arenaPixel >= 500000000)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 30;
   }
}


