//! status=pending
on(dragOver,rollOver){
   _root.actiondescription += "<b><font color=\'#FFFF00\'>Restores HP when you are hurt!!!11</font></b>";
   _root.actiondescription += "\n\nYou probably could have figured this one out on your own";
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(enterFrame){
   targetScale = 100 - _parent.chaosHealth;
   _xscale = _xscale + (targetScale - _xscale) / 10;
}


onClipEvent(load){
   targetScale = 100;
   _xscale = 100;
}


