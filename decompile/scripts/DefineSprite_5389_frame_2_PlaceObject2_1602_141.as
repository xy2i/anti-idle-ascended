//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "Shift + Click to auto-sort items.";
}


on(release){
   if(Key.isDown(16))
   {
      _root.arenaSwap1 = 0;
      _root.enhancerToUse = 0;
      _parent.autoSort();
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


