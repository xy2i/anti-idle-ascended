//! status=pending
onClipEvent(enterFrame){
   cost.text = _root.withComma(_root.save.progSpeedAuto * _root.save.progSpeedAuto / 300);
   if(_root.save.progSpeedAuto >= 100)
   {
      cost.text = _root.withComma(_root.save.progSpeedAuto * _root.save.progSpeedAuto / 30);
   }
   if(_root.save.progSpeedAuto >= 150)
   {
      cost.text = _root.withComma((_root.save.progSpeedAuto - 149) * 750);
   }
   if(_root.save.progSpeedAuto >= 200)
   {
      cost.text = "N/A";
   }
}


