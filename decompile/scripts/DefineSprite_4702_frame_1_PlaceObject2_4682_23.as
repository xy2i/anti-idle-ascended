//! status=pending
onClipEvent(enterFrame){
   if(_root.save.arenaSkill[64] > 0 && _root.save.arenaZone != 24)
   {
      if(_root.reviveCooldown <= 0)
      {
         gotoAndStop(2);
      }
      else
      {
         gotoAndStop(1);
         barInside._xscale = 100 - _root.reviveCooldown / (240 - _root.save.arenaSkill[64] * 4) * 100;
      }
   }
   else
   {
      gotoAndStop(3);
   }
}


