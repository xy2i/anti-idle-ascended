//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "<b><font color=\'#FFFF00\'>Mission Kommander\'s Mission</font>\n</b>Defeat " + _root.withComma(_root.save.arenaKommanderMonCount) + " [" + _root.enemyList[_root.save.arenaKommanderMonID].name + "]\n\nProgress: " + _root.withComma(_root.save.arenaKommanderProgress) + " / " + _root.withComma(_root.save.arenaKommanderMonCount) + "\n\nMissions completed: " + _root.save.arenaKommanderComplete + "\n\nClick here to move to Ye Olde Pub";
}


on(release){
   _root.house.arena.travel(0,0);
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


