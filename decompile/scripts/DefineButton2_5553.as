//! status=pending
on(keyPress "<Down>"){
   museumOffset += 1;
   if(museumOffset > museumMaxOffset)
   {
      museumOffset = museumMaxOffset;
   }
}


on(release){
   museumOffset += 5;
   if(museumOffset > museumMaxOffset)
   {
      museumOffset = museumMaxOffset;
   }
}


