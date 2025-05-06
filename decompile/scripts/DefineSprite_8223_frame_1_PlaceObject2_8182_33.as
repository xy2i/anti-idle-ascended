//! status=pending
on(dragOver,rollOver){
   getDisp();
}


on(release){
   _root.save.breakNewsMode += 1;
   if(_root.save.breakNewsMode > 3)
   {
      _root.save.breakNewsMode = 1;
   }
   getDisp();
   gotoAndStop(_root.save.breakNewsMode);
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(load){
   function getDisp()
   {
      if(_root.save.breakNewsMode == 1)
      {
         _root.actiondescription = "Breaking News Mode:\n<b>Normal</b>\n\nAll Breaking News messages are loaded, including ones that are not displayed in the currently selected tab. You can read those messages when switching to corresponding tabs. Recommended if you switch Breaking News tabs often and don\'t want to miss any Breaking News messages, but may cause lag on slower computers.\n\nClick here to switch mode";
      }
      else if(_root.save.breakNewsMode == 2)
      {
         _root.actiondescription = "Breaking News Mode:\n<b>Current Tab Only</b>\n\nOnly messages that appear in the currently selected tab are loaded. All other tabs are frozen. Recommended for slower computers, but may cause you to miss important messages.\n\nClick here to switch mode";
      }
      else if(_root.save.breakNewsMode == 3)
      {
         _root.actiondescription = "Breaking News Mode:\n<b>Frozen</b>\n\nNo Breaking News messages are loaded. Recommended for slow computers, but it may be difficult to tell what is going on.\n\nClick here to switch mode";
      }
   }
   gotoAndStop(_root.save.breakNewsMode);
}


