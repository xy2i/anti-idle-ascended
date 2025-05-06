//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "<b><font color=\'#FFFF00\'>Manual Save</font></b>\nManually save your progress. Your progress is automatically saved every 5 minutes and whenever you close the game anyway, so this button is basically useless. But well, maybe it helps in cases like browser crash or power outage. Who knows.";
}


on(release){
   _root.save.manualSave += 1;
   _root.my_so.flush();
   _root.showPopup("Game Manually Saved","Your progress has been saved.\nDid you know that this game auto-saves as well?");
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


