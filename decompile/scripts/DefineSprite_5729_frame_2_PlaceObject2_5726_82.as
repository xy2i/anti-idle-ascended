//! status=pending
onClipEvent(load){
   recipe = 1;
   if(_root.save.arenaZoneKill[23] >= 50)
   {
      recipe = 2;
   }
   if(_root.save.arenaZoneKill[23] >= 500)
   {
      recipe = 3;
   }
   if(_root.save.arenaZoneKill[23] >= 5000)
   {
      recipe = 4;
   }
   if(_root.save.arenaZoneKill[23] >= 50000)
   {
      recipe = 5;
   }
   levDesc = [zeroItem,""];
   levDesc.push("Defeat 50 monsters in 9001: Mystic Forest");
   levDesc.push("Defeat 500 monsters in 9001: Mystic Forest");
   levDesc.push("Defeat 5,000 monsters in 9001: Mystic Forest");
   levDesc.push("Defeat 50,000 monsters in 9001: Mystic Forest");
}


