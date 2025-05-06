//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "<font color=\'#FFFFoo\'><b>THE MEGABOSS\'s Revenge</b></font>\n\nTHE MEGABOSS wants to fight you... again, and again, and again!";
}


on(release){
   if(_root.save.arenaZone == 20 || _root.save.arenaZone == 24 || _root.save.arenaZone == 25 || _root.save.arenaZone == 29 || _root.save.arenaZone >= 31 && _root.save.arenaZone <= 43 || _root.save.arenaZone == 47 || _root.save.arenaZone == 50 || _root.save.arenaZone >= 53 && _root.save.arenaZone <= 56 || _root.save.arenaZone == 59 || _root.save.arenaZone == 69 || _root.save.arenaZone == 78 || _root.save.arenaZone == 79)
   {
      _root.showPopup("Error","You cannot accept the invitation from this location.");
   }
   else if(_root.house.arena.enemy.enemyID != 0)
   {
      _root.showPopup("Error","You cannot accept the invitation when there is a monster. Defeat the monster first.");
   }
   else
   {
      _root.save.arenaZoneOrig = _root.save.arenaZone;
      _root.actiondescription = "";
      _root.save.arenaRevengeEntry -= 1;
      _root.house.arena.travel(56);
      _parent.gotoAndStop(5);
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


