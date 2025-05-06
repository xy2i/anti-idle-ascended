//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "<font color=\'#FFFF00\'><b>Current Feature</b></font>\nThis tab contains Breaking News messages related to the feature you are currently using.";
}


on(release){
   _parent.curTab = tempTab;
   _root.saveGlobal.defTab = tempTab;
   _root.updateBreakNews = 1;
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(enterFrame){
   if(_parent.curTab == tempTab)
   {
      gotoAndStop(1);
   }
   else
   {
      gotoAndStop(2);
   }
}


onClipEvent(load){
   tempTab = 5;
   gotoAndStop(3);
}


