//! status=pending
onClipEvent(enterFrame){
   if(_root.save.arenaSkill[65] > 0)
   {
      if(_root.chargeX >= 4)
      {
         gotoAndStop(1);
      }
      else
      {
         gotoAndStop(5 - _root.chargeX);
      }
   }
}


onClipEvent(load){
   gotoAndStop(5);
}


