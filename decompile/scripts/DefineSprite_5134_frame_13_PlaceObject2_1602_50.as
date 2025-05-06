//! status=pending
on(dragOver,rollOver){
   if(_root.save.arenaChaosMax >= 15 && _root.save.arenaChaosMax < 21)
   {
      _root.actiondescription = "Click here to increase Dark Shard limit by 1 for <b>" + _root.withComma(costArr[_root.save.arenaChaosMax]) + "</b> Pixels.";
   }
   else
   {
      _root.actiondescription = "";
   }
}


on(release){
   if(_root.save.arenaChaosMax >= 15 && _root.save.arenaChaosMax < 21 && _root.save.arenaPixel >= costArr[_root.save.arenaChaosMax])
   {
      _root.save.arenaPixel -= costArr[_root.save.arenaChaosMax];
      _root.save.arenaChaosLeft += 1;
      _root.save.arenaChaosMax += 1;
      if(_root.save.arenaChaosMax >= 15 && _root.save.arenaChaosMax < 21)
      {
         _root.actiondescription = "Click here to increase Dark Shard limit by 1 for <b>" + _root.withComma(costArr[_root.save.arenaChaosMax]) + "</b> Pixels.";
      }
      else
      {
         _root.actiondescription = "";
      }
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(enterFrame){
   if(_root.save.arenaChaosMax >= 15 && _root.save.arenaChaosMax < 21 && _root.save.arenaPixel >= costArr[_root.save.arenaChaosMax])
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 30;
   }
}


onClipEvent(load){
   costArr = new Array();
   costArr[15] = 10000000000;
   costArr[16] = 25000000000;
   costArr[17] = 50000000000;
   costArr[18] = 100000000000;
   costArr[19] = 250000000000;
   costArr[20] = 500000000000;
}


