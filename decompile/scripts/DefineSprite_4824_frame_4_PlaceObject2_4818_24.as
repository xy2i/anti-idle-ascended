//! status=pending
on(dragOver,rollOver){
   _root.actiondescription += "<b><font color=\'#FFFF00\'>Performs Roundhouse Kick!</font></b>";
   _root.actiondescription += "\n\nDeals 50,000% skill power damage after 2 seconds on the same enemy\nTakes 400 attacks to recharge";
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(enterFrame){
   targetScale = 100 - _parent.chaosSpecial;
   _xscale = _xscale + (targetScale - _xscale) / 10;
}


onClipEvent(load){
   targetScale = 100;
   _xscale = 100;
}


