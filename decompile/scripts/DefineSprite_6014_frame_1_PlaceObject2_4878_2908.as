//! status=pending
onClipEvent(enterFrame){
   if(_root.save.arenaZone == _root.challengeZone && _root.challengeDuration > 0)
   {
      fr = 2;
      _alpha = 90;
      pctApproach = _root.challengeDuration / _root.challengeMaxDuration * 100;
      if(pctApproach < 0)
      {
         pctApproach = 0;
      }
      else if(pctApproach > 100)
      {
         pctApproach = 100;
      }
      timeBar._xscale = pctApproach;
      timeText.text = _root.convertSec(_root.challengeDuration);
   }
   else
   {
      if(_root.save.arenaZone != _root.challengeZone)
      {
         _root.challengeZone = -1;
         _root.challengeKill = 0;
         if(_root.challengeDuration > -60)
         {
            _root.challengeDuration = -60;
         }
      }
      if(_root.save.inventorySubtype[_root.save.arenaWeapon] == "Mining Tool" && (_root.save.arenaZone >= 1 && _root.save.arenaZone <= 13 && _root.save.arenaZone != 5 && _root.save.arenaZone != 7))
      {
         _alpha = 0;
      }
      else if(_root.areaSpawnReduce > 0)
      {
         fr = 1;
         _alpha = 90;
         maxApproach = _root.areaSpawn;
         if(_root.save.arenaZone >= 62 && _root.save.arenaZone <= 67 && _root.areaFairyPower == true)
         {
            maxApproach *= 0.4;
         }
         curApproach = _root.house.arena.enemy.approach;
         if(curApproach == Infinity)
         {
            curApproach = 0;
         }
         curCompensate = _root.house.arena.enemy.approachCompensation;
         if(_root.save.arenaZone >= 62 && _root.save.arenaZone <= 67 && _root.areaFairyPower == true)
         {
            curCompensate *= 0.4;
         }
         pctApproach = (1 - curApproach / maxApproach) * 100;
         if(pctApproach < 0)
         {
            pctApproach = 0;
         }
         else if(pctApproach > 100)
         {
            pctApproach = 100;
         }
         pctCompensate = curCompensate / maxApproach * 100;
         if(pctCompensate < 0)
         {
            pctCompensate = 0;
         }
         else if(pctCompensate > 100)
         {
            pctCompensate = 100;
         }
         adjMaxApproach = maxApproach / (_root.spawnSpeed / 100);
         if(_root.house.arena.enemy.enemyID != 0)
         {
            adjApproach = (maxApproach - curCompensate) / (_root.spawnSpeed / 100);
         }
         else
         {
            adjApproach = curApproach / (_root.spawnSpeed / 100);
         }
         tmpApproach = Math.floor(adjApproach * 100);
         if(adjApproach > adjMaxApproach)
         {
            tmpApproach = Math.floor(adjMaxApproach * 100);
         }
         if(tmpApproach % 100 < 10)
         {
            tmpApproach = Math.floor(tmpApproach / 100) + ".0" + Math.floor(tmpApproach % 100);
         }
         else
         {
            tmpApproach = Math.floor(tmpApproach / 100) + "." + Math.floor(tmpApproach % 100);
         }
         approachBar._xscale = pctApproach;
         compensateBar._xscale = pctCompensate;
         approachText.text = tmpApproach;
      }
      else
      {
         _alpha = 0;
      }
   }
   if(_currentframe != fr)
   {
      gotoAndStop(fr);
   }
}


onClipEvent(load){
   _alpha = 0;
   fr = 1;
}


