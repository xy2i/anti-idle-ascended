//! status=pending
onClipEvent(enterFrame){
   if(_root.save.apocSecretKill >= 200)
   {
      xLoc -= 100 / _root.fps;
   }
   _X = Math.floor(xLoc / 5) * 5;
   if(_X < 80)
   {
      _root.house.arena.takeDamage(99999999999,"Cannot Dodge");
   }
}


onClipEvent(load){
   xLoc = 600;
}


