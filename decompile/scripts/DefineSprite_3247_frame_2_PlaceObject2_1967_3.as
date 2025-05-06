//! status=pending
onClipEvent(enterFrame){
   textBox.text = _root.withComma(_root.save.gardenResearch) + " / " + _root.withComma(_parent.reqResearch);
   insideBar.xscale = _root.save.gardenResearch / _parent.reqResearch * 100;
}


onClipEvent(load){
   insideBar.xscale = 0;
   bg.gotoAndStop(2);
   insideBar.gotoAndStop(2);
   textBox.textColor = 16764108;
}


