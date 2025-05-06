//! status=pending
on(keyPress "<Up>"){
   songOffset -= 1;
   if(songOffset < 0)
   {
      songOffset = 0;
   }
}


on(release){
   songOffset -= 8;
   if(songOffset < 0)
   {
      songOffset = 0;
   }
}


