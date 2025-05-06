//! status=pending
onClipEvent(load){
   recipe = 1;
   if(!isNaN(_root.save.arenaBestiary[295]) && _root.save.arenaBestiary[295] >= 1)
   {
      recipe = 2;
   }
   if(!isNaN(_root.save.arenaBestiary[295]) && _root.save.arenaBestiary[295] >= 10 && _root.save.raidMegaboss >= 180000)
   {
      recipe = 3;
   }
   if(!isNaN(_root.save.arenaBestiary[295]) && _root.save.arenaBestiary[295] >= 60 && _root.save.raidMegaboss >= 270000)
   {
      recipe = 4;
   }
   if(!isNaN(_root.save.arenaBestiary[295]) && _root.save.arenaBestiary[295] >= 200 && _root.save.raidMegaboss >= 315000)
   {
      recipe = 5;
   }
   levDesc = [zeroItem,""];
   levDesc.push("Conquer \'The Special Arena\' 1 time");
   levDesc.push("Conquer \'The Special Arena\' 10 times\nGet a high score of at least 270 seconds remaining");
   levDesc.push("Conquer \'The Special Arena\' 60 times\nGet a high score of at least 315 seconds remaining");
   levDesc.push("Conquer \'The Special Arena\' 200 times\nGet a high score of at least 360 seconds remaining");
}


