//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "<b><font color=\'#FFFF00\'>Arcade Token</font></b>\nYou need Arcade Tokens to play games in the Arcade. You are given free Arcade Tokens every day, but unused Arcade Tokens will go to waste. So use them all!";
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


