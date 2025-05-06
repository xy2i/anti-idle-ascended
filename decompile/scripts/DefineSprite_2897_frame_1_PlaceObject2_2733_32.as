//! status=pending
onClipEvent(enterFrame){
   _parent.idleOnSpeed.text = _root.save.progSpeedAuto;
   _parent.idleOffSpeed.text = _root.save.progSpeedManual;
   cost.text = _root.withComma(_root.save.progSpeedManual * _root.save.progSpeedManual / 50);
   if(_root.save.progSpeedManual >= 200)
   {
      cost.text = "N/A";
   }
}


