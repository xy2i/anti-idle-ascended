//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "<b><font color=\'#FFFF00\'>Blue Coin</font></b>\nNeeded for many useful items in the Mystery Shop.\n\nBlue Coins are very hard to find. You can get more Blue Coins from quests and by not idling.";
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


