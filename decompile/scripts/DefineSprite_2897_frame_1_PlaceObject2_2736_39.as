//! status=pending
onClipEvent(enterFrame){
   cost.text = _root.withComma(_root.save.progSpeedManual * _root.save.progSpeedManual / 5000);
   if(_root.save.progSpeedManual >= 200)
   {
      cost.text = _root.withComma(_root.save.progSpeedManual * _root.save.progSpeedManual / 500);
   }
   if(_root.save.progSpeedManual >= 300)
   {
      cost.text = _root.withComma((_root.save.progSpeedManual - 299) * 180);
   }
   if(_root.save.progSpeedManual >= 400)
   {
      cost.text = "N/A";
   }
}


