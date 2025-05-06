//! status=pending
on(keyPress "<Down>"){
   songOffset += 1;
   if(songOffset > songMaxOffset)
   {
      songOffset = songMaxOffset;
   }
}


on(release){
   songOffset += 8;
   if(songOffset > songMaxOffset)
   {
      songOffset = songMaxOffset;
   }
}


