//! status=pending
edTime = 0;
onEnterFrame = function()
{
   if(_root.edClear == true)
   {
      msDisp = Math.floor(edTime * 100) % 100;
      if(_root.save.raidEndlessSpeedrun > Math.floor(edTime))
      {
         _root.save.raidEndlessSpeedrun = Math.floor(edTime);
      }
      if(_root.save.raidEndlessSpeedrunHC > Math.floor(edTime) && _root.save.arenaHardcore == true)
      {
         _root.save.raidEndlessSpeedrunHC = Math.floor(edTime);
      }
      if(msDisp < 10)
      {
         msDisp = "0" + msDisp;
      }
      timeText.text = _root.convertSecFull(edTime) + "." + msDisp;
      timeText.textColor = 16776960;
   }
   else if(_root.house.arena.enemy.enemyID == 0)
   {
      edTime += 1 / _root.fps;
      msDisp = Math.floor(edTime * 100) % 100;
      if(msDisp < 10)
      {
         msDisp = "0" + msDisp;
      }
      timeText.text = _root.convertSecFull(edTime) + "." + msDisp;
      timeText.textColor = 9861270;
   }
   else if(_root.house.arena.enemy.lifespan == 0 || _root.turnBased == false || _root.arenaDelay > -1 || _root.arenaStun > 0)
   {
      edTime += 0.025;
      msDisp = Math.floor(_root.house.arena.enemy.lifespan * 100) % 100;
      if(msDisp < 10)
      {
         msDisp = "0" + msDisp;
      }
      timeText.text = _root.convertSecFull(_root.house.arena.enemy.lifespan) + "." + msDisp;
      if(_root.house.arena.enemy.lifespan >= 300)
      {
         timeText.textColor = 16425120;
      }
      else if(_root.house.arena.enemy.lifespan >= 180)
      {
         timeText.textColor = 16435360;
      }
      else if(_root.house.arena.enemy.lifespan >= 180)
      {
         timeText.textColor = 16448160;
      }
      else if(_root.house.arena.enemy.lifespan >= 30)
      {
         timeText.textColor = 13171360;
      }
      else
      {
         timeText.textColor = 10549920;
      }
   }
};
