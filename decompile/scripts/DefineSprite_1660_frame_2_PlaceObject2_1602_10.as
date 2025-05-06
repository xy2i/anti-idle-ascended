//! status=pending
on(release){
   _root.fcg_opponentlevel = 5;
   _root.save.fcgLastDiff = 5;
   _root.enemy_randomdeck = false;
   _root.fcg_challenged = true;
   if(Math.random() < 5 / _root.fcg_challengerlv)
   {
      _root.enemy_randomdeck = true;
   }
   if(Math.random() < 10 / _root.fcg_challengerlv)
   {
      _parent._parent.enemy_deck = 70 + random(97);
   }
   else
   {
      _parent._parent.enemy_deck = 70 + random(167);
   }
   _parent._parent.gotoAndStop(3);
}


