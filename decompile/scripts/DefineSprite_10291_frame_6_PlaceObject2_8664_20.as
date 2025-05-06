//! status=pending
onClipEvent(enterFrame){
   fr = _root.achViewType;
   if(_currentframe != fr)
   {
      gotoAndStop(fr);
   }
}


onClipEvent(load){
   gotoAndStop(_root.achViewType);
}


