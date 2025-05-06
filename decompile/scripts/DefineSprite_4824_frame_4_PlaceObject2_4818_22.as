//! status=pending
on(dragOver,rollOver){
   _root.actiondescription += "<b><font color=\'#FFFF00\'>Controls the skill power and frame delay of main attack</font></b>";
   _root.actiondescription += "\n\n600% Skill Power damage, increased by 6% for each 1% the bar is filled.";
   _root.actiondescription += "\n\n4 frames delay, reduced to 3 frames once the enemy has lived 2 seconds, reduced to 2 frames after 4 seconds.";
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(enterFrame){
   targetScale = 100 - _parent.chaosAttack;
   _xscale = _xscale + (targetScale - _xscale) / 10;
}


onClipEvent(load){
   targetScale = 100;
   _xscale = 100;
}


