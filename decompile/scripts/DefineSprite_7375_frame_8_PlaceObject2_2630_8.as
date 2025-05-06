//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "<b><font color=\'#FFFF00\'>Green Coin</font></b>\nNeeded for many important upgrades and certain items.\n\nGreen Coins can be obtained from the Progress Bar and most features in the game, though, they are less common.";
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


