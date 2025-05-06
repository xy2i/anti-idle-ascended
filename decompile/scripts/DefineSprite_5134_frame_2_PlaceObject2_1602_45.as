//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "[" + _root.enemyList[_root.save.arenaKommanderMonID].name + "]\ncan be found in\n[" + _root.enemyList[_root.save.arenaKommanderMonID].loc + "]\n\nHowever, if you find the monster in a different area, killing it will count towards the mission progress too!";
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


