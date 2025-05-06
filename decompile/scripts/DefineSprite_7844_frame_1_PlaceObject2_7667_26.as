//! status=pending
onClipEvent(enterFrame){
   if(_root.save.fishFound[_parent.ID] > 0)
   {
      fr = _parent.ID;
   }
   else
   {
      fr = 51;
   }
   if(_currentframe != fr)
   {
      gotoAndStop(fr);
   }
}


onClipEvent(load){
   fr = 51;
   gotoAndStop(51);
}


