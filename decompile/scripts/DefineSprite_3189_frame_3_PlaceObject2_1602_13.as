//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "You can spend 1,000,000 Green Coins to skip the Fertilizer cooldown.\n\nIf you hold Shift while clicking either Fertilizer or Mega Fertilizer, you can skip the cooldown without having to click this button (the Green Coins are still consumed). You can also hold both Ctrl and Shift while clicking Fertilizer or Mega Fertilizer to apply the maximum number possible.";
}


on(release){
   if(_root.systemtimenow < _root.save.gardenFertilizerAllow && _root.save.greenCoin >= 1000000)
   {
      _root.save.greenCoin -= 1000000;
      _root.save.gardenFertilizerAllow = _root.systemtimenow;
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(enterFrame){
   if(_root.systemtimenow < _root.save.gardenFertilizerAllow && _root.save.greenCoin >= 1000000)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 30;
   }
}


onClipEvent(load){
   _alpha = 0;
}


