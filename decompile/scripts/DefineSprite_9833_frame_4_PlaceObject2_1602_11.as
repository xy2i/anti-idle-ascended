//! status=pending
on(release){
   if(_root.save.botPill > 0 && _root.save.botLevel < 200)
   {
      _root.save.botPill -= 1;
      _root.save.botPillUsed += 1;
      _root.gainCyborgEXP(100000);
   }
}


onClipEvent(enterFrame){
   if(_root.save.botPill > 0 && _root.save.botLevel < 200)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 30;
   }
}


onClipEvent(load){
   if(_root.save.botPill > 0 && _root.save.botLevel < 200)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 30;
   }
}


