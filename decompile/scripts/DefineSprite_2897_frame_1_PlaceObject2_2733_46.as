//! status=pending
onClipEvent(enterFrame){
   cost.text = _root.withComma(_root.save.progSpeedAuto * _root.save.progSpeedAuto / 3);
   if(_root.save.progSpeedAuto >= 100)
   {
      cost.text = "N/A";
   }
}


