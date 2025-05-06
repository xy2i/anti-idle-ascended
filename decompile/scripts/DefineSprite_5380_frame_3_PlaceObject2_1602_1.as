//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "Click here to enable auto-activation of this Rune. If auto-activation is enabled, Crystals of Rarity (or Crystals of Ultimate Rarity) will be automatically consumed to keep the Rune activated.";
}


on(release){
   _root.save.arenaRuneAuto[_parent.runeID] = true;
   _parent.gotoAndStop(2);
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


