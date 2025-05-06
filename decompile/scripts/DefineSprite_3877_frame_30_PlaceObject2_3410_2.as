//! status=pending
onClipEvent(enterFrame){
   if(_root.house.arena.enemy.enemyID == 0 && timeLeft <= baseTime)
   {
      timeLeft = 0;
   }
}


onClipEvent(load){
   timeLeft = 370;
   if(_root.save.arenaHardcore == true)
   {
      timeLeft += 45;
   }
   if(_root.worstMoon == true)
   {
      timeLeft += 60;
   }
   if(_root.apocalypse == true)
   {
      timeLeft += 15;
   }
   baseTime = timeLeft - 11;
   autoKick = true;
   destination = 46;
}


