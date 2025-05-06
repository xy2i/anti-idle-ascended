//! status=pending
onClipEvent(enterFrame){
   if(_root.areaFairyPower == true)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
   _xscale = _root.areaFairyPerformance / 2;
   if(_xscale > 100)
   {
      _xscale = 100;
   }
   if(_xscale < 0)
   {
      _xscale = 0;
   }
}


onClipEvent(load){
   _xscale = 0;
}


