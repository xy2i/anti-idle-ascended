//! status=pending
onClipEvent(load){
   recipe = 1;
   if(_root.save.arenaPrehistoricComplete >= 1)
   {
      recipe = 2;
   }
   if(_root.save.arenaPrehistoricComplete >= 5)
   {
      recipe = 3;
   }
   if(_root.save.arenaPrehistoricComplete >= 30)
   {
      recipe = 4;
   }
   if(_root.save.arenaPrehistoricComplete >= 100)
   {
      recipe = 5;
   }
   levDesc = [zeroItem,""];
   levDesc.push("Complete Prehistoric Mission 1 time");
   levDesc.push("Complete Prehistoric Mission 5 times");
   levDesc.push("Complete Prehistoric Mission 30 times");
   levDesc.push("Complete Prehistoric Mission 100 times");
}


