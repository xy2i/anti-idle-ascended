//! status=pending
onClipEvent(load){
   recipe = 1;
   if(_root.save.arenaKommanderComplete >= 1)
   {
      recipe = 2;
   }
   if(_root.save.arenaKommanderComplete >= 5)
   {
      recipe = 3;
   }
   if(_root.save.arenaKommanderComplete >= 30)
   {
      recipe = 4;
   }
   if(_root.save.arenaKommanderComplete >= 100)
   {
      recipe = 5;
   }
   levDesc = [zeroItem,""];
   levDesc.push("Complete Mission Kommander\'s Mission 1 time");
   levDesc.push("Complete Mission Kommander\'s Mission 5 times");
   levDesc.push("Complete Mission Kommander\'s Mission 30 times");
   levDesc.push("Complete Mission Kommander\'s Mission 100 times");
}


