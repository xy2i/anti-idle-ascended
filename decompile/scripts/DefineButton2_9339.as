//! status=pending
on(release, keyPress "<Left>"){
   if(questPage > 1)
   {
      questPage -= 1;
      questCheck = 2;
   }
}


