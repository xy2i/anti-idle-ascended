//! status=pending
on(keyPress "<Down>"){
   craftOffset += 1;
   if(craftOffset > craftMaxOffset)
   {
      craftOffset = craftMaxOffset;
   }
}


on(release){
   craftOffset += 12;
   if(craftOffset > craftMaxOffset)
   {
      craftOffset = craftMaxOffset;
   }
}


