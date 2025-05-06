//! status=pending
onEnterFrame = function()
{
   if(_root.house.arena.enemy.enemyID == 0)
   {
      timeLeft -= 1 / _root.fps;
   }
   else if(_root.house.arena.enemy.lifespan == 0 || _root.turnBased == false || _root.arenaDelay > -1 || _root.arenaStun > 0)
   {
      timeLeft -= 0.025;
   }
   timeText.text = _root.convertSec(timeLeft);
   _root.raidTimeLeft = timeLeft;
   if(timeLeft <= 0)
   {
      timeLeft = 0;
      if(autoKick == true || _root.house.arena.enemy.enemyID == 0)
      {
         if(_root.save.arenaZone == 20)
         {
            if(_root.save.raidPyramid < _root.raidDamage)
            {
               _root.save.raidPyramid = _root.raidDamage;
            }
            if(_root.raidBonus == 0)
            {
               _root.save.nightmare = 1337;
            }
            if(_root.raidBonus > 0)
            {
               bonusExp = Math.floor(Math.sqrt(_root.raidDamage * _root.raidBonus) * 1.337) * 200 + 20000;
               if(_root.raidBonus < 5)
               {
                  bonusExp = 5000 * _root.raidBonus;
               }
               if(bonusExp > _root.arenaReqExp)
               {
                  bonusExp = _root.arenaReqExp;
               }
               if(bonusExp > 20000000)
               {
                  bonusExp = 20000000;
               }
               _root.dispNews(66,"Raid finished! (+" + _root.withComma(bonusExp) + " Arena EXP)");
               _root.save.arenaExp += bonusExp;
               tempRank = Math.floor(_root.save.arenaLevel / 10) * 10 - 4;
               if(tempRank < 6)
               {
                  tempRank = 6;
               }
               if(tempRank > 26 + _root.raidBonus * 20)
               {
                  tempRank = 26 + _root.raidBonus * 20;
               }
               if(_root.raidBonus <= 20)
               {
                  if(_root.saveid != 21)
                  {
                     if(Math.random() < 0.5)
                     {
                        _root.getArenaAccessory(tempRank,"Earring",12,_root.raidBonus * 10,_root.raidBonus,_root.raidBonus * 10,_root.raidBonus * 5,_root.raidBonus * 5,_root.raidBonus * 5,1,0,1,0,_root.raidBonus,_root.raidBonus * 100 - 199,"Random","Random","",0,Infinity,true,false,true,false,_root.raidBonus,"Revolution Earrings","A pair of earrings awarded for dealing " + _root.withComma(_root.raidDamage) + " damage in Epic Pyramid Battle.",false);
                     }
                     else
                     {
                        _root.getArenaWeapon(tempRank,"Bow",185,true,60 + _root.raidBonus * 40,6 + _root.raidBonus,50 + _root.raidBonus * 10,25 + _root.raidBonus * 5,25 + _root.raidBonus * 5,0,_root.raidBonus * 20 + 6,1600000,1,0,Math.min(_root.raidBonus,5),_root.raidBonus * 100 - 199,"Spawn Rate","Ignore Defense","Random",0,Infinity,true,true,true,false,false,_root.raidBonus,"Revolution Pyrabow","A weapon awarded for dealing " + _root.withComma(_root.raidDamage) + " damage in Epic Pyramid Battle.");
                     }
                  }
               }
            }
         }
         _root.arenaCombo = 0;
         _root.house.arena.enemy.enemyID = 0;
         _root.house.arena.enemy.approach = 10;
         if(_root.save.arenaHealth > 0 && _root.save.arenaZone != 0)
         {
            if(destination == 50 || destination == 59)
            {
               _root.save.arenaCorruptionEntry -= 1;
            }
            _root.save.arenaZone = destination;
            _root.save.arenaZoneFound[destination] = 1;
         }
         else
         {
            _root.save.arenaZone = 0;
         }
      }
   }
};
