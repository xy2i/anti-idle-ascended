//! status=pending
on(release){
   if(_root.save.botEnergy >= 86400 && _root.save.botLevel >= 50)
   {
      _root.save.botEnergy -= 86400;
      _root.gainCyborgEXP(250);
   }
}


onClipEvent(enterFrame){
   if(_root.save.botEnergy >= 86400 && _root.save.botLevel >= 50)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 30;
   }
}


onClipEvent(load){
   if(_root.save.botEnergy >= 86400 && _root.save.botLevel >= 50)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 30;
   }
}


