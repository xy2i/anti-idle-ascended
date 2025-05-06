//! status=pending
onClipEvent(enterFrame){
   textBox.text = _root.withComma(_root.save.progBoxCount) + " / 2,500";
   insideBar.xscale = _root.save.progBoxCount / 25;
}


onClipEvent(load){
   insideBar.xscale = 0;
   bg.gotoAndStop(7);
   insideBar.gotoAndStop(7);
   textBox.textColor = 16764159;
}


