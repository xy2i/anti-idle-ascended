//! status=pending
on(release){
   if(_root.saveGlobal.breakTab4[_root.newsID[_parent.ID]] != true)
   {
      _root.saveGlobal.breakTab4[_root.newsID[_parent.ID]] = true;
   }
   else
   {
      _root.saveGlobal.breakTab4[_root.newsID[_parent.ID]] = false;
   }
}


onClipEvent(enterFrame){
   gotoAndStop(_root.saveGlobal.breakTab4[_root.newsID[_parent.ID]] + 1);
}


