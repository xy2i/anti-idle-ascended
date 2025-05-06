//! status=pending
onClipEvent(enterFrame){
   if(_root.save.arenaSkill[65] > 0)
   {
      if(_root.chargeC >= 4)
      {
         gotoAndStop(1);
      }
      else
      {
         gotoAndStop(5 - _root.chargeC);
      }
   }
}


onClipEvent(load){
   gotoAndStop(5);
}


