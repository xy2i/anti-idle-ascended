//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "Shift + Click to restore default Breaking News configuration.\n\nWARNING: YOU WILL BE SENT TO THE TITLE SCREEN.";
}


on(release){
   if(Key.isDown(16))
   {
      _root.saveGlobal.breakTab1 = undefined;
      _root.gotoAndStop(11);
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


