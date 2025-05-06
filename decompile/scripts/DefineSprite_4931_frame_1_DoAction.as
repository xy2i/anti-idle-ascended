//! status=pending
stop();
xPos = 500;
onEnterFrame = function()
{
   if(_root.house.arena.enemy.enemyID == 0 || _root.house.arena.enemy.hp < 0 || _root.house.arena.enemy.lifespan < 1 || _root.save.featureBestiary != true || _root.save.arenaDisplayMonsterStats != true)
   {
      if(_currentframe != 2)
      {
         gotoAndStop(2);
      }
      xPos = 500;
      _X = 500;
   }
   else
   {
      if(_currentframe != 3)
      {
         gotoAndStop(3);
      }
      if(xPos > 370)
      {
         xPos -= 26;
         _X = xPos;
      }
      nameText.text = _root.house.arena.enemy.name;
      hpText.text = _root.withComma(_root.house.arena.enemy.hp);
      attMult = 1;
      if(_root.house.arena.enemy.weaken > 0)
      {
         attMult = (100 - _root.weakenPower) / 100;
      }
      accMult = 1;
      if(_root.house.arena.enemy.blind > 0)
      {
         accMult = (100 - _root.blindPower) / 100;
      }
      enemyHitTemp = _root.house.arena.enemy.accuracy * accMult / _root.evasion - 0.1;
      heroHitTemp = _root.accuracy / (_root.house.arena.enemy.evasion * accMult) - 0.1;
      highestEnemyAtt = Math.max(_root.house.arena.enemy.attack * attMult,_root.house.arena.enemy.rangeDamage * attMult);
      attText.text = _root.withComma(highestEnemyAtt);
      minSkillPower = Math.ceil(_root.house.arena.enemy.defense * attMult * (100 - _root.ignoreDefense) / avgDmg);
      avgDmg = (_root.minDamage + _root.maxDamage) / 2;
      chanceToBeHit = Math.floor(_root.house.arena.getEnemyHitChance() * 100);
      chanceToHitEnemy = Math.floor(_root.house.arena.getPlayerHitChance() * 100);
      if(_root.save.arenaDisplayPercentage == true)
      {
         defText.text = _root.withComma(minSkillPower) + "%";
         accText.text = _root.withComma(chanceToBeHit) + "%";
         evaText.text = _root.withComma(100 - chanceToHitEnemy) + "%";
      }
      else
      {
         defText.text = _root.withComma(_root.house.arena.enemy.defense * attMult);
         accText.text = _root.withComma(_root.house.arena.enemy.accuracy * accMult);
         evaText.text = _root.withComma(_root.house.arena.enemy.evasion * accMult);
      }
   }
   if(highestEnemyAtt > _root.damageResist * 1.4)
   {
      attText.textColor = 16711680;
   }
   else if(highestEnemyAtt > _root.damageResist * 1.1)
   {
      attText.textColor = 16750848;
   }
   else if(highestEnemyAtt > _root.damageResist * 0.8)
   {
      attText.textColor = 16776960;
   }
   else
   {
      attText.textColor = 16777215;
   }
   if(minSkillPower > 1000)
   {
      defText.textColor = 16711680;
   }
   else if(minSkillPower > 300)
   {
      defText.textColor = 16750848;
   }
   else if(minSkillPower > 100)
   {
      defText.textColor = 16776960;
   }
   else
   {
      defText.textColor = 16777215;
   }
   if(enemyHitTemp > 0.9)
   {
      accText.textColor = 10158335;
   }
   else if(enemyHitTemp > 0.5)
   {
      accText.textColor = 16711680;
   }
   else if(enemyHitTemp > 0.3)
   {
      accText.textColor = 16750848;
   }
   else if(enemyHitTemp > 0.1)
   {
      accText.textColor = 16776960;
   }
   else if(enemyHitTemp < 0.1)
   {
      accText.textColor = 39680;
   }
   else if(enemyHitTemp < 0.03333)
   {
      accText.textColor = 65280;
   }
   else
   {
      accText.textColor = 16777215;
   }
   if(heroHitTemp < 0.12)
   {
      evaText.textColor = 10158335;
   }
   else if(heroHitTemp < 0.6)
   {
      evaText.textColor = 16711680;
   }
   else if(heroHitTemp < 0.8)
   {
      evaText.textColor = 16750848;
   }
   else if(heroHitTemp < 1)
   {
      evaText.textColor = 16776960;
   }
   else if(heroHitTemp > 1)
   {
      evaText.textColor = 39680;
   }
   else if(heroHitTemp > 1.7)
   {
      evaText.textColor = 65280;
   }
   else
   {
      evaText.textColor = 16777215;
   }
};
