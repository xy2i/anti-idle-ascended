//! status=pending
on(keyPress "<Up>"){
   craftOffset -= 1;
   if(craftOffset < 0)
   {
      craftOffset = 0;
   }
}


on(release){
   craftOffset -= 12;
   if(craftOffset < 0)
   {
      craftOffset = 0;
   }
}


