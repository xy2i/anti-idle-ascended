//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "<b>Attempt Raid</b>\nDon\'t forget to wear Prot-- oh wait, you will most likely fail if you do so.";
   _root.actiondescription += "\n\n<font color=\'#BBFF00\'>Dark Shards: <b>" + _root.save.arenaChaosLeft + "</b></font>";
}


on(release){
   _parent._parent.kommanderDialog.gotoAndStop(13);
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(load){
   destination = 53;
}


