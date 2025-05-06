//! status=pending
on(keyPress "<Down>"){
   bcOffset += 1;
   if(bcOffset > bcMaxOffset)
   {
      bcOffset = bcMaxOffset;
   }
}


on(release){
   bcOffset += 22;
   if(bcOffset > bcMaxOffset)
   {
      bcOffset = bcMaxOffset;
   }
}


