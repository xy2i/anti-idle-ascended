//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "<font color=\'#FFFF00\'><b>Tab 3</b></font>\nEach tab contains different kinds of messages. It is possible to configure which messages appear in which tabs.";
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
   tempTab = 3;
   gotoAndStop(3);
}


