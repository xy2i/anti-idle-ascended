//! status=pending
onClipEvent(enterFrame){
   targetScale = _root.arcadeLife;
   insideBar._xscale += (targetScale - insideBar._xscale) / 5;
}


onClipEvent(load){
   insideBar._xscale = 0;
   insideBar.gotoAndStop(1);
}


