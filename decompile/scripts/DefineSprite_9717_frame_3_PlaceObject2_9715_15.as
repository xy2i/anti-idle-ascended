//! status=pending
on(release){
   if(_currentframe == 3)
   {
      _root.saveGlobal.breakAll[_root.newsID[_parent.ID]] = false;
      _root.saveGlobal.breakFeature[_root.newsID[_parent.ID]] = false;
   }
   else if(_currentframe == 2 || _root.newsFeature[_root.newsID[_parent.ID]] == 0)
   {
      _root.saveGlobal.breakAll[_root.newsID[_parent.ID]] = true;
      _root.saveGlobal.breakFeature[_root.newsID[_parent.ID]] = true;
   }
   else
   {
      _root.saveGlobal.breakAll[_root.newsID[_parent.ID]] = false;
      _root.saveGlobal.breakFeature[_root.newsID[_parent.ID]] = true;
   }
}


onClipEvent(enterFrame){
   if(_root.saveGlobal.breakAll[_root.newsID[_parent.ID]] == true)
   {
      gotoAndStop(3);
   }
   else if(_root.saveGlobal.breakFeature[_root.newsID[_parent.ID]] == true)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}


