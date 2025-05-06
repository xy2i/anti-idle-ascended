//! status=pending
onClipEvent(enterFrame){
   if(_root.save.arenaSpookyToday > tempCheckpoint && _root.save.arenaSpookyToday % 200 == 0 && _root.save.inventoryName[_root.save.arenaPendant] != "Anti-Checkpoint Pendant")
   {
      tempCheckpoint = _root.save.arenaSpookyToday;
      gotoAndStop(1);
      _xscale = 200;
      _yscale = 200;
   }
   if(_currentframe == 1)
   {
      if(_xscale > 100)
      {
         _xscale = _xscale - 20;
         _yscale = _yscale - 20;
         _alpha = 100;
      }
      else
      {
         _alpha = _alpha - 4;
         if(_alpha < 10)
         {
            gotoAndStop(2);
         }
      }
   }
}


onClipEvent(load){
   gotoAndStop(2);
   tempCheckpoint = _root.save.arenaSpookyToday;
}


