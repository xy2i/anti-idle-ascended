//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "<font color=\'#FFFF00\'><b>The Corruption</b></font>\n\nYou are invited to The Corruption. Defeat enough monsters within the time limit to cleanse The Corruption and gain a huge amount of EXP and Coins!";
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
      if(_root.worstMoon == true)
      {
         _root.house.arena.travel(93);
      }
      else
      {
         _root.house.arena.travel(83);
      }
      _parent.gotoAndStop(5);
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


