//! status=pending
on(keyPress "<Up>"){
   museumOffset -= 1;
   if(museumOffset < 0)
   {
      museumOffset = 0;
   }
}


on(release){
   museumOffset -= 5;
   if(museumOffset < 0)
   {
      museumOffset = 0;
   }
}


