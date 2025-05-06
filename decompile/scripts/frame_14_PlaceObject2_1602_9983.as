//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "<b><font color=\'#FFFF00\'>FAQ - Need Help?</font></b>\nIf you need help, don\'t forget to check out the FAQ! (Opens in a new tab)\nYou can also ask your own stupid questions here.\n\nOh, and \'FAQ\' stands for \'Frequently Asked Questions\', just so you know.";
}


on(release){
   getUrl("http://www.kongregate.com/forums/60-anti-idle-the-game/topics/166284-faq", "_blank");
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


