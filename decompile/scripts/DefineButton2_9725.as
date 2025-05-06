//! status=pending
on(keyPress "<Up>"){
   bcOffset -= 1;
   if(bcOffset < 0)
   {
      bcOffset = 0;
   }
}


on(release){
   bcOffset -= 22;
   if(bcOffset < 0)
   {
      bcOffset = 0;
   }
}


