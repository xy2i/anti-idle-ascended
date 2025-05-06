//! status=pending
onClipEvent(enterFrame){
   fr = _root.save.arenaZone + 1;
   if(_currentframe != fr)
   {
      gotoAndStop(fr);
   }
}


onClipEvent(load){
   gotoAndStop(_root.save.arenaZone + 1);
}


