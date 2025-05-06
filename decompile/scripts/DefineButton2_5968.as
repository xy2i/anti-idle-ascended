//! status=pending
on(keyPress "<Up>"){
   allyOffset -= 1;
   if(allyOffset < 0)
   {
      allyOffset = 0;
   }
   _root.actiondescription = "";
}


on(release){
   allyOffset -= 12;
   if(allyOffset < 0)
   {
      allyOffset = 0;
   }
}


