//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "<font color=\'#FFFF00\'><b>Endless Dungeon</b></font>\n\nYou are invited to Endless Dungeon! Sounds kind of dangerous... do you REALLY want to go?";
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
      _root.actiondescription = "";
      if(!(_root.clock_year == 2013 && _root.clock_month == 12 && _root.clock_date >= 2 && _root.clock_date <= 8))
      {
         _root.save.arenaEndlessEntry -= 1;
      }
      _root.house.arena.travel(78);
      _parent.gotoAndStop(5);
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


