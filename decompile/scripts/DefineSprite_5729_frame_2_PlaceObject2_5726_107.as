//! status=pending
onClipEvent(load){
   recipe = 1;
   if(_root.save.raidDungeon >= 1100)
   {
      recipe = 2;
   }
   if(_root.save.raidDungeon >= 1800)
   {
      recipe = 3;
   }
   if(_root.save.raidDungeon >= 2500)
   {
      recipe = 4;
   }
   if(_root.save.raidDungeon >= 3200)
   {
      recipe = 5;
   }
   levDesc = [zeroItem,""];
   levDesc.push("Finish the Secret Dungeon with a score of at least 1,100");
   levDesc.push("Finish the Secret Dungeon with a score of at least 1,800");
   levDesc.push("Finish the Secret Dungeon with a score of at least 2,500");
   levDesc.push("Finish the Secret Dungeon with a score of at least 3,200");
}


