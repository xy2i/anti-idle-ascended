//! status=pending
on(release, keyPress "<Right>"){
   if(questPage < Math.ceil(_root.totalMainQuest / 20))
   {
      questPage += 1;
      questCheck = 2;
   }
}


