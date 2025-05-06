//! status=pending
onClipEvent(load){
   if(_root.saveid >= 20)
   {
      gotoAndStop(5);
   }
   else if(_root.saveid >= 10)
   {
      gotoAndStop(4);
   }
   else if(_root.save.gDifficulty == 3)
   {
      gotoAndStop(3);
   }
   else if(_root.save.gDifficulty == 2)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}


