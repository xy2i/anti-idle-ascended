//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "<b><font color=\'#FFFF00\'>Vanilla QoL edition</font>\n\n</b>";
   _root.actiondescription += "Mod v2.039";
   _root.actiondescription += "\n\nBy bwll, fer, qrsmith, sneak, and many others!";
}


on(release){
   _root.showPopup("Uh oh","You lost the game");
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


