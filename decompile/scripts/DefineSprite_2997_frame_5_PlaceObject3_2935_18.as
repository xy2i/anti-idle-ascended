//! status=pending
onClipEvent(enterFrame){
   costX = 5000000;
   if(_root.save.gDifficulty >= 3 && _root.save.level < 8999)
   {
      costX = 20000000;
   }
   else if(_root.save.gDifficulty >= 2 && _root.save.level < 8999)
   {
      costX = 10000000;
   }
   cost.text = _root.withComma(costX);
}


