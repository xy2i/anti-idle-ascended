//! status=pending
onClipEvent(load){
   recipe = 1;
   if(!isNaN(_root.save.arenaBestiary[275]) && _root.save.arenaBestiary[275] >= 1)
   {
      recipe = 2;
   }
   if(!isNaN(_root.save.arenaBestiary[275]) && _root.save.arenaBestiary[275] >= 10)
   {
      recipe = 3;
   }
   if(!isNaN(_root.save.arenaBestiary[275]) && _root.save.arenaBestiary[275] >= 60)
   {
      recipe = 4;
   }
   if(!isNaN(_root.save.arenaBestiary[275]) && _root.save.arenaBestiary[275] >= 200)
   {
      recipe = 5;
   }
   levDesc = [zeroItem,""];
   levDesc.push("Defeat Chuck Norris 1 time");
   levDesc.push("Defeat Chuck Norris 10 times");
   levDesc.push("Defeat Chuck Norris 60 times");
   levDesc.push("Defeat Chuck Norris 200 times");
}


