//! status=pending
on(keyPress "<Down>"){
   allyOffset += 1;
   if(allyOffset > allyMaxOffset)
   {
      allyOffset = allyMaxOffset;
   }
   _root.actiondescription = "";
}


on(release){
   allyOffset += 12;
   if(allyOffset > allyMaxOffset)
   {
      allyOffset = allyMaxOffset;
   }
}


