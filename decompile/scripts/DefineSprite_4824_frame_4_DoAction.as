//! status=pending
chaosHealth = 0;
chaosAttack = 0;
chaosSpecial = 0;
attackDelay = 40;
_root.specInfinity = 0;
_root.specPierce = 0;
_root.specPolearm = 0;
_root.specTrueshot = 0;
_root.specSphere = 0;
_root.specDispel = 0;
_root.specGlory = 0;
_root.spiritBreak = 0;
onEnterFrame = function()
{
   tempSpeed = _root.fps;
   _root.arenaDelay = 1;
   if(_root.house.arena.enemy.enemyID != 0)
   {
      tempSpeed = 40;
   }
   if(chaosHealth < 100)
   {
      chaosHealth += 2 / tempSpeed;
   }
   if(chaosAttack > 0)
   {
      chaosAttack -= 5 / tempSpeed;
   }
   if(chaosHealth > 100)
   {
      chaosHealth = 100;
   }
   if(chaosAttack > 100)
   {
      chaosAttack = 100;
   }
   if(chaosSpecial > 100)
   {
      chaosSpecial = 100;
   }
   if(chaosHealth < 0)
   {
      chaosHealth = 0;
   }
   if(chaosAttack < 0)
   {
      chaosAttack = 0;
   }
   if(chaosSpecial < 0)
   {
      chaosSpecial = 0;
   }
   if(_root.save.arenaZone == 52 || _root.save.arenaZone == 20 || _root.save.arenaZone == 56)
   {
      chaosAttack = 0;
   }
   if(_root.save.arenaZone != 24)
   {
      if(_root.house.arena.enemy.enemyID == 0 && _root.save.arenaHealth > 0 && (_root.save.arenaZone < 31 || _root.save.arenaZone > 43))
      {
         _root.save.arenaHealth = _root.maxHealth;
      }
      else if(_root.save.arenaHealth < _root.maxHealth && _root.save.arenaHealth > 0 && chaosHealth >= 1)
      {
         if(_root.save.arenaZone >= 31 && _root.save.arenaZone <= 43)
         {
            _root.save.arenaHealth += 5;
         }
         else
         {
            _root.save.arenaHealth += Math.floor(_root.maxHealth / 25);
         }
         chaosHealth -= 2;
      }
   }
   attackDelay -= 1;
   if(attackDelay <= 0)
   {
      if(_root.house.arena.enemy.enemyID != 0)
      {
         if(_root.house.arena.enemy.lifespan > 2 && chaosSpecial >= 100)
         {
            chaosSpecial -= 100;
            attackDelay = 10;
            _root.save.arenaRage = 100;
            damageMult = 1;
            if(_root.save.permaBanPenalty[15] == 3)
            {
               damageMult = 1.25;
            }
            else if(_root.save.permaBanPenalty[15] == 2)
            {
               damageMult = 1.15;
            }
            else if(_root.save.permaBanPenalty[15] == 1)
            {
               damageMult = 1.1;
            }
            _root.house.arena.dealDamage(50000 * damageMult,8,"Roundhouse Kick");
            if(Math.random() < _root.doubleHit / 100)
            {
               _root.house.arena.dealDamage(50000 * damageMult,0,"Double Hit");
            }
         }
         else
         {
            chaosAttack += 2;
            if(chaosAttack > 100)
            {
               chaosAttack = 100;
            }
            chaosSpecial += 0.5;
            if(chaosSpecial > 100)
            {
               chaosSpecial = 100;
            }
            attackDelay = 4;
            if(_root.house.arena.enemy.lifespan > 2)
            {
               attackDelay = 3;
            }
            if(_root.house.arena.enemy.lifespan > 4)
            {
               attackDelay = 2;
            }
            damageMult = 1;
            if(_root.save.permaBanPenalty[15] == 3)
            {
               damageMult = 1.25;
            }
            else if(_root.save.permaBanPenalty[15] == 2)
            {
               damageMult = 1.15;
            }
            else if(_root.save.permaBanPenalty[15] == 1)
            {
               damageMult = 1.1;
            }
            _root.house.arena.dealDamage(Math.ceil((600 + chaosAttack * 6) * damageMult),0,"");
            if(Math.random() < _root.doubleHit / 100)
            {
               _root.house.arena.dealDamage(Math.ceil((600 + chaosAttack * 6) * damageMult),0,"Double Hit");
            }
         }
      }
   }
   if(chaosHealth > 100)
   {
      chaosHealth = 100;
   }
   if(chaosAttack > 100)
   {
      chaosAttack = 100;
   }
   if(chaosSpecial > 100)
   {
      chaosSpecial = 100;
   }
   if(chaosHealth < 0)
   {
      chaosHealth = 0;
   }
   if(chaosAttack < 0)
   {
      chaosAttack = 0;
   }
   if(chaosSpecial < 0)
   {
      chaosSpecial = 0;
   }
};
