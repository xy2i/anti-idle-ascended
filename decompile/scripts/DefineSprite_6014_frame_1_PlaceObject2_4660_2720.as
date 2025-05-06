//! status=pending
onClipEvent(enterFrame){
   if(enemyIn._currentframe != enemyID && enemyID != 0)
   {
      enemyIn.gotoAndStop(enemyID);
      if(_root.save.arenaZone >= 85 && _root.save.arenaZone <= 92 || _root.save.arenaZone == 54 && _root.dungeonChestOpen >= 16)
      {
         gotoAndStop(7);
      }
      else if(ultra3 == true || _root.save.arenaZone == 81)
      {
         gotoAndStop(6);
      }
      else if(ultra2 == true)
      {
         gotoAndStop(5);
      }
      else if(ultra1 == true)
      {
         gotoAndStop(4);
      }
      else if(_root.dungeonDiff == 3 && (_root.save.arenaZone == 53 || _root.save.arenaZone == 54))
      {
         gotoAndStop(4);
      }
      else if(epic == true)
      {
         gotoAndStop(3);
      }
      else if(rare == true)
      {
         gotoAndStop(2);
      }
      else
      {
         gotoAndStop(1);
      }
   }
   else if(enemyID == 0)
   {
      enemyIn.gotoAndStop(1);
      poison = 0;
      weaken = 0;
      blind = 0;
      stun = 0;
      slow = 0;
      curSpeed = 0;
   }
   if(_parent.kommanderDialog._currentframe == 1)
   {
      approach -= 1 / _root.fps * (_root.spawnSpeed / 100);
   }
   if(approach <= 0 && enemyID == 0)
   {
      selectMonster();
   }
   if(enemyID != 0)
   {
      if(lifespan == 0 || _root.turnBased == false || _root.arenaDelay > -1 || _root.arenaStun > 0)
      {
         lifespan += 0.025;
         approachCompensation += _root.areaSpawnReduce * 1 / 4000;
         if(_root.fps < 40)
         {
            approachCompensation += 1 / _root.fps - 0.025;
         }
         if(approachCompensation > _root.areaSpawnReduce * _root.areaSpawn / 100)
         {
            approachCompensation = _root.areaSpawnReduce * _root.areaSpawn / 100;
         }
         magImmune -= 1;
         if(poison > -0.5 && poison <= 0)
         {
            poison -= 0.025;
         }
         if(weaken > -0.5)
         {
            weaken -= 0.025;
         }
         if(blind > -0.5)
         {
            blind -= 0.025;
         }
         if(stun > -0.5)
         {
            stun -= 0.025;
         }
         if(slow > -0.5)
         {
            slow -= 0.025;
         }
         curSpeed += speed / 10;
         if(_root.save.arenaZone == 82 && _root.save.arenaEvent == 3)
         {
            curSpeed += speed / 5;
         }
         if(curSpeed > speed)
         {
            curSpeed = speed;
         }
         if(slow > 0 && curSpeed > speed * 0.5)
         {
            curSpeed = speed * 0.5;
         }
         if(_root.save.inventoryRange[_root.save.arenaWeapon] == false)
         {
            if(curX > 80 + _root.wpRange && curX > 110)
            {
               curSpeed += speed / 10;
            }
            if(_root.monsterMagnet == true)
            {
               if(curX > 80 + _root.wpRange || curX > 200)
               {
                  curSpeed += speed / 5;
               }
               else
               {
                  curSpeed -= speed / 20;
               }
            }
         }
         else if(_root.monsterMagnet == true)
         {
            if(curX > 200)
            {
               curSpeed += speed / 4;
            }
            else
            {
               curSpeed -= speed / 20;
            }
         }
         if(isNaN(curSpeed))
         {
            curSpeed = 0;
         }
         if(stun <= 0 || curSpeed < 0 || curX > 80 + _root.wpRange && _root.save.inventoryRange[_root.save.arenaWeapon] == false)
         {
            curX -= curSpeed;
         }
         if(curX > 500 - _width)
         {
            curX = 500 - _width;
         }
         if(hp > maxhp)
         {
            hp = maxhp;
         }
         if(ultra == true)
         {
            ultraCount += 1;
            if(ultraCount == 1 || ultraCount == 3 || ultraCount == 5)
            {
               _parent.takeDamage(100000,"Cannot Dodge");
            }
            if(ultraCount % 36000 == 0 && ultra3 == true)
            {
               _parent.takeDamage(999999999,"Cannot Dodge");
               rangedAttack._alpha = 100;
               rangedAttack.gotoAndStop(9);
            }
            else if(ultraCount % 36000 == 2 && ultra3 == true)
            {
               _parent.takeDamage(999999999,"Cannot Dodge");
               rangedAttack._alpha = 100;
               rangedAttack.gotoAndStop(9);
            }
            else if(ultraCount % 1000 == 0 && ultra3 == true)
            {
               _parent.takeDamage(19999998,"Ignore Defense");
               rangedAttack._alpha = 100;
               rangedAttack.gotoAndStop(9);
            }
            else if(ultraCount % 2500 == 0 && ultra3 == true)
            {
               _parent.takeDamage(123456789,"Cannot Dodge");
               rangedAttack._alpha = 100;
               rangedAttack.gotoAndStop(10);
            }
            else if(ultraCount % 2500 == 0 && ultra2 == true)
            {
               _parent.takeDamage(12345678,"Cannot Dodge");
               rangedAttack._alpha = 100;
               rangedAttack.gotoAndStop(10);
            }
            else if(ultraCount % 9000 == 0)
            {
               _parent.takeDamage(9999999,"Ignore Defense");
               _root.arenaStun += 1;
               _root.arenaPotionBlock += 1;
               rangedAttack._alpha = 100;
               rangedAttack.gotoAndStop(9);
            }
            else if(ultraCount % 9000 == 2 && (ultra2 == true || ultra3 == true))
            {
               _parent.takeDamage(9999999,"Ignore Defense");
               rangedAttack._alpha = 100;
               rangedAttack.gotoAndStop(9);
            }
            else if(ultraCount % 1337 == 0 && ultra3 == true)
            {
               _parent.takeDamage(12345678,"Ignore Defense");
               _root.arenaPoison += 15;
               _root.arenaWeaken += 15;
               _root.arenaBlind += 15;
               _root.arenaSlow += 15;
               _root.arenaStun += 3;
               _root.arenaPotionBlock += 3;
               _root.arenaZombify += 3;
               rangedAttack._alpha = 100;
               rangedAttack.gotoAndStop(9);
            }
            else if(ultraCount % 1337 == 0 && ultra2 == true)
            {
               _parent.takeDamage(12345678,"Ignore Defense");
               _root.arenaPoison += 15;
               _root.arenaWeaken += 15;
               _root.arenaBlind += 15;
               _root.arenaSlow += 15;
               rangedAttack._alpha = 100;
               rangedAttack.gotoAndStop(9);
            }
            else if(ultraCount % 1337 == 0 && ultra1 == true)
            {
               _parent.takeDamage(1234567,"Ignore Defense");
               _root.arenaPoison += 15;
               _root.arenaBlind += 15;
               _root.arenaSlow += 15;
               rangedAttack._alpha = 100;
               rangedAttack.gotoAndStop(9);
            }
            else if(ultraCount % 400 == 0)
            {
               _parent.takeDamage(22500 * ultraCount,"Cannot Dodge");
               rangedAttack._alpha = 100;
               rangedAttack.gotoAndStop(10);
            }
            else if(ultraCount % 100 == 0 && ultra3 == true)
            {
               _parent.takeDamage(17500 * ultraCount,"Cannot Dodge");
               rangedAttack._alpha = 100;
               rangedAttack.gotoAndStop(10);
            }
         }
         if(rangeDamage > 0)
         {
            if((curSpeed > 0 || speed == 0) && slow <= 0 && stun <= 0 && _root.specDispel <= 0)
            {
               rangeCount += 1;
               if(_root.worstMoon == true)
               {
                  rangeCount += 1;
               }
               if(_root.apocalypse == true)
               {
                  rangeCount += 1;
               }
               if(_root.save.arenaZone == 78 && lifespan >= 300)
               {
                  rangeCount += 1;
               }
               if(_root.challengeZone == _root.save.arenaZone && _root.challengeDuration > 0)
               {
                  rangeCount += 1;
               }
            }
            rangeDel = 30 + hp / maxhp * 50;
            if(_root.save.arenaRing == 19)
            {
               rangeDel /= 0.7;
            }
            if(rangeCount > rangeDel && hp < maxhp && hp > 0)
            {
               rangeCount = 0;
               if(Math.random() < _root.save.arenaSkill[52] * 0.01 && _root.save.arenaZone != 24 && reflectCombo <= 1)
               {
                  reflectCombo += 1;
                  _parent.takeDamage((0.8 + Math.random() * 0.2) * (_root.save.arenaSkill[52] * 0.02) * rangeDamage,"Heal");
               }
               else
               {
                  reflectCombo = 0;
                  _parent.takeDamage((0.7 + Math.random() * 0.2) * rangeDamage,"Magic");
               }
               rangeDamage = Math.floor(rangeDamage * 1.002);
               accuracy = Math.floor(accuracy * 1.002);
               if(tankMode == true)
               {
                  rangeDamage = Math.floor(rangeDamage * 1.003);
                  accuracy = Math.floor(accuracy * 1.003);
               }
               if(_root.save.arenaZone == 78)
               {
                  if(lifespan >= 300)
                  {
                     rangeDamage = Math.floor(rangeDamage * 1.221);
                     accuracy = Math.floor(accuracy * 1.221);
                  }
                  else if(lifespan >= 180)
                  {
                     rangeDamage = Math.floor(rangeDamage * 1.061);
                     accuracy = Math.floor(accuracy * 1.061);
                  }
                  else if(lifespan >= 90)
                  {
                     rangeDamage = Math.floor(rangeDamage * 1.02);
                     accuracy = Math.floor(accuracy * 1.02);
                  }
                  else if(lifespan >= 30)
                  {
                     rangeDamage = Math.floor(rangeDamage * 1.006);
                     accuracy = Math.floor(accuracy * 1.006);
                  }
               }
               else if(_root.save.arenaZone == 52 || _root.save.arenaZone == 68)
               {
                  if(lifespan >= 100)
                  {
                     rangeDamage = Math.floor(rangeDamage * 1.221);
                     accuracy = Math.floor(accuracy * 1.221);
                  }
                  else if(lifespan >= 30)
                  {
                     rangeDamage = Math.floor(rangeDamage * 1.061);
                     accuracy = Math.floor(accuracy * 1.061);
                  }
                  else if(lifespan >= 10)
                  {
                     rangeDamage = Math.floor(rangeDamage * 1.02);
                     accuracy = Math.floor(accuracy * 1.02);
                  }
                  else if(lifespan >= 3)
                  {
                     rangeDamage = Math.floor(rangeDamage * 1.006);
                     accuracy = Math.floor(accuracy * 1.006);
                  }
               }
               if(_root.magicReflect > 0)
               {
                  _root.house.arena.dealDamage(_root.magicReflect,1,"Reflect");
               }
            }
         }
         if(Math.random() < 0.01 && hp < maxhp && heal > 0)
         {
            toHeal = Math.floor((0.8 + Math.random()) * heal);
            if(toHeal > maxhp - hp)
            {
               toHeal = maxhp - hp;
            }
            hp += toHeal;
            _parent.showDamage(toHeal,39423,_X,65);
         }
         if(rampagePct > 0 && hp / maxhp * 100 < rampagePct && hp > 0 && rampage == false)
         {
            rampage = true;
            speed *= 1.2;
            attack = Math.floor(attack * 1.5);
            rangeDamage = Math.floor(rangeDamage * 1.5);
            defense = Math.floor(defense * 1.5);
            accuracy = Math.floor(accuracy * 1.5);
            evasion = Math.floor(evasion * 1.5);
            _parent.showDamage("RAMPAGE!",16711680,_X,65);
         }
         if(rampage2 == false && _root.save.arenaZone == 82)
         {
            if(boss == true && lifespan >= 180)
            {
               rampage2 = true;
               speed *= 1.5;
               attack = Math.floor(attack * 150);
               rangeDamage = Math.floor(rangeDamage * 150);
               defense = Math.floor(defense * 150);
               accuracy = Math.floor(accuracy * 150);
               evasion = Math.floor(evasion * 150);
               _parent.showDamage("RAMPAGE!!!1!",16711680,_X,65);
            }
            else if(boss != true && lifespan >= 120)
            {
               rampage2 = true;
               speed *= 1.5;
               attack = Math.floor(attack * 150);
               rangeDamage = Math.floor(rangeDamage * 150);
               defense = Math.floor(defense * 150);
               accuracy = Math.floor(accuracy * 150);
               evasion = Math.floor(evasion * 150);
               _parent.showDamage("RAMPAGE!!!1!",16711680,_X,65);
            }
         }
         if(rampage2 == false && _root.save.arenaZone == 78 && lifespan >= 300)
         {
            rampage2 = true;
            speed *= 1.3;
         }
         explodeCount += 1;
         if(explode > 0 && explodeCount >= explode * 40 && hp > 0)
         {
            _parent.takeDamage(explodeDamage,"Explode");
            partKilled = (maxhp - hp) / maxhp;
            if(partKilled < 0.2)
            {
               partKilled = 0.2;
            }
            exp = Math.floor(exp * partKilled);
            coin = Math.floor(coin * partKilled);
            pixel = Math.floor(pixel * partKilled);
            hp = 0;
            _parent.showDamage("BOOM!!",16711680,_X,65);
            if(_root.save.arenaZone == 81)
            {
               _root.save.arenaZone = 80;
               _parent.kommanderDialog.gotoAndStop(10);
            }
         }
         if(skill == "Self-Destruct" && hp < maxhp && hp > 0)
         {
            _parent.takeDamage(Math.floor((0.9 + Math.random() * 0.1) * attack * skillLevel),"Explode");
            partKilled = (maxhp - hp) / maxhp;
            if(partKilled < 0.2)
            {
               partKilled = 0.2;
            }
            exp = Math.floor(exp * partKilled);
            coin = Math.floor(coin * partKilled);
            pixel = Math.floor(pixel * partKilled);
            hp = 0;
            _parent.showDamage("BOOM!!",16711680,_X,65);
         }
         if(poison > 0)
         {
            poisonDelay += 1;
            if(poisonDelay >= 20)
            {
               poisonDelay = 0;
               poison -= 1;
               _root.house.arena.dealDamage(_root.poisonDamage,0,"Poison");
            }
         }
      }
      if(_root.save.inventoryRange[_root.save.arenaWeapon] == false && _root.meleeHit != true)
      {
         meleeHitTemp = false;
         if(_root.spiritBreak > 0)
         {
            meleeHitTemp = true;
         }
         if(_root.save.inventoryName[_root.save.arenaWeapon] != "Ultimate Weapon" && _root.save.inventoryName[_root.save.arenaWeapon] != "Reincarnation Weapon")
         {
            if(this.hitTest(_parent.hero.sword))
            {
               meleeHitTemp = true;
            }
         }
         else if(_X <= 205)
         {
            meleeHitTemp = true;
         }
         if(meleeHitTemp == true)
         {
            _root.meleeHit = true;
            _root.arenaCombo += 1;
            if(_root.arenaSkillSpec != "Multislash")
            {
               multiSlash = 0;
            }
            else if(_root.arenaSkillSpec == "Multislash")
            {
               multiSlash += 1;
               if(multiSlash >= 3)
               {
                  _root.house.arena.dealDamage(_root.arenaSkillPower,_root.arenaKnockBack,"");
                  _root.house.arena.dealDamage(_root.arenaSkillPower,_root.arenaKnockBack,"Quick Attack");
                  _root.house.arena.dealDamage(_root.arenaSkillPower,_root.arenaKnockBack,"Quick Attack 2");
                  _root.house.arena.dealDamage(_root.arenaSkillPower,_root.arenaKnockBack,"Quick Attack 3");
                  _root.house.arena.dealDamage(_root.arenaSkillPower,_root.arenaKnockBack,"Quick Attack 4");
                  if(_root.chargeC < 4 && multiSlash % 2 == 0)
                  {
                     _root.chargeC += 1;
                  }
               }
               else if(multiSlash == 2)
               {
                  _root.house.arena.dealDamage(_root.arenaSkillPower,_root.arenaKnockBack,"");
                  _root.house.arena.dealDamage(_root.arenaSkillPower,_root.arenaKnockBack,"Quick Attack");
                  _root.house.arena.dealDamage(_root.arenaSkillPower,_root.arenaKnockBack,"Quick Attack 2");
                  _root.house.arena.dealDamage(_root.arenaSkillPower,_root.arenaKnockBack,"Quick Attack 3");
               }
               else
               {
                  _root.house.arena.dealDamage(_root.arenaSkillPower,_root.arenaKnockBack,"");
                  _root.house.arena.dealDamage(_root.arenaSkillPower,_root.arenaKnockBack,"Quick Attack");
                  _root.house.arena.dealDamage(_root.arenaSkillPower,_root.arenaKnockBack,"Quick Attack 2");
               }
            }
            if(_root.arenaSkillSpec == "Magnetic Stab")
            {
               kbChance = 0.05 + _root.arenaSkillSpecLevel * 0.005;
               if(boss == true || ultra == true)
               {
                  kbChance *= 0.5;
               }
               if(Math.random() < kbChance && speed > 0 && magImmune <= 0)
               {
                  _root.house.arena.dealDamage(_root.arenaSkillPower * 7,_root.arenaKnockBack,"Magnetic");
               }
               else
               {
                  _root.house.arena.dealDamage(_root.arenaSkillPower,0);
               }
            }
            else if(_root.arenaSkillSpec == "Pierce")
            {
               _root.house.arena.dealDamage(_root.arenaSkillPower,_root.arenaKnockBack,"Pierce");
            }
            else if(_root.arenaSkillSpec == "Threaten")
            {
               _root.house.arena.dealDamage(_root.arenaSkillPower,_root.arenaKnockBack,"Threaten");
            }
            else if(_root.arenaSkillSpec == "Silence Hammer")
            {
               if(skillLevel >= 0 && boss != true && ultra != true)
               {
                  rampagePct = 0;
                  explodeDamage = 1;
                  skill = "None";
                  skillLevel = -1;
                  rangeDamage = 0;
                  showDamage("SILENCED",16777215,_X + _width / 2,40);
                  _root.house.arena.dealDamage(_root.arenaSkillPower,_root.arenaKnockBack);
               }
               else
               {
                  _root.house.arena.dealDamage(_root.arenaSkillPower * 3,_root.arenaKnockBack);
               }
            }
            else if(_root.arenaSkillSpec != "Multislash")
            {
               _root.house.arena.dealDamage(_root.arenaSkillPower,_root.arenaKnockBack);
            }
            if(_root.arenaQuickAttack == true)
            {
               _root.house.arena.dealDamage(_root.arenaSkillPower,_root.arenaKnockBack,"Quick Attack");
               _root.house.arena.dealDamage(_root.arenaSkillPower,_root.arenaKnockBack,"Quick Attack 2");
               if(_root.save.arenaSkill[6] >= 1)
               {
                  _root.house.arena.dealDamage(_root.arenaSkillPower,_root.arenaKnockBack,"Quick Attack 3");
               }
               _root.arenaQuickAttack = false;
            }
            if(_root.spiritDouble > 0)
            {
               _root.house.arena.dealDamage(_root.arenaSkillPower * 2,0,"Double Hit");
            }
            else if(Math.random() < _root.doubleHit / 100)
            {
               _root.house.arena.dealDamage(_root.arenaSkillPower,0,"Double Hit");
            }
         }
      }
      if(speed == 0)
      {
         curX = 100;
         if(_root.save.arenaZone == 61)
         {
            curX = 200;
         }
         if(_root.save.arenaZone == 24 && _root.areaDefendStage == 4)
         {
            curX = 320;
         }
      }
      if(curX < 80)
      {
         if(Math.random() < _root.save.arenaSkill[66] * 0.015 && _root.save.arenaZone != 24 && absorbCombo <= 1)
         {
            absorbCombo += 1;
            _parent.takeDamage((0.8 + Math.random() * 0.2) * (_root.save.arenaSkill[66] * 0.02) * attack,"Heal");
         }
         else
         {
            absorbCombo = 0;
            _parent.takeDamage((0.8 + Math.random() * 0.2) * attack);
         }
         if(boss != true)
         {
            attack = Math.floor(attack * 1.01);
            accuracy = Math.floor(accuracy * 1.01);
            if(tankMode == true)
            {
               attack = Math.floor(attack * 1.015);
               accuracy = Math.floor(accuracy * 1.015);
            }
            if(_root.save.arenaZone == 78)
            {
               if(lifespan >= 300)
               {
                  attack = Math.floor(attack * 2.678);
                  accuracy = Math.floor(accuracy * 2.678);
               }
               else if(lifespan >= 180)
               {
                  attack = Math.floor(attack * 1.335);
                  accuracy = Math.floor(accuracy * 1.335);
               }
               else if(lifespan >= 90)
               {
                  attack = Math.floor(attack * 1.094);
                  accuracy = Math.floor(accuracy * 1.094);
               }
               else if(lifespan >= 30)
               {
                  attack = Math.floor(attack * 1.02);
                  accuracy = Math.floor(accuracy * 1.02);
               }
            }
            else if(_root.save.arenaZone == 52 || _root.save.arenaZone == 68)
            {
               if(lifespan >= 100)
               {
                  attack = Math.floor(attack * 2.678);
                  accuracy = Math.floor(accuracy * 2.678);
               }
               else if(lifespan >= 30)
               {
                  attack = Math.floor(attack * 1.335);
                  accuracy = Math.floor(accuracy * 1.335);
               }
               else if(lifespan >= 10)
               {
                  attack = Math.floor(attack * 1.094);
                  accuracy = Math.floor(accuracy * 1.094);
               }
               else if(lifespan >= 3)
               {
                  attack = Math.floor(attack * 1.02);
                  accuracy = Math.floor(accuracy * 1.02);
               }
            }
         }
         else
         {
            attack = Math.floor(attack * 1.005);
            accuracy = Math.floor(accuracy * 1.005);
            if(tankMode == true)
            {
               attack = Math.floor(attack * 1.007);
               accuracy = Math.floor(accuracy * 1.007);
            }
            if(_root.save.arenaZone == 78)
            {
               if(lifespan >= 300)
               {
                  attack = Math.floor(attack * 1.638);
                  accuracy = Math.floor(accuracy * 1.638);
               }
               else if(lifespan >= 180)
               {
                  attack = Math.floor(attack * 1.156);
                  accuracy = Math.floor(accuracy * 1.156);
               }
               else if(lifespan >= 90)
               {
                  attack = Math.floor(attack * 1.046);
                  accuracy = Math.floor(accuracy * 1.046);
               }
               else if(lifespan >= 30)
               {
                  attack = Math.floor(attack * 1.01);
                  accuracy = Math.floor(accuracy * 1.01);
               }
            }
            else if(_root.save.arenaZone == 52 || _root.save.arenaZone == 68)
            {
               if(lifespan >= 100)
               {
                  attack = Math.floor(attack * 1.638);
                  accuracy = Math.floor(accuracy * 1.638);
               }
               else if(lifespan >= 30)
               {
                  attack = Math.floor(attack * 1.156);
                  accuracy = Math.floor(accuracy * 1.156);
               }
               else if(lifespan >= 10)
               {
                  attack = Math.floor(attack * 1.046);
                  accuracy = Math.floor(accuracy * 1.046);
               }
               else if(lifespan >= 3)
               {
                  attack = Math.floor(attack * 1.01);
                  accuracy = Math.floor(accuracy * 1.01);
               }
            }
         }
         _root.house.arena.dealDamage(_root.damageReflect,0,"Reflect");
         curX = 81;
         curSpeed = -9;
      }
      if(hp <= 0)
      {
         death();
      }
      if(enemyID == 440)
      {
         curX = 100;
      }
      if(_root.save.arenaZone == 61 && enemyID != 444)
      {
         curX = 200;
      }
      _X = Math.ceil(curX / 5) * 5;
   }
}


onClipEvent(load){
   function getDiffUnob(useGOGL)
   {
      if(_root.save.arenaHardcore == true)
      {
         itemUnob += 2;
      }
      if(_root.worstMoon == true)
      {
         itemUnob += 4;
      }
      if(_root.apocalypse == true || useGOGL == true && useGOGL != undefined && _root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Good Luck")
      {
         itemUnob += 1;
      }
   }
   function getSDWeaponArrays()
   {
      if(itemToGet == 2)
      {
         itemArray = [248,"Bow",262,true,777 + itemBonusPow,14,0,77,77,0,77,7000000,0,itemBonusPow,"","","Accuracy",1000000,Infinity,false,false,false,false,false,itemUnob,"Rain Bow",""];
      }
      if(itemToGet == 3)
      {
         itemArray = [500,"Sword",240,false,1800 + itemBonusPow,14,0,15,15,20,100,70000000,-5,itemBonusPow,"Fire Element","Poison Damage","MaxMP",1000000,Infinity,true,false,true,false,false,itemUnob,"Ultimate Fire Sword",""];
      }
      if(itemToGet == 4)
      {
         itemArray = [500,"Spear",241,false,1600 + itemBonusPow,12,0,18,15,20,100,70000000,-5,itemBonusPow,"Fire Element","Poison Damage","MaxMP",1000000,Infinity,true,false,true,false,false,itemUnob,"Ultimate Fire Spear",""];
      }
      if(itemToGet == 5)
      {
         itemArray = [500,"Polearm",242,false,1650 + itemBonusPow,12,0,20,15,20,100,70000000,-5,itemBonusPow,"Fire Element","Poison Damage","MaxMP",1000000,Infinity,true,false,true,false,false,itemUnob,"Ultimate Fire Polearm",""];
      }
      if(itemToGet == 6)
      {
         itemArray = [500,"Sword",243,false,1600 + itemBonusPow,14,0,15,15,20,100,70000000,-5,itemBonusPow,"Ice Element","Weaken Effect","MaxMP",1000000,Infinity,true,false,true,false,false,itemUnob,"Ultimate Ice Sword",""];
      }
      if(itemToGet == 7)
      {
         itemArray = [500,"Spear",244,false,1400 + itemBonusPow,12,0,18,15,20,100,70000000,-5,itemBonusPow,"Ice Element","Weaken Effect","MaxMP",1000000,Infinity,true,false,true,false,false,itemUnob,"Ultimate Ice Spear",""];
      }
      if(itemToGet == 8)
      {
         itemArray = [500,"Polearm",245,false,1450 + itemBonusPow,12,0,20,15,20,100,70000000,-5,itemBonusPow,"Ice Element","Weaken Effect","MaxMP",1000000,Infinity,true,false,true,false,false,itemUnob,"Ultimate Ice Polearm",""];
      }
      if(itemToGet == 9)
      {
         itemArray = [500,"Sword",246,false,1400 + itemBonusPow,14,0,15,15,20,100,70000000,-5,itemBonusPow,"Thunder Element","Blind Effect","MaxMP",1000000,Infinity,true,false,true,false,false,itemUnob,"Ultimate Lightning Sword",""];
      }
      if(itemToGet == 10)
      {
         itemArray = [500,"Spear",247,false,1200 + itemBonusPow,12,0,18,15,20,100,70000000,-5,itemBonusPow,"Thunder Element","Blind Effect","MaxMP",1000000,Infinity,true,false,true,false,false,itemUnob,"Ultimate Lightning Spear",""];
      }
      if(itemToGet == 11)
      {
         itemArray = [500,"Polearm",248,false,1250 + itemBonusPow,12,0,20,15,20,100,70000000,-5,itemBonusPow,"Thunder Element","Blind Effect","MaxMP",1000000,Infinity,true,false,true,false,false,itemUnob,"Ultimate Lightning Polearm",""];
      }
   }
   function getElementWeaponArrays()
   {
      if(itemToGet == 12)
      {
         itemArray = [itemRank,"Staff",253,true,200 + itemRank * 2 + itemBonusPow,6,0,0,0,0,60,35000000,0,itemRank + itemBonusPow - 300,"Fire Element","","",500000,Infinity,false,false,true,false,false,itemUnob,"Epic Fire Staff","When fighting Ice-element monsters, Damage +40%"];
      }
      if(itemToGet == 13)
      {
         itemArray = [itemRank,"Staff",254,true,200 + itemRank * 2 + itemBonusPow,6,0,0,0,0,60,35000000,0,itemRank + itemBonusPow - 300,"Ice Element","","",500000,Infinity,false,false,true,false,false,itemUnob,"Epic Ice Staff","When fighting Wind-element monsters, Damage +40%"];
      }
      if(itemToGet == 14)
      {
         itemArray = [itemRank,"Staff",255,true,200 + itemRank * 2 + itemBonusPow,6,0,0,0,0,60,35000000,0,itemRank + itemBonusPow - 300,"Wind Element","","",500000,Infinity,false,false,true,false,false,itemUnob,"Epic Wind Staff","When fighting Earth-element monsters, Damage +40%"];
      }
      if(itemToGet == 15)
      {
         itemArray = [itemRank,"Staff",256,true,200 + itemRank * 2 + itemBonusPow,6,0,0,0,0,60,35000000,0,itemRank + itemBonusPow - 300,"Earth Element","","",500000,Infinity,false,false,true,false,false,itemUnob,"Epic Earth Staff","When fighting Thunder-element monsters, Damage +40%"];
      }
      if(itemToGet == 16)
      {
         itemArray = [itemRank,"Staff",257,true,200 + itemRank * 2 + itemBonusPow,6,0,0,0,0,60,35000000,0,itemRank + itemBonusPow - 300,"Thunder Element","","",500000,Infinity,false,false,true,false,false,itemUnob,"Epic Thunder Staff","When fighting Water-element monsters, Damage +40%"];
      }
      if(itemToGet == 17)
      {
         itemArray = [itemRank,"Staff",258,true,200 + itemRank * 2 + itemBonusPow,6,0,0,0,0,60,35000000,0,itemRank + itemBonusPow - 300,"Water Element","","",500000,Infinity,false,false,true,false,false,itemUnob,"Epic Water Staff","When fighting Fire-element monsters, Damage +40%"];
      }
      if(itemToGet == 18)
      {
         itemArray = [itemRank,"Wand",259,true,200 + itemRank * 2 + itemBonusPow,6,0,0,0,0,60,35000000,0,itemRank + itemBonusPow - 300,"Light Element","","",500000,Infinity,false,false,true,false,false,itemUnob,"Light Glaive","When fighting Dark-element monsters, Damage +30%"];
      }
      if(itemToGet == 19)
      {
         itemArray = [itemRank,"Wand",260,true,200 + itemRank * 2 + itemBonusPow,6,0,0,0,0,60,35000000,0,itemRank + itemBonusPow - 300,"Dark Element","","",500000,Infinity,false,false,true,false,false,itemUnob,"Dark Glaive","When fighting Light-element monsters, Damage +30%"];
      }
   }
   function getCollectorWeaponArrays()
   {
      if(itemToGet == 20)
      {
         itemArray = [98 + itemRank,"Polearm",210,false,375 + itemAttack,12 + itemSpeed,95 + itemDefense,24 + itemCrit,0 + itemDexterity,0 + itemHealth,10,1500000,itemEnhance,itemBonusPow,"Reward","Mastery","",20000,itemExpiry,false,false,false,false,false,itemUnob,"Fauchard",""];
      }
      if(itemToGet == 21)
      {
         itemArray = [108 + itemRank,"Polearm (Stab)",211,false,410 + itemAttack,12 + itemSpeed,105 + itemDefense,25 + itemCrit,0 + itemDexterity,0 + itemHealth,10,3000000,itemEnhance,itemBonusPow,"Reward","Mastery","",30000,itemExpiry,false,false,false,false,false,itemUnob,"Military Fork",""];
      }
      if(itemToGet == 22)
      {
         itemArray = [118 + itemRank,"Polearm",212,false,405 + itemAttack,12 + itemSpeed,115 + itemDefense,26 + itemCrit,0 + itemDexterity,0 + itemHealth,10,3000000,itemEnhance,itemBonusPow,"Reward","Mastery","",40000,itemExpiry,false,false,false,false,false,itemUnob,"Fauchard-Fork",""];
      }
      if(itemToGet == 23)
      {
         itemArray = [128 + itemRank,"Polearm",213,false,385 + itemAttack,13 + itemSpeed,125 + itemDefense,27 + itemCrit,0 + itemDexterity,0 + itemHealth,20,4500000,itemEnhance,itemBonusPow,"Reward","Mastery","",60000,itemExpiry,false,false,false,false,false,itemUnob,"Naginata",""];
      }
      if(itemToGet == 24)
      {
         itemArray = [133 + itemRank,"Polearm",214,false,410 + itemAttack,12 + itemSpeed,135 + itemDefense,28 + itemCrit,0 + itemDexterity,0 + itemHealth,20,4500000,itemEnhance,itemBonusPow,"Reward","Mastery","",80000,itemExpiry,false,false,false,false,false,itemUnob,"Nagimaki",""];
      }
      if(itemToGet == 25)
      {
         itemArray = [138 + itemRank,"Polearm",215,false,410 + itemAttack,14 + itemSpeed,145 + itemDefense,29 + itemCrit,0 + itemDexterity,0 + itemHealth,20,6000000,itemEnhance,itemBonusPow,"Reward","Mastery","",100000,itemExpiry,false,false,false,false,false,itemUnob,"Fukuro Yari",""];
      }
      if(itemToGet == 26)
      {
         itemArray = [143 + itemRank,"Polearm",216,false,440 + itemAttack,12 + itemSpeed,155 + itemDefense,30 + itemCrit,0 + itemDexterity,0 + itemHealth,20,6000000,itemEnhance,itemBonusPow,"Reward","Mastery","",150000,itemExpiry,false,false,false,false,false,itemUnob,"Voulge",""];
      }
      if(itemToGet == 27)
      {
         itemArray = [148 + itemRank,"Polearm",217,false,510 + itemAttack,10 + itemSpeed,165 + itemDefense,31 + itemCrit,0 + itemDexterity,0 + itemHealth,20,6000000,itemEnhance,itemBonusPow,"Reward","Mastery","",200000,itemExpiry,false,false,false,false,false,itemUnob,"Scythe",""];
      }
      if(itemToGet == 28)
      {
         itemArray = [153 + itemRank,"Polearm",218,false,485 + itemAttack,10 + itemSpeed,175 + itemDefense,32 + itemCrit,0 + itemDexterity,0 + itemHealth,30,9000000,itemEnhance,itemBonusPow,"Reward","Mastery","",250000,itemExpiry,false,false,false,false,false,itemUnob,"Bardiche",""];
      }
      if(itemToGet == 29)
      {
         itemArray = [158 + itemRank,"Polearm",219,false,510 + itemAttack,12 + itemSpeed,185 + itemDefense,33 + itemCrit,0 + itemDexterity,0 + itemHealth,30,9000000,itemEnhance,itemBonusPow,"Reward","Mastery","",300000,itemExpiry,false,false,false,false,false,itemUnob,"Poleaxe",""];
      }
      if(itemToGet == 30)
      {
         itemArray = [163 + itemRank,"Polearm",220,false,535 + itemAttack,10 + itemSpeed,195 + itemDefense,34 + itemCrit,0 + itemDexterity,0 + itemHealth,30,9000000,itemEnhance,itemBonusPow,"Reward","Mastery","",350000,itemExpiry,false,false,false,false,false,itemUnob,"Lochaber Axe",""];
      }
      if(itemToGet == 31)
      {
         itemArray = [168 + itemRank,"Polearm",221,false,560 + itemAttack,10 + itemSpeed,205 + itemDefense,35 + itemCrit,0 + itemDexterity,0 + itemHealth,30,12000000,itemEnhance,itemBonusPow,"Reward","Mastery","",400000,itemExpiry,false,false,false,false,false,itemUnob,"Bohemian Earspoon",""];
      }
      if(itemToGet == 32)
      {
         itemArray = [173 + itemRank,"Hammer",222,false,570 + itemAttack,10 + itemSpeed,215 + itemDefense,36 + itemCrit,0 + itemDexterity,0 + itemHealth,30,12000000,itemEnhance,itemBonusPow,"Reward","Mastery","",450000,itemExpiry,false,false,false,false,false,itemUnob,"Bec de Corbin",""];
      }
      if(itemToGet == 33)
      {
         itemArray = [178 + itemRank,"Polearm",223,false,615 + itemAttack,10 + itemSpeed,225 + itemDefense,37 + itemCrit,0 + itemDexterity,0 + itemHealth,30,15000000,itemEnhance,itemBonusPow,"Reward","Mastery","",500000,itemExpiry,false,false,false,false,false,itemUnob,"Ox Tongue",""];
      }
      if(itemToGet == 34)
      {
         itemArray = [183 + itemRank,"Polearm (Stab)",224,false,640 + itemAttack,10 + itemSpeed,235 + itemDefense,38 + itemCrit,0 + itemDexterity,0 + itemHealth,30,15000000,itemEnhance,itemBonusPow,"Reward","Mastery","",600000,itemExpiry,false,false,false,false,false,itemUnob,"Spetum",""];
      }
      if(itemToGet == 35)
      {
         itemArray = [188 + itemRank,"Polearm",225,false,645 + itemAttack,10 + itemSpeed,245 + itemDefense,39 + itemCrit,5 + itemDexterity,0 + itemHealth,40,18000000,itemEnhance,itemBonusPow,"Reward","Mastery","",700000,itemExpiry,false,false,false,false,false,itemUnob,"Glaive",""];
      }
      if(itemToGet == 36)
      {
         itemArray = [193 + itemRank,"Polearm",226,false,650 + itemAttack,12 + itemSpeed,255 + itemDefense,40 + itemCrit,10 + itemDexterity,0 + itemHealth,40,18000000,itemEnhance,itemBonusPow,"Reward","Mastery","",800000,itemExpiry,false,false,false,false,false,itemUnob,"Guisarme",""];
      }
      if(itemToGet == 37)
      {
         itemArray = [198 + itemRank,"Polearm (Stab)",231,false,695 + itemAttack,11 + itemSpeed,265 + itemDefense,41 + itemCrit,10 + itemDexterity,0 + itemHealth,40,21000000,itemEnhance,itemBonusPow,"Reward","Mastery","",900000,itemExpiry,false,false,false,false,false,itemUnob,"Longspear",""];
      }
      if(itemToGet == 38)
      {
         itemArray = [203 + itemRank,"Hammer",232,false,745 + itemAttack,9 + itemSpeed,275 + itemDefense,42 + itemCrit,10 + itemDexterity,0 + itemHealth,40,21000000,itemEnhance,itemBonusPow,"Reward","Mastery","",1000000,itemExpiry,false,false,false,false,false,itemUnob,"Lucerne Hammer",""];
      }
      if(itemToGet == 39)
      {
         itemArray = [208 + itemRank,"Polearm",227,false,750 + itemAttack,9 + itemSpeed,285 + itemDefense,43 + itemCrit,15 + itemDexterity,0 + itemHealth,40,24000000,itemEnhance,itemBonusPow,"Reward","Mastery","",1500000,itemExpiry,false,false,false,false,false,itemUnob,"Glaive-Guisarme",""];
      }
      if(itemToGet == 40)
      {
         itemArray = [213 + itemRank,"Polearm",228,false,775 + itemAttack,11 + itemSpeed,295 + itemDefense,44 + itemCrit,15 + itemDexterity,0 + itemHealth,40,24000000,itemEnhance,itemBonusPow,"Reward","Mastery","",2000000,itemExpiry,false,false,false,false,false,itemUnob,"Guisarme-Glaive",""];
      }
      if(itemToGet == 41)
      {
         itemArray = [218 + itemRank,"Polearm",229,false,825 + itemAttack,9 + itemSpeed,320 + itemDefense,45 + itemCrit,20 + itemDexterity,0 + itemHealth,40,27000000,itemEnhance,itemBonusPow,"Reward","Mastery","",2500000,itemExpiry,false,false,false,false,false,itemUnob,"Glaive-Guisarme-Glaive",""];
      }
      if(itemToGet == 42)
      {
         itemArray = [228 + itemRank,"Polearm",230,false,850 + itemAttack,7 + itemSpeed,360 + itemDefense,50 + itemCrit,25 + itemDexterity,0 + itemHealth,50,30000000,itemEnhance,itemBonusPow,"Reward","Mastery","Attack Power",4000000,itemExpiry,false,false,false,false,false,itemUnob,"Glaive-Glaive-Glaive-Guisarme-Glaive",""];
      }
      if(itemToGet == 43)
      {
         itemArray = [238 + itemRank,"Sword",233,false,1225 + itemAttack,15 + itemSpeed,400 + itemDefense,60 + itemCrit,30 + itemDexterity,10 + itemHealth,50,30000000,itemEnhance,itemBonusPow,"Reward","Boss Damage","Attack Power",6000000,itemExpiry,false,false,false,false,false,itemUnob,"Greatsword",""];
      }
      if(itemToGet == 44)
      {
         itemArray = [248 + itemRank,"Sword",234,false,1300 + itemAttack,15 + itemSpeed,500 + itemDefense,70 + itemCrit,35 + itemDexterity,10 + itemHealth,50,30000000,itemEnhance,itemBonusPow,"Reward","Boss Damage","Attack Power",8000000,itemExpiry,false,false,false,false,false,itemUnob,"Greatersword",""];
      }
      if(itemToGet == 45)
      {
         itemArray = [148 + itemRank,"Gun",154,true,175 + itemAttack,30 + itemSpeed,30 + itemDefense,40 + itemCrit,30 + itemDexterity,0 + itemHealth,1,0,itemEnhance,itemBonusPow,"EXP","Stun Chance","",200000,itemExpiry,false,false,false,false,false,itemUnob,"Strong Machine Gun",""];
      }
      if(itemToGet == 46)
      {
         itemArray = [128 + itemRank,"Bow",249,true,675 + itemAttack,12 + itemSpeed,0 + itemDefense,25 + itemCrit,35 + itemDexterity,0 + itemHealth,1,0,itemEnhance,itemBonusPow,"Epic Monster Rate","Instant Kill","",60000,itemExpiry,false,false,false,false,false,itemUnob,"Mystic Bow",""];
      }
      if(itemToGet == 47)
      {
         itemArray = [168 + itemRank,"Crossbow",250,true,725 + itemAttack,11 + itemSpeed,0 + itemDefense,40 + itemCrit,25 + itemDexterity,0 + itemHealth,1,0,itemEnhance,itemBonusPow,"Epic Monster Rate","Instant Kill","",400000,itemExpiry,false,false,false,false,false,itemUnob,"Mystic Crossbow",""];
      }
      if(itemToGet == 48)
      {
         itemArray = [188 + itemRank,"Claw",277,true,775 + itemAttack,16 + itemSpeed,50 + itemDefense,25 + itemCrit,15 + itemDexterity,30 + itemHealth,1,0,itemEnhance,itemBonusPow,"Dark Element","Instant Kill","",700000,itemExpiry,false,false,false,false,false,itemUnob,"Pure Darkness Claw",""];
      }
      if(itemToGet == 49)
      {
         itemArray = [198 + itemRank,"Slingshot",236,true,925 + itemAttack,7 + itemSpeed,0 + itemDefense,30 + itemCrit,100 + itemDexterity,0 + itemHealth,1,0,itemEnhance,itemBonusPow,"Epic Monster Rate","Instant Kill","",900000,itemExpiry,false,false,false,false,false,itemUnob,"Slingshot",""];
      }
      if(itemToGet == 50)
      {
         itemArray = [218 + itemRank,"Slingshot",237,true,1050 + itemAttack,5 + itemSpeed,0 + itemDefense,40 + itemCrit,120 + itemDexterity,0 + itemHealth,1,0,itemEnhance,itemBonusPow,"Epic Monster Rate","Instant Kill","",2500000,itemExpiry,false,false,false,false,false,itemUnob,"Oversized Slingshot",""];
      }
      if(itemToGet == 51)
      {
         itemArray = [208 + itemRank,"Bow",278,true,850 + itemAttack,12 + itemSpeed,0 + itemDefense,30 + itemCrit,40 + itemDexterity,20 + itemHealth,1,0,itemEnhance,itemBonusPow,"Epic Monster Rate","Poison Damage","",1500000,itemExpiry,false,false,false,false,false,itemUnob,"Crimson Bow",""];
      }
      if(itemToGet == 52)
      {
         itemArray = [228 + itemRank,"Cannon",238,true,1175 + itemAttack,3 + itemSpeed,200 + itemDefense,40 + itemCrit,0 + itemDexterity,0 + itemHealth,1,0,itemEnhance,itemBonusPow,"Epic Monster Rate","Instant Kill","",800000,itemExpiry,false,false,false,false,false,itemUnob,"Cannon",""];
      }
      if(itemToGet == 53)
      {
         itemArray = [238 + itemRank,"Cannon",239,true,1250 + itemAttack,3 + itemSpeed,300 + itemDefense,50 + itemCrit,0 + itemDexterity,0 + itemHealth,1,0,itemEnhance,itemBonusPow,"Epic Monster Rate","Instant Kill","",1000000,itemExpiry,false,false,false,false,false,itemUnob,"Gold Cannon",""];
      }
      if(itemToGet == 54)
      {
         itemArray = [120 + itemRank,"Sword",187,false,500 + itemAttack,10 + itemSpeed,500 + itemDefense,50 + itemCrit,100 + itemDexterity,0 + itemHealth,100,10000000,itemEnhance,itemBonusPow,"Random","Mastery","Random",10000000,itemExpiry,false,false,false,false,false,itemUnob,"Dummy Sword",""];
      }
      if(itemToGet == 55)
      {
         itemArray = [140 + itemRank,"Gun",188,true,400 + itemAttack,16 + itemSpeed,200 + itemDefense,55 + itemCrit,110 + itemDexterity,0 + itemHealth,100,10000000,itemEnhance,itemBonusPow,"Random","Random","Random",25000000,itemExpiry,false,false,false,false,false,itemUnob,"Carrot Gun",""];
      }
      if(itemToGet == 56)
      {
         itemArray = [160 + itemRank,"Dagger",189,false,900 + itemAttack,13 + itemSpeed,800 + itemDefense,60 + itemCrit,120 + itemDexterity,0 + itemHealth,100,10000000,itemEnhance,itemBonusPow,"Random","Random","Random",50000000,itemExpiry,false,false,false,false,false,itemUnob,"Treeman Dagger",""];
      }
      if(itemToGet == 57)
      {
         itemArray = [150 + itemRank,"Sword",190,false,1200 + itemAttack,6 + itemSpeed,500 + itemDefense,65 + itemCrit,130 + itemDexterity,0 + itemHealth,100,10000000,itemEnhance,itemBonusPow,"Random","Random","Random",100000000,itemExpiry,false,false,false,false,false,itemUnob,"Rat Tail",""];
      }
      if(itemToGet == 58)
      {
         itemArray = [170 + itemRank,"Wand",191,true,1100 + itemAttack,7 + itemSpeed,200 + itemDefense,70 + itemCrit,140 + itemDexterity,0 + itemHealth,100,10000000,itemEnhance,itemBonusPow,"Random","Random","Random",250000000,itemExpiry,false,false,false,false,false,itemUnob,"Dark Mage Wand",""];
      }
   }
   function getCrystalArmorArrays()
   {
      if(itemToGet == 36)
      {
         itemArray = [itemRank,"Hat",169,40,0,itemRank * 2 + itemBonusPow,0,0,0,1,0,0,itemRank * 2 + itemBonusPow * 1 - 500,"Pixel","Critical Damage","MaxMP",1000000,604800000,true,false,true,false,false,itemUnob,"Blue Crystal Hat",""];
      }
      else if(itemToGet == 37)
      {
         itemArray = [itemRank,"Shirt",169,40,0,itemRank * 2 + itemBonusPow,0,0,0,1,0,0,itemRank * 2 + itemBonusPow * 1 - 500,"Pixel","Critical Damage","MaxMP",1000000,604800000,true,false,true,false,false,itemUnob,"Blue Crystal Shirt",""];
      }
      else if(itemToGet == 38)
      {
         itemArray = [itemRank,"Gloves",169,40,0,itemRank * 2 + itemBonusPow,0,0,0,1,0,0,itemRank * 2 + itemBonusPow * 1 - 500,"Pixel","Critical Damage","MaxMP",1000000,604800000,true,false,true,false,false,itemUnob,"Blue Crystal Gloves",""];
      }
      else if(itemToGet == 39)
      {
         itemArray = [itemRank,"Pants",169,40,0,itemRank * 2 + itemBonusPow,0,0,0,1,0,0,itemRank * 2 + itemBonusPow * 1 - 500,"Pixel","Critical Damage","MaxMP",1000000,604800000,true,false,true,false,false,itemUnob,"Blue Crystal Pants",""];
      }
      else if(itemToGet == 40)
      {
         itemArray = [itemRank,"Shoes",169,40,0,itemRank * 2 + itemBonusPow,0,0,0,1,0,0,itemRank * 2 + itemBonusPow * 1 - 500,"Pixel","Critical Damage","MaxMP",1000000,604800000,true,false,true,false,false,itemUnob,"Blue Crystal Shoes",""];
      }
      else if(itemToGet == 41)
      {
         itemArray = [itemRank,"Hat",170,0,0,itemRank * 2 + itemBonusPow,0,0,20,1,0,0,itemRank * 2 + itemBonusPow * 1 - 500,"Pixel","Critical Damage","MaxHP",1000000,604800000,true,false,true,false,false,itemUnob,"Red Crystal Hat",""];
      }
      else if(itemToGet == 42)
      {
         itemArray = [itemRank,"Shirt",170,0,0,itemRank * 2 + itemBonusPow,0,0,20,1,0,0,itemRank * 2 + itemBonusPow * 1 - 500,"Pixel","Critical Damage","MaxHP",1000000,604800000,true,false,true,false,false,itemUnob,"Red Crystal Shirt",""];
      }
      else if(itemToGet == 43)
      {
         itemArray = [itemRank,"Gloves",170,0,0,itemRank * 2 + itemBonusPow,0,0,20,1,0,0,itemRank * 2 + itemBonusPow * 1 - 500,"Pixel","Critical Damage","MaxHP",1000000,604800000,true,false,true,false,false,itemUnob,"Red Crystal Gloves",""];
      }
      else if(itemToGet == 44)
      {
         itemArray = [itemRank,"Pants",170,0,0,itemRank * 2 + itemBonusPow,0,0,20,1,0,0,itemRank * 2 + itemBonusPow * 1 - 500,"Pixel","Critical Damage","MaxHP",1000000,604800000,true,false,true,false,false,itemUnob,"Red Crystal Pants",""];
      }
      else if(itemToGet == 45)
      {
         itemArray = [itemRank,"Shoes",170,0,0,itemRank * 2 + itemBonusPow,0,0,20,1,0,0,itemRank * 2 + itemBonusPow * 1 - 500,"Pixel","Critical Damage","MaxHP",1000000,604800000,true,false,true,false,false,itemUnob,"Red Crystal Shoes",""];
      }
      else if(itemToGet == 46)
      {
         itemArray = [itemRank,"Hat",171,0,0,100 + itemRank * 2 + itemBonusPow,0,0,0,1,0,0,itemRank * 2 + itemBonusPow * 1 - 500,"Coin","Critical Damage","EXP / Rare Kill",1000000,604800000,true,false,true,false,false,itemUnob,"Yellow Crystal Hat",""];
      }
      else if(itemToGet == 47)
      {
         itemArray = [itemRank,"Shirt",171,0,0,100 + itemRank * 2 + itemBonusPow,0,0,0,1,0,0,itemRank * 2 + itemBonusPow * 1 - 500,"Coin","Critical Damage","EXP / Rare Kill",1000000,604800000,true,false,true,false,false,itemUnob,"Yellow Crystal Shirt",""];
      }
      else if(itemToGet == 48)
      {
         itemArray = [itemRank,"Gloves",171,0,0,100 + itemRank * 2 + itemBonusPow,0,0,0,1,0,0,itemRank * 2 + itemBonusPow * 1 - 500,"Coin","Critical Damage","EXP / Rare Kill",1000000,604800000,true,false,true,false,false,itemUnob,"Yellow Crystal Gloves",""];
      }
      else if(itemToGet == 49)
      {
         itemArray = [itemRank,"Pants",171,0,0,100 + itemRank * 2 + itemBonusPow,0,0,0,1,0,0,itemRank * 2 + itemBonusPow * 1 - 500,"Coin","Critical Damage","EXP / Rare Kill",1000000,604800000,true,false,true,false,false,itemUnob,"Yellow Crystal Pants",""];
      }
      else if(itemToGet == 50)
      {
         itemArray = [itemRank,"Shoes",171,0,0,100 + itemRank * 2 + itemBonusPow,0,0,0,1,0,0,itemRank * 2 + itemBonusPow * 1 - 500,"Coin","Critical Damage","EXP / Rare Kill",1000000,604800000,true,false,true,false,false,itemUnob,"Yellow Crystal Shoes",""];
      }
      else if(itemToGet == 51)
      {
         itemArray = [itemRank,"Hat",172,0,0,itemRank * 2 + itemBonusPow,0,20,0,1,0,0,itemRank * 2 + itemBonusPow * 1 - 500,"EXP","Critical Damage","EXP / Epic Kill",1000000,604800000,true,false,true,false,false,itemUnob,"Green Crystal Hat",""];
      }
      else if(itemToGet == 52)
      {
         itemArray = [itemRank,"Shirt",172,0,0,itemRank * 2 + itemBonusPow,0,20,0,1,0,0,itemRank * 2 + itemBonusPow * 1 - 500,"EXP","Critical Damage","EXP / Epic Kill",1000000,604800000,true,false,true,false,false,itemUnob,"Green Crystal Shirt",""];
      }
      else if(itemToGet == 53)
      {
         itemArray = [itemRank,"Gloves",172,0,0,itemRank * 2 + itemBonusPow,0,20,0,1,0,0,itemRank * 2 + itemBonusPow * 1 - 500,"EXP","Critical Damage","EXP / Epic Kill",1000000,604800000,true,false,true,false,false,itemUnob,"Green Crystal Gloves",""];
      }
      else if(itemToGet == 54)
      {
         itemArray = [itemRank,"Pants",172,0,0,itemRank * 2 + itemBonusPow,0,20,0,1,0,0,itemRank * 2 + itemBonusPow * 1 - 500,"EXP","Critical Damage","EXP / Epic Kill",1000000,604800000,true,false,true,false,false,itemUnob,"Green Crystal Pants",""];
      }
      else if(itemToGet == 55)
      {
         itemArray = [itemRank,"Shoes",172,0,0,itemRank * 2 + itemBonusPow,0,20,0,1,0,0,itemRank * 2 + itemBonusPow * 1 - 500,"EXP","Critical Damage","EXP / Epic Kill",1000000,604800000,true,false,true,false,false,itemUnob,"Green Crystal Shoes",""];
      }
      else if(itemToGet == 56)
      {
         itemArray = [itemRank,"Hat",173,0,0,itemRank * 2 + itemBonusPow,20,0,0,1,0,0,itemRank * 2 + itemBonusPow * 1 - 500,"Drop Rate","Critical Damage","EXP / Boss Kill",1000000,604800000,true,false,true,false,false,itemUnob,"Purple Crystal Hat",""];
      }
      else if(itemToGet == 57)
      {
         itemArray = [itemRank,"Shirt",173,0,0,itemRank * 2 + itemBonusPow,20,0,0,1,0,0,itemRank * 2 + itemBonusPow * 1 - 500,"Drop Rate","Critical Damage","EXP / Boss Kill",1000000,604800000,true,false,true,false,false,itemUnob,"Purple Crystal Shirt",""];
      }
      else if(itemToGet == 58)
      {
         itemArray = [itemRank,"Gloves",173,0,0,itemRank * 2 + itemBonusPow,20,0,0,1,0,0,itemRank * 2 + itemBonusPow * 1 - 500,"Drop Rate","Critical Damage","EXP / Boss Kill",1000000,604800000,true,false,true,false,false,itemUnob,"Purple Crystal Gloves",""];
      }
      else if(itemToGet == 59)
      {
         itemArray = [itemRank,"Pants",173,0,0,itemRank * 2 + itemBonusPow,20,0,0,1,0,0,itemRank * 2 + itemBonusPow * 1 - 500,"Drop Rate","Critical Damage","EXP / Boss Kill",1000000,604800000,true,false,true,false,false,itemUnob,"Purple Crystal Pants",""];
      }
      else if(itemToGet == 60)
      {
         itemArray = [itemRank,"Shoes",173,0,0,itemRank * 2 + itemBonusPow,20,0,0,1,0,0,itemRank * 2 + itemBonusPow * 1 - 500,"Drop Rate","Critical Damage","EXP / Boss Kill",1000000,604800000,true,false,true,false,false,itemUnob,"Purple Crystal Shoes",""];
      }
      else if(itemToGet == 61)
      {
         itemArray = [itemRank,"Hat",174,0,6,itemRank * 2 + itemBonusPow,0,0,0,1,0,0,itemRank * 2 + itemBonusPow * 1 - 500,"Drop Rate","Critical Damage","Attack Power",1000000,604800000,true,false,true,false,false,itemUnob,"Pink Crystal Hat",""];
      }
      else if(itemToGet == 62)
      {
         itemArray = [itemRank,"Shirt",174,0,6,itemRank * 2 + itemBonusPow,0,0,0,1,0,0,itemRank * 2 + itemBonusPow * 1 - 500,"Drop Rate","Critical Damage","Attack Power",1000000,604800000,true,false,true,false,false,itemUnob,"Pink Crystal Shirt",""];
      }
      else if(itemToGet == 63)
      {
         itemArray = [itemRank,"Gloves",174,0,6,itemRank * 2 + itemBonusPow,0,0,0,1,0,0,itemRank * 2 + itemBonusPow * 1 - 500,"Drop Rate","Critical Damage","Attack Power",1000000,604800000,true,false,true,false,false,itemUnob,"Pink Crystal Gloves",""];
      }
      else if(itemToGet == 64)
      {
         itemArray = [itemRank,"Pants",174,0,6,itemRank * 2 + itemBonusPow,0,0,0,1,0,0,itemRank * 2 + itemBonusPow * 1 - 500,"Drop Rate","Critical Damage","Attack Power",1000000,604800000,true,false,true,false,false,itemUnob,"Pink Crystal Pants",""];
      }
      else if(itemToGet == 65)
      {
         itemArray = [itemRank,"Shoes",174,0,6,itemRank * 2 + itemBonusPow,0,0,0,1,0,0,itemRank * 2 + itemBonusPow * 1 - 500,"Drop Rate","Critical Damage","Attack Power",1000000,604800000,true,false,true,false,false,itemUnob,"Pink Crystal Shoes",""];
      }
   }
   function getLootArmorArrays()
   {
      if(itemToGet == 66)
      {
         itemArray = [itemRank,"Hat",161,itemAttack,itemSpeed,100 + itemDefense + itemRank,0 + itemCrit,0 + itemDexterity,0 + itemHealth,1,0,0,itemBonusPow * 1 + itemRank - 250,"Drop Rate","Random","",5000,Infinity,true,true,true,false,false,itemUnob,"Green Hat of Loot",""];
      }
      else if(itemToGet == 67)
      {
         itemArray = [itemRank,"Shirt",161,itemAttack,itemSpeed,100 + itemDefense + itemRank,0 + itemCrit,0 + itemDexterity,0 + itemHealth,1,0,0,itemBonusPow * 1 + itemRank - 250,"Drop Rate","Random","",5000,Infinity,true,true,true,false,false,itemUnob,"Green Shirt of Loot",""];
      }
      else if(itemToGet == 68)
      {
         itemArray = [itemRank,"Gloves",161,itemAttack,itemSpeed,100 + itemDefense + itemRank,0 + itemCrit,0 + itemDexterity,0 + itemHealth,1,0,0,itemBonusPow * 1 + itemRank - 250,"Drop Rate","Random","",5000,Infinity,true,true,true,false,false,itemUnob,"Green Gloves of Loot",""];
      }
      else if(itemToGet == 69)
      {
         itemArray = [itemRank,"Pants",161,itemAttack,itemSpeed,100 + itemDefense + itemRank,0 + itemCrit,0 + itemDexterity,0 + itemHealth,1,0,0,itemBonusPow * 1 + itemRank - 250,"Drop Rate","Random","",5000,Infinity,true,true,true,false,false,itemUnob,"Green Pants of Loot",""];
      }
      else if(itemToGet == 70)
      {
         itemArray = [itemRank,"Shoes",161,itemAttack,itemSpeed,100 + itemDefense + itemRank,0 + itemCrit,0 + itemDexterity,0 + itemHealth,1,0,0,itemBonusPow * 1 + itemRank - 250,"Drop Rate","Random","",5000,Infinity,true,true,true,false,false,itemUnob,"Green Shoes of Loot",""];
      }
      else if(itemToGet == 71)
      {
         itemArray = [itemRank,"Hat",162,itemAttack,itemSpeed,200 + itemDefense + itemRank,5 + itemCrit,5 + itemDexterity,5 + itemHealth,1,0,0,itemBonusPow * 1 + itemRank - 250,"Drop Rate","Random","",25000,Infinity,true,true,true,false,false,itemUnob,"Blue Hat of Loot",""];
      }
      else if(itemToGet == 72)
      {
         itemArray = [itemRank,"Shirt",162,itemAttack,itemSpeed,200 + itemDefense + itemRank,5 + itemCrit,5 + itemDexterity,5 + itemHealth,1,0,0,itemBonusPow * 1 + itemRank - 250,"Drop Rate","Random","",25000,Infinity,true,true,true,false,false,itemUnob,"Blue Shirt of Loot",""];
      }
      else if(itemToGet == 73)
      {
         itemArray = [itemRank,"Gloves",162,itemAttack,itemSpeed,200 + itemDefense + itemRank,5 + itemCrit,5 + itemDexterity,5 + itemHealth,1,0,0,itemBonusPow * 1 + itemRank - 250,"Drop Rate","Random","",25000,Infinity,true,true,true,false,false,itemUnob,"Blue Gloves of Loot",""];
      }
      else if(itemToGet == 74)
      {
         itemArray = [itemRank,"Pants",162,itemAttack,itemSpeed,200 + itemDefense + itemRank,5 + itemCrit,5 + itemDexterity,5 + itemHealth,1,0,0,itemBonusPow * 1 + itemRank - 250,"Drop Rate","Random","",25000,Infinity,true,true,true,false,false,itemUnob,"Blue Pants of Loot",""];
      }
      else if(itemToGet == 75)
      {
         itemArray = [itemRank,"Shoes",162,itemAttack,itemSpeed,200 + itemDefense + itemRank,5 + itemCrit,5 + itemDexterity,5 + itemHealth,1,0,0,itemBonusPow * 1 + itemRank - 250,"Drop Rate","Random","",25000,Infinity,true,true,true,false,false,itemUnob,"Blue Shoes of Loot",""];
      }
      else if(itemToGet == 76)
      {
         itemArray = [itemRank,"Hat",163,itemAttack,itemSpeed,300 + itemDefense + itemRank,10 + itemCrit,10 + itemDexterity,10 + itemHealth,1,0,0,itemBonusPow * 1 + itemRank - 250,"Drop Rate","Random","",100000,Infinity,true,true,true,false,false,itemUnob,"Purple Hat of Loot",""];
      }
      else if(itemToGet == 77)
      {
         itemArray = [itemRank,"Shirt",163,itemAttack,itemSpeed,300 + itemDefense + itemRank,10 + itemCrit,10 + itemDexterity,10 + itemHealth,1,0,0,itemBonusPow * 1 + itemRank - 250,"Drop Rate","Random","",100000,Infinity,true,true,true,false,false,itemUnob,"Purple Shirt of Loot",""];
      }
      else if(itemToGet == 78)
      {
         itemArray = [itemRank,"Gloves",163,itemAttack,itemSpeed,300 + itemDefense + itemRank,10 + itemCrit,10 + itemDexterity,10 + itemHealth,1,0,0,itemBonusPow * 1 + itemRank - 250,"Drop Rate","Random","",100000,Infinity,true,true,true,false,false,itemUnob,"Purple Gloves of Loot",""];
      }
      else if(itemToGet == 79)
      {
         itemArray = [itemRank,"Pants",163,itemAttack,itemSpeed,300 + itemDefense + itemRank,10 + itemCrit,10 + itemDexterity,10 + itemHealth,1,0,0,itemBonusPow * 1 + itemRank - 250,"Drop Rate","Random","",100000,Infinity,true,true,true,false,false,itemUnob,"Purple Pants of Loot",""];
      }
      else if(itemToGet == 80)
      {
         itemArray = [itemRank,"Shoes",163,itemAttack,itemSpeed,300 + itemDefense + itemRank,10 + itemCrit,10 + itemDexterity,10 + itemHealth,1,0,0,itemBonusPow * 1 + itemRank - 250,"Drop Rate","Random","",100000,Infinity,true,true,true,false,false,itemUnob,"Purple Shoes of Loot",""];
      }
   }
   function getCollectorArmorArrays()
   {
      if(itemToGet == 81)
      {
         itemArray = [88 + itemRank,"Hat",110,9 + itemAttack,0 + itemSpeed,110 + itemDefense,10 + itemCrit,0 + itemDexterity,9 + itemHealth,1,0,itemEnhance,itemBonusPow * 1,"Reward","Evasion","",1500,itemExpiry,false,false,false,false,false,itemUnob,"Enchanted Leather Hat",""];
      }
      else if(itemToGet == 82)
      {
         itemArray = [88 + itemRank,"Shirt",110,9 + itemAttack,0 + itemSpeed,110 + itemDefense,14 + itemCrit,0 + itemDexterity,0 + itemHealth,1,0,itemEnhance,itemBonusPow * 1,"Reward","Evasion","",1500,itemExpiry,false,false,false,false,false,itemUnob,"Enchanted Leather Shirt",""];
      }
      else if(itemToGet == 83)
      {
         itemArray = [88 + itemRank,"Gloves",110,13 + itemAttack,0 + itemSpeed,110 + itemDefense,14 + itemCrit,9 + itemDexterity,0 + itemHealth,1,0,itemEnhance,itemBonusPow * 1,"Reward","Evasion","",1500,itemExpiry,false,false,false,false,false,itemUnob,"Enchanted Leather Gloves",""];
      }
      else if(itemToGet == 84)
      {
         itemArray = [88 + itemRank,"Pants",110,9 + itemAttack,0 + itemSpeed,110 + itemDefense,14 + itemCrit,0 + itemDexterity,0 + itemHealth,1,0,itemEnhance,itemBonusPow * 1,"Reward","Evasion","",1500,itemExpiry,false,false,false,false,false,itemUnob,"Enchanted Leather Pants",""];
      }
      else if(itemToGet == 85)
      {
         itemArray = [88 + itemRank,"Shoes",110,13 + itemAttack,2 + itemSpeed,110 + itemDefense,10 + itemCrit,9 + itemDexterity,0 + itemHealth,1,0,itemEnhance,itemBonusPow * 1,"Reward","Evasion","",1500,itemExpiry,false,false,false,false,false,itemUnob,"Enchanted Leather Shoes",""];
      }
      else if(itemToGet == 86)
      {
         itemArray = [108 + itemRank,"Hat",111,11 + itemAttack,0 + itemSpeed,140 + itemDefense,10 + itemCrit,0 + itemDexterity,10 + itemHealth,1,0,itemEnhance,itemBonusPow * 1,"Reward","Blind Chance","",3000,itemExpiry,false,false,false,false,false,itemUnob,"Golden Hat",""];
      }
      else if(itemToGet == 87)
      {
         itemArray = [108 + itemRank,"Shirt",111,11 + itemAttack,0 + itemSpeed,140 + itemDefense,15 + itemCrit,0 + itemDexterity,0 + itemHealth,1,0,itemEnhance,itemBonusPow * 1,"Reward","Blind Chance","",3000,itemExpiry,false,false,false,false,false,itemUnob,"Golden Shirt",""];
      }
      else if(itemToGet == 88)
      {
         itemArray = [108 + itemRank,"Gloves",111,16 + itemAttack,0 + itemSpeed,140 + itemDefense,15 + itemCrit,10 + itemDexterity,0 + itemHealth,1,0,itemEnhance,itemBonusPow * 1,"Reward","Blind Chance","",3000,itemExpiry,false,false,false,false,false,itemUnob,"Golden Gloves",""];
      }
      else if(itemToGet == 89)
      {
         itemArray = [108 + itemRank,"Pants",111,11 + itemAttack,0 + itemSpeed,140 + itemDefense,15 + itemCrit,0 + itemDexterity,0 + itemHealth,1,0,itemEnhance,itemBonusPow * 1,"Reward","Blind Chance","",3000,itemExpiry,false,false,false,false,false,itemUnob,"Golden Pants",""];
      }
      else if(itemToGet == 90)
      {
         itemArray = [108 + itemRank,"Shoes",111,16 + itemAttack,2 + itemSpeed,140 + itemDefense,10 + itemCrit,10 + itemDexterity,0 + itemHealth,1,0,itemEnhance,itemBonusPow * 1,"Reward","Blind Chance","",3000,itemExpiry,false,false,false,false,false,itemUnob,"Golden Shoes",""];
      }
      else if(itemToGet == 91)
      {
         itemArray = [128 + itemRank,"Hat",112,13 + itemAttack,0 + itemSpeed,170 + itemDefense,10 + itemCrit,0 + itemDexterity,11 + itemHealth,1,0,itemEnhance,itemBonusPow * 1,"Reward","MP Regen","",6000,itemExpiry,false,false,false,false,false,itemUnob,"Regeneration Hat",""];
      }
      else if(itemToGet == 92)
      {
         itemArray = [128 + itemRank,"Shirt",112,13 + itemAttack,0 + itemSpeed,170 + itemDefense,16 + itemCrit,0 + itemDexterity,0 + itemHealth,1,0,itemEnhance,itemBonusPow * 1,"Reward","MP Regen","",6000,itemExpiry,false,false,false,false,false,itemUnob,"Regeneration Shirt",""];
      }
      else if(itemToGet == 93)
      {
         itemArray = [128 + itemRank,"Gloves",112,19 + itemAttack,0 + itemSpeed,170 + itemDefense,16 + itemCrit,11 + itemDexterity,0 + itemHealth,1,0,itemEnhance,itemBonusPow * 1,"Reward","MP Regen","",6000,itemExpiry,false,false,false,false,false,itemUnob,"Regeneration Gloves",""];
      }
      else if(itemToGet == 94)
      {
         itemArray = [128 + itemRank,"Pants",112,13 + itemAttack,0 + itemSpeed,170 + itemDefense,16 + itemCrit,0 + itemDexterity,0 + itemHealth,1,0,itemEnhance,itemBonusPow * 1,"Reward","MP Regen","",6000,itemExpiry,false,false,false,false,false,itemUnob,"Regeneration Pants",""];
      }
      else if(itemToGet == 95)
      {
         itemArray = [128 + itemRank,"Shoes",112,19 + itemAttack,2 + itemSpeed,170 + itemDefense,10 + itemCrit,11 + itemDexterity,0 + itemHealth,1,0,itemEnhance,itemBonusPow * 1,"Reward","MP Regen","",6000,itemExpiry,false,false,false,false,false,itemUnob,"Regeneration Shoes",""];
      }
      else if(itemToGet == 96)
      {
         itemArray = [148 + itemRank,"Hat",113,15 + itemAttack,0 + itemSpeed,200 + itemDefense,10 + itemCrit,0 + itemDexterity,12 + itemHealth,1,0,itemEnhance,itemBonusPow * 1,"Reward","Critical Chance","",40000,itemExpiry,false,false,false,false,false,itemUnob,"Berserker Hat",""];
      }
      else if(itemToGet == 97)
      {
         itemArray = [148 + itemRank,"Shirt",113,15 + itemAttack,0 + itemSpeed,200 + itemDefense,17 + itemCrit,0 + itemDexterity,0 + itemHealth,1,0,itemEnhance,itemBonusPow * 1,"Reward","Critical Chance","",40000,itemExpiry,false,false,false,false,false,itemUnob,"Berserker Shirt",""];
      }
      else if(itemToGet == 98)
      {
         itemArray = [148 + itemRank,"Gloves",113,22 + itemAttack,0 + itemSpeed,200 + itemDefense,17 + itemCrit,12 + itemDexterity,0 + itemHealth,1,0,itemEnhance,itemBonusPow * 1,"Reward","Critical Chance","",40000,itemExpiry,false,false,false,false,false,itemUnob,"Berserker Gloves",""];
      }
      else if(itemToGet == 99)
      {
         itemArray = [148 + itemRank,"Pants",113,15 + itemAttack,0 + itemSpeed,200 + itemDefense,17 + itemCrit,0 + itemDexterity,0 + itemHealth,1,0,itemEnhance,itemBonusPow * 1,"Reward","Critical Chance","",40000,itemExpiry,false,false,false,false,false,itemUnob,"Berserker Pants",""];
      }
      else if(itemToGet == 100)
      {
         itemArray = [148 + itemRank,"Shoes",113,22 + itemAttack,2 + itemSpeed,200 + itemDefense,10 + itemCrit,12 + itemDexterity,0 + itemHealth,1,0,itemEnhance,itemBonusPow * 1,"Reward","Critical Chance","",40000,itemExpiry,false,false,false,false,false,itemUnob,"Berserker Shoes",""];
      }
      else if(itemToGet == 101)
      {
         itemArray = [168 + itemRank,"Hat",114,17 + itemAttack,0 + itemSpeed,250 + itemDefense,10 + itemCrit,0 + itemDexterity,15 + itemHealth,5,1000000,itemEnhance,itemBonusPow * 1,"Reward","Defense","",80000,itemExpiry,false,false,false,false,false,itemUnob,"Defensive Hat",""];
      }
      else if(itemToGet == 102)
      {
         itemArray = [168 + itemRank,"Shirt",114,17 + itemAttack,0 + itemSpeed,250 + itemDefense,20 + itemCrit,0 + itemDexterity,0 + itemHealth,5,1000000,itemEnhance,itemBonusPow * 1,"Reward","Defense","",80000,itemExpiry,false,false,false,false,false,itemUnob,"Defensive Shirt",""];
      }
      else if(itemToGet == 103)
      {
         itemArray = [168 + itemRank,"Gloves",114,25 + itemAttack,0 + itemSpeed,250 + itemDefense,20 + itemCrit,13 + itemDexterity,0 + itemHealth,5,1000000,itemEnhance,itemBonusPow * 1,"Reward","Defense","",80000,itemExpiry,false,false,false,false,false,itemUnob,"Defensive Gloves",""];
      }
      else if(itemToGet == 104)
      {
         itemArray = [168 + itemRank,"Pants",114,17 + itemAttack,0 + itemSpeed,250 + itemDefense,20 + itemCrit,0 + itemDexterity,0 + itemHealth,5,1000000,itemEnhance,itemBonusPow * 1,"Reward","Defense","",80000,itemExpiry,false,false,false,false,false,itemUnob,"Defensive Pants",""];
      }
      else if(itemToGet == 105)
      {
         itemArray = [168 + itemRank,"Shoes",114,25 + itemAttack,2 + itemSpeed,250 + itemDefense,10 + itemCrit,15 + itemDexterity,0 + itemHealth,5,1000000,itemEnhance,itemBonusPow * 1,"Reward","Defense","",80000,itemExpiry,false,false,false,false,false,itemUnob,"Defensive Shoes",""];
      }
      else if(itemToGet == 106)
      {
         itemArray = [188 + itemRank,"Hat",119,19 + itemAttack,0 + itemSpeed,300 + itemDefense,10 + itemCrit,0 + itemDexterity,20 + itemHealth,10,3000000,itemEnhance,itemBonusPow * 1,"Dark Element","Autosteal","",140000,itemExpiry,false,false,false,false,false,itemUnob,"Pure Darkness Hat",""];
      }
      else if(itemToGet == 107)
      {
         itemArray = [188 + itemRank,"Shirt",119,19 + itemAttack,0 + itemSpeed,300 + itemDefense,25 + itemCrit,0 + itemDexterity,0 + itemHealth,10,3000000,itemEnhance,itemBonusPow * 1,"Dark Element","Autosteal","",140000,itemExpiry,false,false,false,false,false,itemUnob,"Pure Darkness Shirt",""];
      }
      else if(itemToGet == 108)
      {
         itemArray = [188 + itemRank,"Gloves",119,28 + itemAttack,0 + itemSpeed,300 + itemDefense,25 + itemCrit,14 + itemDexterity,0 + itemHealth,10,3000000,itemEnhance,itemBonusPow * 1,"Dark Element","Autosteal","",140000,itemExpiry,false,false,false,false,false,itemUnob,"Pure Darkness Gloves",""];
      }
      else if(itemToGet == 109)
      {
         itemArray = [188 + itemRank,"Pants",119,19 + itemAttack,0 + itemSpeed,300 + itemDefense,25 + itemCrit,0 + itemDexterity,0 + itemHealth,10,3000000,itemEnhance,itemBonusPow * 1,"Dark Element","Autosteal","",140000,itemExpiry,false,false,false,false,false,itemUnob,"Pure Darkness Pants",""];
      }
      else if(itemToGet == 110)
      {
         itemArray = [188 + itemRank,"Shoes",119,28 + itemAttack,3 + itemSpeed,300 + itemDefense,10 + itemCrit,20 + itemDexterity,0 + itemHealth,10,3000000,itemEnhance,itemBonusPow * 1,"Dark Element","Autosteal","",140000,itemExpiry,false,false,false,false,false,itemUnob,"Pure Darkness Shoes",""];
      }
      else if(itemToGet == 111)
      {
         itemArray = [208 + itemRank,"Hat",132,21 + itemAttack,1 + itemSpeed,400 + itemDefense,10 + itemCrit,0 + itemDexterity,30 + itemHealth,21,10000000,itemEnhance,itemBonusPow * 1,"Epic Monster Rate","Poison Damage","Equipment Attack",300000,itemExpiry,false,false,false,false,false,itemUnob,"Crimson Hat",""];
      }
      else if(itemToGet == 112)
      {
         itemArray = [208 + itemRank,"Shirt",132,21 + itemAttack,1 + itemSpeed,400 + itemDefense,35 + itemCrit,0 + itemDexterity,0 + itemHealth,21,10000000,itemEnhance,itemBonusPow * 1,"Epic Monster Rate","Poison Damage","Equipment Attack",300000,itemExpiry,false,false,false,false,false,itemUnob,"Crimson Shirt",""];
      }
      else if(itemToGet == 113)
      {
         itemArray = [208 + itemRank,"Gloves",132,31 + itemAttack,1 + itemSpeed,400 + itemDefense,35 + itemCrit,15 + itemDexterity,0 + itemHealth,21,10000000,itemEnhance,itemBonusPow * 1,"Epic Monster Rate","Poison Damage","Equipment Attack",300000,itemExpiry,false,false,false,false,false,itemUnob,"Crimson Gloves",""];
      }
      else if(itemToGet == 114)
      {
         itemArray = [208 + itemRank,"Pants",132,21 + itemAttack,1 + itemSpeed,400 + itemDefense,35 + itemCrit,0 + itemDexterity,0 + itemHealth,21,10000000,itemEnhance,itemBonusPow * 1,"Epic Monster Rate","Poison Damage","Equipment Attack",300000,itemExpiry,false,false,false,false,false,itemUnob,"Crimson Pants",""];
      }
      else if(itemToGet == 115)
      {
         itemArray = [208 + itemRank,"Shoes",132,31 + itemAttack,4 + itemSpeed,400 + itemDefense,10 + itemCrit,30 + itemDexterity,0 + itemHealth,21,10000000,itemEnhance,itemBonusPow * 1,"Epic Monster Rate","Poison Damage","Equipment Attack",300000,itemExpiry,false,false,false,false,false,itemUnob,"Crimson Shoes",""];
      }
      else if(itemToGet == 116)
      {
         itemArray = [218 + itemRank,"Hat",150,23 + itemAttack,2 + itemSpeed,550 + itemDefense,10 + itemCrit,0 + itemDexterity,50 + itemHealth,42,30000000,itemEnhance,itemBonusPow * 1,"Epic Monster Rate","Weaken Effect","Attack Power",500000,itemExpiry,false,false,false,false,false,itemUnob,"Knightmare Hat",""];
      }
      else if(itemToGet == 117)
      {
         itemArray = [218 + itemRank,"Shirt",150,23 + itemAttack,2 + itemSpeed,550 + itemDefense,50 + itemCrit,0 + itemDexterity,0 + itemHealth,42,30000000,itemEnhance,itemBonusPow * 1,"Epic Monster Rate","Weaken Effect","Attack Power",500000,itemExpiry,false,false,false,false,false,itemUnob,"Knightmare Shirt",""];
      }
      else if(itemToGet == 118)
      {
         itemArray = [218 + itemRank,"Gloves",150,34 + itemAttack,2 + itemSpeed,550 + itemDefense,50 + itemCrit,16 + itemDexterity,0 + itemHealth,42,30000000,itemEnhance,itemBonusPow * 1,"Epic Monster Rate","Weaken Effect","Attack Power",500000,itemExpiry,false,false,false,false,false,itemUnob,"Knightmare Gloves",""];
      }
      else if(itemToGet == 119)
      {
         itemArray = [218 + itemRank,"Pants",150,23 + itemAttack,2 + itemSpeed,550 + itemDefense,50 + itemCrit,0 + itemDexterity,0 + itemHealth,42,30000000,itemEnhance,itemBonusPow * 1,"Epic Monster Rate","Weaken Effect","Attack Power",500000,itemExpiry,false,false,false,false,false,itemUnob,"Knightmare Pants",""];
      }
      else if(itemToGet == 120)
      {
         itemArray = [218 + itemRank,"Shoes",150,34 + itemAttack,5 + itemSpeed,550 + itemDefense,10 + itemCrit,45 + itemDexterity,0 + itemHealth,42,30000000,itemEnhance,itemBonusPow * 1,"Epic Monster Rate","Weaken Effect","Attack Power",500000,itemExpiry,false,false,false,false,false,itemUnob,"Knightmare Shoes",""];
      }
      else if(itemToGet == 121)
      {
         itemArray = [450 + itemRank,"Hat",166,100 + itemAttack,0 + itemSpeed,0 + itemDefense,0 + itemCrit,0 + itemDexterity,0 + itemHealth,40,400000000,7 + itemEnhance,itemBonusPow * 1,"Random","Random","Random",5000000,itemExpiry,false,false,false,false,false,itemUnob,"Samurai Hat",""];
      }
      else if(itemToGet == 122)
      {
         itemArray = [450 + itemRank,"Shirt",166,100 + itemAttack,0 + itemSpeed,0 + itemDefense,0 + itemCrit,0 + itemDexterity,0 + itemHealth,40,4000000000,7 + itemEnhance,itemBonusPow * 1,"Random","Random","Random",5000000,itemExpiry,false,false,false,false,false,itemUnob,"Samurai Shirt",""];
      }
      else if(itemToGet == 123)
      {
         itemArray = [450 + itemRank,"Gloves",166,100 + itemAttack,0 + itemSpeed,0 + itemDefense,0 + itemCrit,0 + itemDexterity,0 + itemHealth,40,4000000000,7 + itemEnhance,itemBonusPow * 1,"Random","Random","Random",5000000,itemExpiry,false,false,false,false,false,itemUnob,"Samurai Gloves",""];
      }
      else if(itemToGet == 124)
      {
         itemArray = [450 + itemRank,"Pants",166,100 + itemAttack,0 + itemSpeed,0 + itemDefense,0 + itemCrit,0 + itemDexterity,0 + itemHealth,40,4000000000,7 + itemEnhance,itemBonusPow * 1,"Random","Random","Random",5000000,itemExpiry,false,false,false,false,false,itemUnob,"Samurai Pants",""];
      }
      else if(itemToGet == 125)
      {
         itemArray = [450 + itemRank,"Shoes",166,100 + itemAttack,0 + itemSpeed,0 + itemDefense,0 + itemCrit,0 + itemDexterity,0 + itemHealth,40,4000000000,7 + itemEnhance,itemBonusPow * 1,"Random","Random","Random",5000000,itemExpiry,false,false,false,false,false,itemUnob,"Samurai Shoes",""];
      }
      else if(itemToGet == 126)
      {
         itemArray = [550 + itemRank,"Hat",167,0 + itemAttack,0 + itemSpeed,0 + itemDefense,0 + itemCrit,0 + itemDexterity,10 + itemHealth,90,9000000000,11 + itemEnhance,itemBonusPow * 1,"Random","Random","Random",10000000,itemExpiry,false,true,false,false,false,itemUnob,"Dress Hat",""];
      }
      else if(itemToGet == 127)
      {
         itemArray = [550 + itemRank,"Shirt",167,0 + itemAttack,0 + itemSpeed,0 + itemDefense,0 + itemCrit,0 + itemDexterity,10 + itemHealth,90,9000000000,11 + itemEnhance,itemBonusPow * 1,"Random","Random","Random",10000000,itemExpiry,false,true,false,false,false,itemUnob,"Dress Shirt",""];
      }
      else if(itemToGet == 128)
      {
         itemArray = [550 + itemRank,"Gloves",167,0 + itemAttack,0 + itemSpeed,0 + itemDefense,0 + itemCrit,0 + itemDexterity,10 + itemHealth,90,9000000000,11 + itemEnhance,itemBonusPow * 1,"Random","Random","Random",10000000,itemExpiry,false,true,false,false,false,itemUnob,"Dress Gloves",""];
      }
      else if(itemToGet == 129)
      {
         itemArray = [550 + itemRank,"Pants",167,0 + itemAttack,0 + itemSpeed,0 + itemDefense,0 + itemCrit,0 + itemDexterity,10 + itemHealth,90,9000000000,11 + itemEnhance,itemBonusPow * 1,"Random","Random","Random",10000000,itemExpiry,false,true,false,false,false,itemUnob,"Dress Pants",""];
      }
      else if(itemToGet == 130)
      {
         itemArray = [550 + itemRank,"Shoes",167,0 + itemAttack,0 + itemSpeed,0 + itemDefense,0 + itemCrit,0 + itemDexterity,10 + itemHealth,90,9000000000,11 + itemEnhance,itemBonusPow * 1,"Random","Random","Random",10000000,itemExpiry,false,true,false,false,false,itemUnob,"Dress Shoes",""];
      }
   }
   function getUltraArmorArrays()
   {
      if(itemToGet == 131)
      {
         itemArray = [500,"Hat",100,0 + itemAttack,0 + itemSpeed,1800 + itemDefense,0 + itemCrit,0 + itemDexterity,0 + itemHealth,500,100000000,10,itemBonusPow * 1,"Random","Random","Random",0,Infinity,false,true,true,false,false,25,"ULTRA HAT","<font color=\'#FFFF00\'>Can only be used against ULTRA monsters.\nUse the Enhancement Machine in the Abandoned Lab to enhance this item!</font>"];
      }
      else if(itemToGet == 132)
      {
         itemArray = [500,"Shirt",100,0 + itemAttack,0 + itemSpeed,1800 + itemDefense,0 + itemCrit,0 + itemDexterity,0 + itemHealth,500,100000000,10,itemBonusPow * 1,"Random","Random","Random",0,Infinity,false,true,true,false,false,25,"ULTRA SHIRT","<font color=\'#FFFF00\'>Can only be used against ULTRA monsters.\nUse the Enhancement Machine in the Abandoned Lab to enhance this item!</font>"];
      }
      else if(itemToGet == 133)
      {
         itemArray = [500,"Gloves",100,0 + itemAttack,0 + itemSpeed,1800 + itemDefense,0 + itemCrit,0 + itemDexterity,0 + itemHealth,500,100000000,10,itemBonusPow * 1,"Random","Random","Random",0,Infinity,false,true,true,false,false,25,"ULTRA GLOVES","<font color=\'#FFFF00\'>Can only be used against ULTRA monsters.\nUse the Enhancement Machine in the Abandoned Lab to enhance this item!</font>"];
      }
      else if(itemToGet == 134)
      {
         itemArray = [500,"Pants",100,0 + itemAttack,0 + itemSpeed,1800 + itemDefense,0 + itemCrit,0 + itemDexterity,0 + itemHealth,500,100000000,10,itemBonusPow * 1,"Random","Random","Random",0,Infinity,false,true,true,false,false,25,"ULTRA PANTS","<font color=\'#FFFF00\'>Can only be used against ULTRA monsters.\nUse the Enhancement Machine in the Abandoned Lab to enhance this item!</font>"];
      }
      else if(itemToGet == 135)
      {
         itemArray = [500,"Shoes",100,0 + itemAttack,0 + itemSpeed,1800 + itemDefense,0 + itemCrit,0 + itemDexterity,0 + itemHealth,500,100000000,10,itemBonusPow * 1,"Random","Random","Random",0,Infinity,false,true,true,false,false,25,"ULTRA SHOES","<font color=\'#FFFF00\'>Can only be used against ULTRA monsters.\nUse the Enhancement Machine in the Abandoned Lab to enhance this item!</font>"];
      }
   }
   function getSDArmorArrays()
   {
      if(itemToGet == 11)
      {
         itemArray = [400,"Hat",133,0,0,0,0,0,0,1,0,4,100,"","","",1000000,Infinity,false,true,false,false,false,itemUnob,"Wizard Hat",""];
      }
      else if(itemToGet == 12)
      {
         itemArray = [400,"Shirt",133,0,0,0,0,0,0,1,0,4,100,"","","",1000000,Infinity,false,true,false,false,false,itemUnob,"Wizard Shirt",""];
      }
      else if(itemToGet == 13)
      {
         itemArray = [400,"Gloves",133,0,0,0,0,0,0,1,0,4,100,"","","",1000000,Infinity,false,true,false,false,false,itemUnob,"Wizard Gloves",""];
      }
      else if(itemToGet == 14)
      {
         itemArray = [400,"Pants",133,0,0,0,0,0,0,1,0,4,100,"","","",1000000,Infinity,false,true,false,false,false,itemUnob,"Wizard Pants",""];
      }
      else if(itemToGet == 15)
      {
         itemArray = [400,"Shoes",133,0,0,0,0,0,0,1,0,3,100,"","","",1000000,Infinity,false,true,false,false,false,itemUnob,"Wizard Shoes",""];
      }
      if(itemToGet == 31)
      {
         itemArray = [318,"Hat",152,50,0,200 + itemBonusPow,50,50,50,13,170000000,0,itemBonusPow + 100,"Dark Element","Non-Boss Damage","Equipment Attack",10000000,Infinity,false,false,false,false,false,itemUnob,"CHAOS HAT",""];
      }
      else if(itemToGet == 32)
      {
         itemArray = [318,"Shirt",152,50,0,300 + itemBonusPow,50,50,50,13,170000000,0,itemBonusPow + 100,"Dark Element","Non-Boss Damage","Equipment Attack",10000000,Infinity,false,false,false,false,false,itemUnob,"CHAOS SHIRT",""];
      }
      else if(itemToGet == 33)
      {
         itemArray = [318,"Gloves",154,0,0,150 + itemBonusPow,0,50,0,3,1300000000,10,itemBonusPow - 1300,"Dark Element","Non-Boss Damage","Equipment Attack",10000000,Infinity,false,false,true,false,false,itemUnob,"(MYSTERIOUS ITEM)",""];
      }
      else if(itemToGet == 34)
      {
         itemArray = [318,"Pants",152,50,0,300 + itemBonusPow,50,50,50,13,170000000,0,itemBonusPow + 100,"Dark Element","Non-Boss Damage","Equipment Attack",10000000,Infinity,false,false,false,false,false,itemUnob,"CHAOS PANTS",""];
      }
      else if(itemToGet == 35)
      {
         itemArray = [318,"Shoes",152,100,0,150 + itemBonusPow,50,50,50,13,170000000,0,itemBonusPow + 100,"Dark Element","Non-Boss Damage","Equipment Attack",10000000,Infinity,false,false,false,false,false,itemUnob,"CHAOS SHOES",""];
      }
   }
   function checkEquipLoot()
   {
      itemToGet = 0;
      itemArray = new Array();
      if(enemyID == 439 && Math.random() < 0.0005 * dropRate / 100)
      {
         itemToGet = 1;
         itemBonusPow = 66 + random(55);
         if(_root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Good Luck" && Math.random() < 0.4)
         {
            itemBonusPow = 120;
         }
         itemUnob = 0;
         getDiffUnob();
      }
      else if(enemyID == 436)
      {
         itemToGet = 2;
         itemBonusPow = 66 + random(55);
         if(_root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Good Luck" && Math.random() < 0.4)
         {
            itemBonusPow = 120;
         }
         itemUnob = 0;
         getDiffUnob();
      }
      else if(_root.save.arenaZone == 53 && Math.random() < 0.00005 * dropRate / 100 && boss == true)
      {
         itemToGet = 3 + random(9);
         itemBonusPow = 66 + random(55);
         if(_root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Good Luck" && Math.random() < 0.4)
         {
            itemBonusPow = 120;
         }
         itemUnob = 0;
         getDiffUnob();
      }
      if(Math.random() < 0.00001 * dropRate / 100 && _root.save.inventoryName[_root.save.arenaPendant] == "Collector\'s Pendant" && boss == true)
      {
         if(Math.random() < 0.8)
         {
            itemToGet = 20 + random(4);
            if(level >= 1000 && Math.random() < 0.95)
            {
               itemToGet = 24 + random(4);
            }
            if(level >= 2500 && Math.random() < 0.9)
            {
               itemToGet = 28 + random(4);
            }
            if(level >= 4000 && Math.random() < 0.85)
            {
               itemToGet = 32 + random(4);
            }
            if(level >= 6000 && Math.random() < 0.8)
            {
               itemToGet = 36 + random(4);
            }
            if(level >= 8000 && Math.random() < 0.75)
            {
               itemToGet = 40 + random(5);
            }
         }
         else if(Math.random() < 0.9 || _root.save.battlePoint < 500)
         {
            itemToGet = 45 + random(3);
            if(level >= 5000 && Math.random() < 0.85)
            {
               itemToGet = 48 + random(3);
            }
            if(level >= 7000 && Math.random() < 0.8)
            {
               itemToGet = 51 + random(3);
            }
         }
         else
         {
            itemToGet = 24 + random(30);
            if(enemyID == 15)
            {
               itemToGet = 54;
            }
            if(enemyID == 21)
            {
               itemToGet = 55;
            }
            if(enemyID == 47)
            {
               itemToGet = 56;
            }
            if(enemyID == 71)
            {
               itemToGet = 57;
            }
            if(enemyID == 159)
            {
               itemToGet = 58;
            }
         }
         itemRank = 0;
         itemAttack = 0;
         itemSpeed = 0;
         itemDefense = 0;
         itemCrit = 0;
         itemDexterity = 0;
         itemHealth = 0;
         itemEnhance = 0;
         if(Math.random() < 0.45 && _root.save.arenaHardcore == true || Math.random() < 0.35 && _root.worstMoon == true || Math.random() < 0.35 && _root.apocalypse == true || _root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Good Luck" && Math.random() < 0.5)
         {
            itemRank = 10 + random(5) * 10;
            if(_root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Good Luck" && Math.random() < 0.5 || Math.random() < 0.05)
            {
               itemRank = 50;
            }
         }
         itemAttack = 51 + random(450);
         if(_root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Good Luck" && Math.random() < 0.5 || Math.random() < 0.05)
         {
            itemAttack = 500;
         }
         if(Math.random() < 0.9 && _root.save.arenaHardcore == true || Math.random() < 0.7 && _root.worstMoon == true || Math.random() < 0.7 && _root.apocalypse == true || _root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Good Luck")
         {
            itemSpeed = 1 + random(10);
            if(_root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Good Luck" && Math.random() < 0.5 || Math.random() < 0.05)
            {
               itemSpeed = 10;
            }
         }
         if(Math.random() < 0.9 && _root.save.arenaHardcore == true || Math.random() < 0.7 && _root.worstMoon == true || Math.random() < 0.7 && _root.apocalypse == true || _root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Good Luck")
         {
            itemDefense = 1 + random(360);
            if(_root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Good Luck" && Math.random() < 0.4 || Math.random() < 0.05)
            {
               itemDefense = 360;
            }
         }
         if(Math.random() < 0.45 && _root.save.arenaHardcore == true || Math.random() < 0.35 && _root.worstMoon == true || Math.random() < 0.35 && _root.apocalypse == true || _root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Good Luck" && Math.random() < 0.5)
         {
            itemCrit = 1 + random(30);
            if(_root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Good Luck" && Math.random() < 0.5 || Math.random() < 0.05)
            {
               itemCrit = 30;
            }
         }
         if(Math.random() < 0.45 && _root.save.arenaHardcore == true || Math.random() < 0.35 && _root.worstMoon == true || Math.random() < 0.35 && _root.apocalypse == true || _root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Good Luck" && Math.random() < 0.5)
         {
            itemDexterity = 1 + random(30);
            if(_root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Good Luck" && Math.random() < 0.5 || Math.random() < 0.05)
            {
               itemDexterity = 30;
            }
         }
         if(Math.random() < 0.45 && _root.save.arenaHardcore == true || Math.random() < 0.35 && _root.worstMoon == true || Math.random() < 0.35 && _root.apocalypse == true || _root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Good Luck" && Math.random() < 0.5)
         {
            itemHealth = 1 + random(30);
            if(_root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Good Luck" && Math.random() < 0.5 || Math.random() < 0.05)
            {
               itemHealth = 30;
            }
         }
         if(name != "Secret Crystal")
         {
            itemAttack += 100;
            itemDefense += 180;
         }
         if(Math.random() < 0.05)
         {
            itemAttack += 100;
            itemEnhance += 1;
         }
         if(Math.random() < 0.05)
         {
            itemSpeed += 6;
            itemEnhance += 1;
         }
         if(Math.random() < 0.05)
         {
            itemDefense += 240;
            itemEnhance += 1;
         }
         if(Math.random() < 0.05)
         {
            itemCrit += 20;
            itemEnhance += 1;
         }
         if(Math.random() < 0.05)
         {
            itemDexterity += 20;
            itemEnhance += 1;
         }
         if(Math.random() < 0.05)
         {
            itemHealth += 20;
            itemEnhance += 1;
         }
         itemExpiry = Infinity;
         itemBonusPow = Math.round(itemAttack + itemSpeed * 20 + itemDefense * 5 / 12 + itemCrit * 5 + itemDexterity * 5 + itemHealth * 5);
         itemUnob = 0;
         getDiffUnob(true);
      }
      else if(Math.random() < 0.000025 * dropRate / 100 && _root.save.arenaLevel >= 100 && epic == true)
      {
         if(_root.abilIgnoreEpicWeapon > 0)
         {
            _root.save.arenaPixel += _root.abilIgnoreEpicWeapon;
         }
         else
         {
            itemRank = 200 + Math.floor(level / 30);
            if(itemRank > _root.save.arenaLevel)
            {
               itemRank = _root.save.arenaLevel;
            }
            itemToGet = 12 + random(8);
            if(element == "Fire")
            {
               itemToGet = 12;
            }
            if(element == "Ice")
            {
               itemToGet = 13;
            }
            if(element == "Wind")
            {
               itemToGet = 14;
            }
            if(element == "Earth")
            {
               itemToGet = 15;
            }
            if(element == "Thunder")
            {
               itemToGet = 16;
            }
            if(element == "Water")
            {
               itemToGet = 17;
            }
            if(element == "Light")
            {
               itemToGet = 18;
            }
            if(element == "Dark")
            {
               itemToGet = 19;
            }
            itemBonusPow = 66 + random(55);
            if(_root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Good Luck" && Math.random() < 0.4)
            {
               itemBonusPow = 120;
            }
            itemUnob = 0;
            getDiffUnob();
         }
      }
      if(itemToGet == 1)
      {
         itemArray = [300,"Sword",265,false,1500 + itemBonusPow,15,1500,75,75,0,15,150000000,-5,itemBonusPow,"","","",2500000,Infinity,false,true,true,false,false,itemUnob,"Censor Sword",""];
      }
      getSDWeaponArrays();
      getElementWeaponArrays();
      getCollectorWeaponArrays();
      if(itemToGet != 0)
      {
         if(itemArray[26] != "")
         {
            descX = itemArray[26] + "\n\nDropped by: " + name;
         }
         else
         {
            descX = "Dropped by: " + name;
         }
         lootSoFar += 1;
         _root.incDt2();
         _parent.stuffHolder.attachMovie("invenLoot","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + _width / 2 - lootSoFar * 15,y:150,type:"Weapon",reqRank:itemArray[0],subtype:itemArray[1],frame:itemArray[2],range:itemArray[3],attack:itemArray[4],speed:itemArray[5],defense:itemArray[6],crit:itemArray[7],dexterity:itemArray[8],health:itemArray[9],maxLevel:itemArray[10],expTNL:itemArray[11],enhance:itemArray[12],bonusPow:itemArray[13],bonus:itemArray[14],ability:itemArray[15],moreBonus:itemArray[16],sell:itemArray[17],expiry:itemArray[18],noBonus:itemArray[19],noLife:itemArray[20],noFuse:itemArray[21],noUnique:itemArray[22],spirit:itemArray[23],unob:itemArray[24],name:itemArray[25],desc:descX});
      }
      itemToGet = 0;
      itemArray = new Array();
      if(_root.save.arenaZone == 59 || _root.save.arenaZone == 94)
      {
         itemToGet = random(5) + 1;
         itemUnob = 10 + _root.save.arenaCorruptWmDifficulty;
         if(_root.save.arenaHardcore == true)
         {
            itemUnob += 3;
         }
         if(_root.apocalypse == true)
         {
            itemUnob += 2;
         }
         if(itemUnob > 40)
         {
            itemUnob = 40;
         }
      }
      else if(_root.save.arenaZone == 57 && Math.random() < 0.0005 * dropRate / 100)
      {
         itemToGet = random(5) + 6;
         itemUnob = 0;
         getDiffUnob();
      }
      else if(enemyID == 377)
      {
         itemToGet = random(5) + 11;
         itemUnob = 0;
         getDiffUnob();
      }
      else if(enemyID == 484 && Math.random() < 0.0005 * dropRate / 100)
      {
         itemToGet = random(5) + 16;
         itemUnob = 0;
         itemBonusPow = 33 + random(28);
         if(_root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Good Luck" && Math.random() < 0.4)
         {
            itemBonusPow = 60;
         }
         getDiffUnob();
      }
      else if(enemyID == 485 && Math.random() < 0.0005 * dropRate / 100)
      {
         itemToGet = random(5) + 21;
         itemUnob = 0;
         itemBonusPow = 66 + random(55);
         if(_root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Good Luck" && Math.random() < 0.4)
         {
            itemBonusPow = 120;
         }
         getDiffUnob();
      }
      else if(enemyID == 322 && Math.random() < 0.00002 * dropRate / 100 && Math.random() < 0.4)
      {
         itemToGet = random(15) + 36;
         itemUnob = 0;
         itemRank = _root.save.inventoryReqRank[_root.save.arenaWeapon];
         if(isNaN(itemRank) || itemRank < 1 || itemRank > 500)
         {
            itemRank = 30;
         }
         itemBonusPow = 66 + random(55);
         if(_root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Good Luck" && Math.random() < 0.3)
         {
            itemBonusPow = 120;
         }
         getDiffUnob();
      }
      else if(enemyID == 435 && Math.random() < 0.00001 * dropRate / 100 && Math.random() < 0.4)
      {
         itemToGet = random(15) + 51;
         itemUnob = 4;
         itemRank = _root.save.inventoryReqRank[_root.save.arenaWeapon];
         if(isNaN(itemRank) || itemRank < 1 || itemRank > 500)
         {
            itemRank = 30;
         }
         itemBonusPow = 66 + random(55);
         if(_root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Good Luck" && Math.random() < 0.4)
         {
            itemBonusPow = 120;
         }
         getDiffUnob();
      }
      else if(enemyID == 432 && ultra != true)
      {
         armorChance = 0;
         if(_root.worstMoon == true && _root.dungeonAntiCurse != true)
         {
            armorChance += 10 + _root.dungeonChestOpen * 5;
            if(_root.apocalypse == true)
            {
               armorChance += 15;
            }
            if(_root.save.arenaHardcore == true)
            {
               armorChance += 25;
            }
         }
         if(Math.random() < armorChance / 100)
         {
            itemToGet = random(5) + 31;
            itemUnob = 7 + _root.dungeonChestOpen;
            if(isNaN(itemUnob))
            {
               itemUnob = 7;
            }
            if(_root.apocalypse == true)
            {
               itemUnob += 5;
            }
            if(_root.save.arenaHardcore == true)
            {
               itemUnob += 8;
            }
            if(_root.dungeonDiff == 3)
            {
               itemUnob += 5;
            }
            itemBonusPow = 66 + random(135);
            if(_root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Good Luck" && Math.random() < 0.4)
            {
               itemBonusPow = 200;
            }
         }
      }
      else if(_root.save.arenaZone == 68 && Math.random() < Math.min(0.0005 * _root.areaTriangleKill,0.05) && _root.areaTriangleKill >= _root.save.arenaTriangleToday)
      {
         itemToGet = 26;
         itemUnob = 0;
         itemBonusPow = 66 + random(55) + _root.areaTriangleKill * 2;
         if(_root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Good Luck" && Math.random() < 0.4)
         {
            itemBonusPow = 120 + _root.areaTriangleKill * 2;
         }
         if(itemBonusPow > 1000)
         {
            itemBonusPow = 1000;
         }
         getDiffUnob();
      }
      else if(Math.random() < 0.00003 * dropRate / 100 && _root.save.inventoryName[_root.save.arenaPendant] == "Collector\'s Pendant" && rare == true && Math.random() < 0.6)
      {
         itemRank = 30 + Math.floor(level / 20);
         if(level >= 9001)
         {
            itemRank = 500;
         }
         if(epic == true && boss == true)
         {
            itemToGet = 76 + random(5);
            if(itemRank < 120)
            {
               itemRank = 120;
            }
         }
         else if(epic == true || boss == true)
         {
            itemToGet = 71 + random(5);
            if(itemRank < 70)
            {
               itemRank = 70;
            }
            if(itemRank > 350)
            {
               itemRank = 350;
            }
         }
         else
         {
            itemToGet = 66 + random(5);
            if(itemRank > 250)
            {
               itemRank = 250;
            }
         }
         itemAttack = 0;
         itemSpeed = 0;
         itemDefense = 0;
         itemCrit = 0;
         itemDexterity = 0;
         itemHealth = 0;
         if(Math.random() < 0.9 && _root.save.arenaHardcore == true || Math.random() < 0.7 && _root.worstMoon == true || Math.random() < 0.7 && _root.apocalypse == true || _root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Good Luck" && Math.random() < 0.8)
         {
            itemAttack = 1 + random(60);
            if(_root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Good Luck" && Math.random() < 0.5 || Math.random() < 0.05)
            {
               itemAttack = 60;
            }
         }
         if(Math.random() < 0.9 && _root.save.arenaHardcore == true || Math.random() < 0.7 && _root.worstMoon == true || Math.random() < 0.7 && _root.apocalypse == true || _root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Good Luck" && Math.random() < 0.8)
         {
            itemSpeed = 1 + random(10);
            if(_root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Good Luck" && Math.random() < 0.5 || Math.random() < 0.05)
            {
               itemSpeed = 10;
            }
         }
         itemDefense = 51 + random(200);
         if(_root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Good Luck" && Math.random() < 0.5 || Math.random() < 0.05)
         {
            itemDefense = 250;
         }
         if(Math.random() < 0.35 && _root.save.arenaHardcore == true || Math.random() < 0.35 && _root.worstMoon == true || Math.random() < 0.35 && _root.apocalypse == true || _root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Good Luck" && Math.random() < 0.5)
         {
            itemCrit = 1 + random(30);
            if(_root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Good Luck" && Math.random() < 0.5 || Math.random() < 0.05)
            {
               itemCrit = 30;
            }
         }
         if(Math.random() < 0.45 && _root.save.arenaHardcore == true || Math.random() < 0.35 && _root.worstMoon == true || Math.random() < 0.35 && _root.apocalypse == true || _root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Good Luck" && Math.random() < 0.5)
         {
            itemDexterity = 1 + random(30);
            if(_root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Good Luck" && Math.random() < 0.5 || Math.random() < 0.05)
            {
               itemDexterity = 30;
            }
         }
         if(Math.random() < 0.45 && _root.save.arenaHardcore == true || Math.random() < 0.35 && _root.worstMoon == true || Math.random() < 0.35 && _root.apocalypse == true || _root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Good Luck" && Math.random() < 0.5)
         {
            itemHealth = 1 + random(30);
            if(_root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Good Luck" && Math.random() < 0.5 || Math.random() < 0.05)
            {
               itemHealth = 30;
            }
         }
         itemBonusPow = Math.round(itemAttack * 5 / 2 + itemSpeed * 20 + itemDefense + itemCrit * 5 + itemDexterity * 5 + itemHealth * 5);
         itemUnob = 4;
         if(_root.save.arenaHardcore == true)
         {
            itemUnob += 2;
         }
         if(_root.worstMoon == true)
         {
            itemUnob += 4;
         }
         if(_root.apocalypse == true || _root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Good Luck")
         {
            itemUnob += 1;
         }
      }
      else if(Math.random() < 0.00003 * dropRate / 100 && _root.save.inventoryName[_root.save.arenaPendant] == "Collector\'s Pendant" && boss == true)
      {
         if(Math.random() < 0.9 || _root.save.battlePoint < 500)
         {
            itemToGet = 81 + random(10);
            if(level >= 1000 && Math.random() < 0.95)
            {
               itemToGet = 86 + random(10);
            }
            if(level >= 2000 && Math.random() < 0.9)
            {
               itemToGet = 91 + random(10);
            }
            if(level >= 3000 && Math.random() < 0.85)
            {
               itemToGet = 96 + random(10);
            }
            if(level >= 4000 && Math.random() < 0.8)
            {
               itemToGet = 101 + random(10);
            }
            if(level >= 6000 && Math.random() < 0.75)
            {
               itemToGet = 106 + random(10);
            }
            if(level >= 8000 && Math.random() < 0.7)
            {
               itemToGet = 111 + random(10);
            }
         }
         else
         {
            itemToGet = 81 + random(50);
         }
         itemRank = 0;
         itemAttack = 0;
         itemSpeed = 0;
         itemDefense = 0;
         itemCrit = 0;
         itemDexterity = 0;
         itemHealth = 0;
         itemEnhance = 0;
         if(Math.random() < 0.45 && _root.save.arenaHardcore == true || Math.random() < 0.35 && _root.worstMoon == true || Math.random() < 0.35 && _root.apocalypse == true || _root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Good Luck" && Math.random() < 0.5)
         {
            itemRank = 10 + random(5) * 10;
            if(_root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Good Luck" && Math.random() < 0.5 || Math.random() < 0.05)
            {
               itemRank = 50;
            }
         }
         if(Math.random() < 0.9 && _root.save.arenaHardcore == true || Math.random() < 0.7 && _root.worstMoon == true || Math.random() < 0.7 && _root.apocalypse == true || _root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Good Luck")
         {
            itemAttack = 1 + random(60);
            if(_root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Good Luck" && Math.random() < 0.5 || Math.random() < 0.05)
            {
               itemAttack = 60;
            }
         }
         if(Math.random() < 0.9 && _root.save.arenaHardcore == true || Math.random() < 0.7 && _root.worstMoon == true || Math.random() < 0.7 && _root.apocalypse == true || _root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Good Luck")
         {
            itemSpeed = 1 + random(10);
            if(_root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Good Luck" && Math.random() < 0.5 || Math.random() < 0.05)
            {
               itemSpeed = 10;
            }
         }
         itemDefense = 51 + random(450);
         if(_root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Good Luck" && Math.random() < 0.5 || Math.random() < 0.05)
         {
            itemDefense = 500;
         }
         if(Math.random() < 0.45 && _root.save.arenaHardcore == true || Math.random() < 0.35 && _root.worstMoon == true || Math.random() < 0.35 && _root.apocalypse == true || _root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Good Luck" && Math.random() < 0.5)
         {
            itemCrit = 1 + random(30);
            if(_root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Good Luck" && Math.random() < 0.5 || Math.random() < 0.05)
            {
               itemCrit = 30;
            }
         }
         if(Math.random() < 0.45 && _root.save.arenaHardcore == true || Math.random() < 0.35 && _root.worstMoon == true || Math.random() < 0.35 && _root.apocalypse == true || _root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Good Luck" && Math.random() < 0.5)
         {
            itemDexterity = 1 + random(30);
            if(_root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Good Luck" && Math.random() < 0.5 || Math.random() < 0.05)
            {
               itemDexterity = 30;
            }
         }
         if(Math.random() < 0.45 && _root.save.arenaHardcore == true || Math.random() < 0.35 && _root.worstMoon == true || Math.random() < 0.35 && _root.apocalypse == true || _root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Good Luck" && Math.random() < 0.5)
         {
            itemHealth = 1 + random(30);
            if(_root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Good Luck" && Math.random() < 0.5 || Math.random() < 0.05)
            {
               itemHealth = 30;
            }
         }
         if(name != "Secret Crystal")
         {
            itemAttack += 40;
            itemDefense += 60;
         }
         if(Math.random() < 0.05)
         {
            itemAttack += 40;
            itemEnhance += 1;
         }
         if(Math.random() < 0.05)
         {
            itemSpeed += 6;
            itemEnhance += 1;
         }
         if(Math.random() < 0.05)
         {
            itemDefense += 100;
            itemEnhance += 1;
         }
         if(Math.random() < 0.05)
         {
            itemCrit += 20;
            itemEnhance += 1;
         }
         if(Math.random() < 0.05)
         {
            itemDexterity += 20;
            itemEnhance += 1;
         }
         if(Math.random() < 0.05)
         {
            itemHealth += 20;
            itemEnhance += 1;
         }
         itemExpiry = Infinity;
         itemBonusPow = Math.round(itemAttack * 5 / 2 + itemSpeed * 20 + itemDefense + itemCrit * 5 + itemDexterity * 5 + itemHealth * 5);
         itemUnob = 0;
         getDiffUnob(true);
      }
      if(itemToGet == 1)
      {
         itemArray = [90,"Hat",137,0,0,0,0,0,100,1,0,-6,100,"","","Random",0,Infinity,false,false,true,false,false,itemUnob,"Corrupted Elm Hat",""];
      }
      if(itemToGet == 2)
      {
         itemArray = [90,"Shirt",137,0,0,0,0,100,0,1,0,-6,100,"","","Random",0,Infinity,false,false,true,false,false,itemUnob,"Corrupted Elm Shirt",""];
      }
      if(itemToGet == 3)
      {
         itemArray = [90,"Gloves",137,0,0,0,100,0,0,1,0,-6,100,"","","Random",0,Infinity,false,false,true,false,false,itemUnob,"Corrupted Elm Gloves",""];
      }
      if(itemToGet == 4)
      {
         itemArray = [90,"Pants",137,0,0,0,0,100,0,1,0,-6,100,"","","Random",0,Infinity,false,false,true,false,false,itemUnob,"Corrupted Elm Pants",""];
      }
      if(itemToGet == 5)
      {
         itemArray = [90,"Shoes",137,0,10,0,50,0,0,1,0,-6,100,"","","Random",0,Infinity,false,false,true,false,false,itemUnob,"Corrupted Elm Shoes",""];
      }
      if(itemToGet == 6)
      {
         itemArray = [300,"Hat",135,0,0,0,0,0,0,1,0,-5,100,"","","",1000000,Infinity,false,true,false,false,false,itemUnob,"Censor Hat",""];
      }
      else if(itemToGet == 7)
      {
         itemArray = [300,"Shirt",135,0,0,0,0,0,0,1,0,-5,100,"","","",1000000,Infinity,false,true,false,false,false,itemUnob,"Censor Shirt",""];
      }
      else if(itemToGet == 8)
      {
         itemArray = [300,"Gloves",135,0,0,0,0,0,0,1,0,-5,100,"","","",1000000,Infinity,false,true,false,false,false,itemUnob,"Censor Gloves",""];
      }
      else if(itemToGet == 9)
      {
         itemArray = [300,"Pants",135,0,0,0,0,0,0,1,0,-5,100,"","","",1000000,Infinity,false,true,false,false,false,itemUnob,"Censor Pants",""];
      }
      else if(itemToGet == 10)
      {
         itemArray = [300,"Shoes",135,0,0,0,0,0,0,1,0,-5,100,"","","",1000000,Infinity,false,true,false,false,false,itemUnob,"Censor Shoes",""];
      }
      if(itemToGet == 16)
      {
         itemArray = [300,"Hat",139,75,2,180 + itemBonusPow,20,20,50,1,0,-2,100 + itemBonusPow,"Random","Random","Random",2000000,Infinity,false,false,false,false,false,itemUnob,"Fairy Godfather Hat",""];
      }
      else if(itemToGet == 17)
      {
         itemArray = [300,"Shirt",139,75,2,180 + itemBonusPow,50,20,20,1,0,-2,100 + itemBonusPow,"Random","Random","Random",2000000,Infinity,false,false,false,false,false,itemUnob,"Fairy Godfather Shirt",""];
      }
      else if(itemToGet == 18)
      {
         itemArray = [300,"Gloves",139,75,7,180 + itemBonusPow,20,20,20,1,0,-2,100 + itemBonusPow,"Random","Random","Random",2000000,Infinity,false,false,false,false,false,itemUnob,"Fairy Godfather Gloves",""];
      }
      else if(itemToGet == 19)
      {
         itemArray = [300,"Pants",139,75,2,180 + itemBonusPow,50,20,20,1,0,-2,100 + itemBonusPow,"Random","Random","Random",2000000,Infinity,false,false,false,false,false,itemUnob,"Fairy Godfather Pants",""];
      }
      else if(itemToGet == 20)
      {
         itemArray = [300,"Shoes",139,75,4,180 + itemBonusPow,20,50,20,1,0,-2,100 + itemBonusPow,"Random","Random","Random",2000000,Infinity,false,false,false,false,false,itemUnob,"Fairy Godfather Shoes",""];
      }
      else if(itemToGet == 21)
      {
         itemArray = [300,"Hat",140,60,3,160 + itemBonusPow,20,20,50,1,0,-2,100 + itemBonusPow,"Random","Random","Random",2000000,Infinity,false,false,false,false,false,itemUnob,"Fairy Godmother Hat",""];
      }
      else if(itemToGet == 22)
      {
         itemArray = [300,"Shirt",140,60,3,160 + itemBonusPow,50,20,20,1,0,-2,100 + itemBonusPow,"Random","Random","Random",2000000,Infinity,false,false,false,false,false,itemUnob,"Fairy Godmother Shirt",""];
      }
      else if(itemToGet == 23)
      {
         itemArray = [300,"Gloves",145,0,0,0 + itemBonusPow,0,0,0,6,600000000,10,-1220 + itemBonusPow,"Random","Random","Random",2000000,Infinity,false,false,true,false,false,itemUnob,"(Mysterious Item)",""];
      }
      else if(itemToGet == 24)
      {
         itemArray = [300,"Pants",140,60,3,180 + itemBonusPow,50,20,20,1,0,-2,100 + itemBonusPow,"Random","Random","Random",2000000,Infinity,false,false,false,false,false,itemUnob,"Fairy Godmother Pants",""];
      }
      else if(itemToGet == 25)
      {
         itemArray = [300,"Shoes",140,60,5,180 + itemBonusPow,20,50,20,1,0,-2,100 + itemBonusPow,"Random","Random","Random",2000000,Infinity,false,false,false,false,false,itemUnob,"Fairy Godmother Shoes",""];
      }
      if(itemToGet == 26)
      {
         itemArray = [500,"Skin",8,0,0,50 + itemBonusPow,0,0,0,1,0,9,100 + itemBonusPow,"Random","Random","Random",5000000,604800000,false,false,false,false,false,itemUnob,"Neon Skin",""];
      }
      getSDArmorArrays();
      getCrystalArmorArrays();
      getLootArmorArrays();
      getCollectorArmorArrays();
      getUltraArmorArrays();
      if(itemToGet != 0)
      {
         if(itemArray[25] != "")
         {
            descX = itemArray[25] + "\n\nDropped by: " + name;
         }
         else
         {
            descX = "Dropped by: " + name;
         }
         lootSoFar += 1;
         _root.incDt2();
         _parent.stuffHolder.attachMovie("invenLoot","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + _width / 2 - lootSoFar * 15,y:150,type:"Armor",reqRank:itemArray[0],subtype:itemArray[1],frame:itemArray[2],attack:itemArray[3],speed:itemArray[4],defense:itemArray[5],crit:itemArray[6],dexterity:itemArray[7],health:itemArray[8],maxLevel:itemArray[9],expTNL:itemArray[10],enhance:itemArray[11],bonusPow:itemArray[12],bonus:itemArray[13],ability:itemArray[14],moreBonus:itemArray[15],sell:itemArray[16],expiry:itemArray[17],noBonus:itemArray[18],noLife:itemArray[19],noFuse:itemArray[20],noUnique:itemArray[21],spirit:itemArray[22],unob:itemArray[23],name:itemArray[24],desc:descX});
      }
   }
   function checkEquipLoot2()
   {
      itemToGet = 0;
      itemArray = new Array();
      if(enemyID == 432 && ultra != true && _root.dungeonDiff == 3)
      {
         itemToGet = 29;
      }
      else if(enemyID == 487 && Math.random() < 0.001 * dropRate / 100)
      {
         itemToGet = 27;
      }
      else if(_root.save.arenaZone == 52 && Math.random() < Math.min(0.0001 * Math.sqrt(_root.areaSpookyKill),0.01))
      {
         itemToGet = 25;
         itemRank = 250 + Math.floor(_root.areaSpookyKill / 5);
         if(itemRank > 500)
         {
            itemRank = 500;
         }
         itemAttack = 0;
         itemSpeed = 0;
         itemDefense = 0;
         itemCrit = 0;
         itemDexterity = 0;
         itemHealth = 0;
         itemBonusPow = 0;
         if(_root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Good Luck" && Math.random() < 0.4)
         {
            itemAttack += 120;
            itemBonusPow += 120;
         }
         else if(Math.random() < 0.6)
         {
            itemAttack += 12 * (random(10) + 1);
            itemBonusPow += itemAttack;
         }
         if(_root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Good Luck" && Math.random() < 0.4)
         {
            itemSpeed += 9;
            itemBonusPow += 180;
         }
         else if(Math.random() < 0.6)
         {
            itemSpeed += 3 * (random(3) + 1);
            itemBonusPow += itemSpeed * 20;
         }
         if(_root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Good Luck" && Math.random() < 0.4)
         {
            itemDefense += 120;
            itemBonusPow += 120;
         }
         else if(Math.random() < 0.6)
         {
            itemDefense += 12 * (random(10) + 1);
            itemBonusPow += itemDefense;
         }
         if(_root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Good Luck" && Math.random() < 0.4)
         {
            itemCrit += 60;
            itemBonusPow += 300;
         }
         else if(Math.random() < 0.5)
         {
            itemCrit += 6 * (random(10) + 1);
            itemBonusPow += itemCrit * 5;
         }
         if(_root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Good Luck" && Math.random() < 0.4)
         {
            itemDexterity += 60;
            itemBonusPow += 300;
         }
         else if(Math.random() < 0.5)
         {
            itemDexterity += 6 * (random(10) + 1);
            itemBonusPow += itemDexterity * 5;
         }
         if(_root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Good Luck" && Math.random() < 0.4)
         {
            itemHealth += 60;
            itemBonusPow += 300;
         }
         else if(Math.random() < 0.5)
         {
            itemHealth += 6 * (random(10) + 1);
            itemBonusPow += itemHealth * 5;
         }
         itemUnob = 1;
         if(epic == true)
         {
            itemUnob += 2;
         }
         getDiffUnob(true);
      }
      else if(_root.save.arenaZone == 68 && Math.random() < 0.002 * _root.areaTriangleKill && _root.areaTriangleKill >= _root.save.arenaTriangleToday)
      {
         itemToGet = 26;
         itemRank = 250 + _root.areaTriangleKill;
         if(itemRank > 500)
         {
            itemRank = 500;
         }
         itemAttack = 0;
         itemSpeed = 0;
         itemDefense = 0;
         itemCrit = 0;
         itemDexterity = 0;
         itemHealth = 0;
         itemBonusPow = 0;
         if(_root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Good Luck" && Math.random() < 0.4)
         {
            itemAttack += 160;
            itemBonusPow += 160;
         }
         else if(Math.random() < 0.6)
         {
            itemAttack += 16 * (random(10) + 1);
            itemBonusPow += itemAttack;
         }
         if(_root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Good Luck" && Math.random() < 0.4)
         {
            itemSpeed += 12;
            itemBonusPow += 240;
         }
         else if(Math.random() < 0.6)
         {
            itemSpeed += 4 * (random(3) + 1);
            itemBonusPow += itemSpeed * 20;
         }
         if(_root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Good Luck" && Math.random() < 0.4)
         {
            itemDefense += 160;
            itemBonusPow += 160;
         }
         else if(Math.random() < 0.6)
         {
            itemDefense += 16 * (random(10) + 1);
            itemBonusPow += itemDefense;
         }
         if(_root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Good Luck" && Math.random() < 0.4)
         {
            itemCrit += 80;
            itemBonusPow += 400;
         }
         else if(Math.random() < 0.5)
         {
            itemCrit += 8 * (random(10) + 1);
            itemBonusPow += itemCrit * 5;
         }
         if(_root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Good Luck" && Math.random() < 0.4)
         {
            itemDexterity += 80;
            itemBonusPow += 400;
         }
         else if(Math.random() < 0.5)
         {
            itemDexterity += 8 * (random(10) + 1);
            itemBonusPow += itemDexterity * 5;
         }
         if(_root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Good Luck" && Math.random() < 0.4)
         {
            itemHealth += 80;
            itemBonusPow += 400;
         }
         else if(Math.random() < 0.5)
         {
            itemHealth += 8 * (random(10) + 1);
            itemBonusPow += itemHealth * 5;
         }
         itemUnob = 1;
         if(epic == true)
         {
            itemUnob += 2;
         }
         if(_root.save.arenaHardcore == true)
         {
            itemUnob += 3;
         }
         if(_root.worstMoon == true)
         {
            itemUnob += 4;
         }
         if(_root.apocalypse == true || _root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Good Luck")
         {
            itemUnob += 1;
         }
      }
      else if(_root.save.arenaZone == 20 && Math.random() < 0.0005)
      {
         itemToGet = 23;
         itemRank = _root.save.arenaLevel;
         itemAttack = 0;
         itemSpeed = 0;
         itemDefense = 0;
         itemCrit = 0;
         itemDexterity = 0;
         itemHealth = 0;
         itemBonusPow = 0;
         if(_root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Good Luck" && Math.random() < 0.4)
         {
            itemAttack += 80;
            itemBonusPow += 80;
         }
         else if(Math.random() < 0.4)
         {
            itemAttack += 8 * (random(10) + 1);
            itemBonusPow += itemAttack;
         }
         if(_root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Good Luck" && Math.random() < 0.4)
         {
            itemSpeed += 6;
            itemBonusPow += 120;
         }
         else if(Math.random() < 0.4)
         {
            itemSpeed += 2 * (random(3) + 1);
            itemBonusPow += itemSpeed * 20;
         }
         if(_root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Good Luck" && Math.random() < 0.4)
         {
            itemDefense += 80;
            itemBonusPow += 80;
         }
         else if(Math.random() < 0.4)
         {
            itemDefense += 8 * (random(10) + 1);
            itemBonusPow += itemDefense;
         }
         if(_root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Good Luck" && Math.random() < 0.4)
         {
            itemCrit += 40;
            itemBonusPow += 200;
         }
         else if(Math.random() < 0.3)
         {
            itemCrit += 4 * (random(10) + 1);
            itemBonusPow += itemCrit * 5;
         }
         if(_root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Good Luck" && Math.random() < 0.4)
         {
            itemDexterity += 40;
            itemBonusPow += 200;
         }
         else if(Math.random() < 0.3)
         {
            itemDexterity += 4 * (random(10) + 1);
            itemBonusPow += itemDexterity * 5;
         }
         if(_root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Good Luck" && Math.random() < 0.4)
         {
            itemHealth += 40;
            itemBonusPow += 200;
         }
         else if(Math.random() < 0.3)
         {
            itemHealth += 4 * (random(10) + 1);
            itemBonusPow += itemHealth * 5;
         }
      }
      else if(Math.random() < 0.005 && epic == true && dropRate > 0 || Math.random() < 0.0005 && rare == true && dropRate > 0)
      {
         itemToGet = 30;
         itemAttack = 0;
         itemSpeed = 0;
         itemDefense = 1;
         itemCrit = 0;
         itemDexterity = 0;
         itemHealth = 0;
         itemBonusPow = 2;
         itemRoll = Math.ceil(Math.sqrt(exp) * dropRate / 250000) + random(3);
         if(boss == true)
         {
            itemRoll = Math.ceil(itemRoll * 1.5);
         }
         if(epic == true)
         {
            itemRoll = Math.ceil(itemRoll * 1.5);
         }
         if(itemRoll > 300)
         {
            itemRoll = 300;
         }
         while(itemRoll > 0)
         {
            rollUse = Math.ceil(itemRoll / 5);
            itemRoll -= rollUse;
            if(Math.random() < 0.04 && rollUse >= 5 && itemSpeed < 6)
            {
               itemSpeed += 1;
               itemBonusPow += 40;
            }
            else if(Math.random() < 0.02)
            {
               itemAttack += rollUse * 3;
               itemBonusPow += rollUse * 12;
            }
            else if(Math.random() < 0.02)
            {
               itemCrit += rollUse;
               itemBonusPow += rollUse * 10;
            }
            else if(Math.random() < 0.04)
            {
               itemDexterity += rollUse;
               itemBonusPow += rollUse * 10;
            }
            else if(Math.random() < 0.04)
            {
               itemAttack += rollUse * 2;
               itemBonusPow += rollUse * 8;
            }
            else if(Math.random() < 0.06)
            {
               itemHealth += rollUse;
               itemBonusPow += rollUse * 10;
            }
            else if(Math.random() < 0.06)
            {
               itemAttack += rollUse;
               itemBonusPow += rollUse * 4;
            }
            else if(Math.random() < 0.08)
            {
               itemDefense += rollUse * 3;
               itemBonusPow += rollUse * 6;
            }
            else if(Math.random() < 0.1)
            {
               itemDefense += rollUse * 2;
               itemBonusPow += rollUse * 4;
            }
            else
            {
               itemDefense += rollUse;
               itemBonusPow += rollUse * 2;
            }
            if(itemAttack > 3000)
            {
               itemAttack = 3000;
            }
            if(itemSpeed > 6)
            {
               itemSpeed = 6;
            }
            if(itemDefense > 30000)
            {
               itemDefense = 30000;
            }
            if(itemCrit > 300)
            {
               itemCrit = 300;
            }
            if(itemDexterity > 300)
            {
               itemDexterity = 300;
            }
            if(itemHealth > 300)
            {
               itemHealth = 300;
            }
         }
      }
      else if(Math.random() < 0.001 * dropRate / 100 && rare == true)
      {
         if(Math.random() < 0.5 && _root.save.arenaZone == 44 && _root.treasureHunterKill >= 1000)
         {
            itemToGet = 24;
            itemRank = 160 + random(141);
            itemAttack = 0;
            itemSpeed = 0;
            itemDefense = 0;
            itemCrit = 0;
            itemDexterity = 0;
            itemHealth = 0;
            itemBonusPow = 0;
            itemUnob = 0;
            if(_root.save.arenaHardcore == true)
            {
               itemUnob += 1;
            }
            if(_root.worstMoon == true)
            {
               itemUnob += 1;
            }
            if(epic == true)
            {
               itemUnob += 2;
            }
            if(boss == true)
            {
               itemUnob += 2;
            }
            if(_root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Good Luck" && Math.random() < 0.4)
            {
               itemAttack += 120;
               itemBonusPow += 120;
            }
            else if(Math.random() < 0.5)
            {
               itemAttack += 12 * (random(10) + 1);
               itemBonusPow += itemAttack;
            }
            if(_root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Good Luck" && Math.random() < 0.4)
            {
               itemSpeed += 9;
               itemBonusPow += 180;
            }
            else if(Math.random() < 0.5)
            {
               itemSpeed += 3 * (random(3) + 1);
               itemBonusPow += itemSpeed * 20;
            }
            if(_root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Good Luck" && Math.random() < 0.4)
            {
               itemDefense += 120;
               itemBonusPow += 120;
            }
            else if(Math.random() < 0.5)
            {
               itemDefense += 12 * (random(10) + 1);
               itemBonusPow += itemDefense;
            }
            if(_root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Good Luck" && Math.random() < 0.4)
            {
               itemCrit += 60;
               itemBonusPow += 300;
            }
            else if(Math.random() < 0.4)
            {
               itemCrit += 6 * (random(10) + 1);
               itemBonusPow += itemCrit * 5;
            }
            if(_root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Good Luck" && Math.random() < 0.4)
            {
               itemDexterity += 60;
               itemBonusPow += 300;
            }
            else if(Math.random() < 0.4)
            {
               itemDexterity += 6 * (random(10) + 1);
               itemBonusPow += itemDexterity * 5;
            }
            if(_root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Good Luck" && Math.random() < 0.4)
            {
               itemHealth += 60;
               itemBonusPow += 300;
            }
            else if(Math.random() < 0.4)
            {
               itemHealth += 6 * (random(10) + 1);
               itemBonusPow += itemHealth * 5;
            }
            if(_root.abilIgnorePendant > 0)
            {
               _root.save.arenaPixel += _root.abilIgnorePendant;
               itemToGet = 0;
            }
         }
         else if(Math.random() < 0.01)
         {
            itemToGet = 28;
         }
         else if(Math.random() < 0.3 && _root.save.arenaLevel >= 70)
         {
            itemToGet = 18;
            if(Math.random() < 0.85 && _root.save.arenaLevel >= 120 && level >= 1000)
            {
               itemToGet = 19;
            }
            if(Math.random() < 0.7 && _root.save.arenaLevel >= 180 && level >= 3000)
            {
               itemToGet = 20;
            }
            if(Math.random() < 0.55 && _root.save.arenaLevel >= 250 && level >= 5000)
            {
               itemToGet = 21;
            }
            if(Math.random() < 0.4 && _root.save.arenaLevel >= 350 && level >= 7000 && epic == true)
            {
               itemToGet = 22;
            }
            if(_root.abilIgnorePendant > 0 && itemToGet != 22)
            {
               _root.save.arenaPixel += _root.abilIgnorePendant;
               itemToGet = 0;
            }
         }
         else
         {
            itemToGet = random(7) + 11;
            itemRank = 30;
            itemBonusPow = 16;
            itemSell = 2500;
            itemUnob = 0;
            chanceMultX = 0.3 + level / 10000;
            if(boss == true)
            {
               chanceMultX *= 2;
               itemUnob += 1;
            }
            if(epic == true)
            {
               chanceMultX *= 3;
               itemUnob += 2;
            }
            if(_root.save.arenaHardcore == true)
            {
               chanceMultX *= 2;
               itemUnob += 1;
            }
            if(_root.worstMoon == true)
            {
               chanceMultX *= 3;
               itemUnob += 2;
            }
            if(_root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Good Luck" && Math.random() < 0.4)
            {
               chanceMultX = 100;
            }
            if(Math.random() < 0.9 * chanceMultX && _root.save.arenaLevel >= 65 && level >= 500 || _root.save.arenaLevel >= 145)
            {
               itemRank = 70;
               itemBonusPow = 36;
               itemSell = 5000;
            }
            if(Math.random() < 0.6 * chanceMultX && _root.save.arenaLevel >= 115 && level >= 1000 || _root.save.arenaLevel >= 210)
            {
               itemRank = 120;
               itemBonusPow = 66;
               itemSell = 10000;
            }
            if(Math.random() < 0.4 * chanceMultX && _root.save.arenaLevel >= 175 && level >= 2000 || _root.save.arenaLevel >= 295)
            {
               itemRank = 180;
               itemBonusPow = 106;
               itemSell = 25000;
            }
            if(Math.random() < 0.2 * chanceMultX && _root.save.arenaLevel >= 245 && level >= 3000 || _root.save.arenaLevel >= 420)
            {
               itemRank = 250;
               itemBonusPow = 156;
               itemSell = 50000;
            }
            if(Math.random() < 0.1 * chanceMultX && _root.save.arenaLevel >= 345 && level >= 4500)
            {
               itemRank = 350;
               itemBonusPow = 256;
               itemSell = 100000;
            }
            if(Math.random() < 0.04 * chanceMultX && _root.save.arenaLevel >= 495 && level >= 6000)
            {
               itemRank = 500;
               itemBonusPow = 406;
               itemSell = 500000;
            }
            if(Math.random() < 0.01 * chanceMultX && itemUnob < 5)
            {
               itemUnob += 1;
            }
            if(_root.abilIgnorePendant > 0 && itemRank < 500)
            {
               _root.save.arenaPixel += _root.abilIgnorePendant;
               itemToGet = 0;
            }
         }
      }
      if(itemToGet == 11)
      {
         itemArray = [itemRank,"Pendant",7,0,0,0,0,0,0,1,0,10,itemBonusPow,"","Double Hit Chance","",itemSell,Infinity,true,false,false,false,itemUnob,"Pendant of Double Hit",""];
      }
      else if(itemToGet == 12)
      {
         itemArray = [itemRank,"Pendant",7,0,0,0,0,0,0,1,0,10,itemBonusPow,"","Rage Attack","",itemSell,Infinity,true,false,false,false,itemUnob,"Pendant of Rage",""];
      }
      else if(itemToGet == 13)
      {
         itemArray = [itemRank,"Pendant",7,0,0,0,0,0,0,1,0,10,itemBonusPow,"","Potion Efficiency","",itemSell,Infinity,true,false,false,false,itemUnob,"Pendant of Recovery",""];
      }
      else if(itemToGet == 14)
      {
         itemArray = [itemRank,"Pendant",7,0,0,0,0,0,0,1,0,10,itemBonusPow,"","Boss Damage","",itemSell,Infinity,true,false,false,false,itemUnob,"Pendant of Bosshunter",""];
      }
      else if(itemToGet == 15)
      {
         itemArray = [itemRank,"Pendant",7,0,0,0,0,0,0,1,0,10,itemBonusPow,"","Magic Resist","",itemSell,Infinity,true,false,false,false,itemUnob,"Pendant of Spell Protection",""];
      }
      else if(itemToGet == 16)
      {
         itemArray = [itemRank,"Pendant",7,0,0,0,0,0,0,1,0,10,itemBonusPow,"","Instant Kill","",itemSell,Infinity,true,false,false,false,itemUnob,"Pendant of Cruelty",""];
      }
      else if(itemToGet == 17)
      {
         itemArray = [itemRank,"Pendant",7,0,0,0,0,0,0,1,0,10,itemBonusPow,"","Negate Effect","",itemSell,Infinity,true,false,false,false,itemUnob,"Pendant of Resistance",""];
      }
      else if(itemToGet == 18)
      {
         itemArray = [120,"Pendant",1,20,2,0,5,5,5,26,1080000,10,1,"Random","Random","",10000,2592000000,false,true,false,false,0,"Bronze Pendant","A pendant made of bronze. The more you use it, the better it becomes."];
      }
      else if(itemToGet == 19)
      {
         itemArray = [180,"Pendant",2,60,3,0,15,15,15,34,5880000,10,1,"Random","Random","",25000,2592000000,false,true,false,false,0,"Silver Pendant","A pendant made of silver. The more you use it, the better it becomes."];
      }
      else if(itemToGet == 20)
      {
         itemArray = [250,"Pendant",3,100,4,0,25,25,25,42,17280000,10,1,"Random","Random","",50000,2592000000,false,true,false,false,0,"Gold Pendant","A pendant made of gold. The more you use it, the better it becomes."];
      }
      else if(itemToGet == 21)
      {
         itemArray = [350,"Pendant",4,140,5,0,35,35,35,50,38880000,10,1,"Random","Random","",100000,2592000000,false,true,false,false,0,"Platinum Pendant","A pendant made of platinum. The more you use it, the better it becomes."];
      }
      else if(itemToGet == 22)
      {
         itemArray = [500,"Pendant",17,180,6,0,45,45,45,58,75000000,10,1,"Random","Random","",500000,2592000000,false,true,false,false,5,"Unobtainium Pendant","A pendant made of unobtainium. The more you use it, the better it becomes."];
      }
      else if(itemToGet == 23)
      {
         itemArray = [itemRank,"Pendant",24,itemAttack,itemSpeed,itemDefense,itemCrit,itemDexterity,itemHealth,1,0,10,itemBonusPow,"Random","Random","",250000,604800000,false,true,false,false,20,"Revolution Pendant",""];
      }
      else if(itemToGet == 24)
      {
         itemArray = [itemRank,"Pendant",18,itemAttack,itemSpeed,itemDefense,itemCrit,itemDexterity,itemHealth,1,0,10,itemBonusPow,"Random","Random","",2500000,Infinity,false,false,false,false,10 + itemUnob,"Roflhunter\'s Pendant","One of the many treasures stolen from the Pirate Ship Interior. It\'s very valuable."];
      }
      else if(itemToGet == 25)
      {
         itemArray = [itemRank,"Trinket",2,itemAttack,itemSpeed,itemDefense,itemCrit,itemDexterity,itemHealth,1,0,0,itemBonusPow,"Random","Weaken Effect","",1000000,Infinity,false,false,false,false,itemUnob,"Dominator Gem","It looks like a recolored version of the To-be-Nerfed Gem, but you can equip it."];
      }
      else if(itemToGet == 26)
      {
         itemArray = [itemRank,"Trinket",4,itemAttack,itemSpeed,itemDefense,itemCrit,itemDexterity,itemHealth,1,0,0,itemBonusPow,"Random","Non-Boss Damage","Random",5000000,Infinity,false,false,false,false,itemUnob,"Mega Triangle Gem","It contains the mega powers of the Triangles. Is this their secret?"];
      }
      else if(itemToGet == 27)
      {
         itemArray = [_root.save.arenaLevel,"Trinket",3,250,0,0,0,0,0,1,0,0,750,"Random","Random","Random",2500000,2592000000,true,true,false,false,0,"Triangle Gem","A gem that gives you the powers of the Triangles."];
      }
      else if(itemToGet == 28)
      {
         itemArray = [30,"Pendant",20,0,0,0,0,0,0,1,0,10,1,"","","",25000,604800000,true,true,false,false,0,"Collector\'s Pendant","Equip this pendant, and you will be able to find special equipment items from monsters!"];
      }
      else if(itemToGet == 29)
      {
         gigaAttack = 225;
         gigaSpeed = 0;
         gigaCrit = 25;
         gigaDex = 25;
         gigaHealth = 25;
         var _loc3_ = 1;
         while(_loc3_ <= 4)
         {
            if(Math.random() < 0.25)
            {
               gigaCrit += 25;
            }
            else if(Math.random() < 0.3333333333333333)
            {
               gigaDex += 25;
            }
            else if(Math.random() < 0.5)
            {
               gigaHealth += 25;
               gigaSpeed += 5;
            }
            else
            {
               gigaAttack += 25;
            }
            _loc3_ += 1;
         }
         itemArray = [250,"Pendant",23,gigaAttack,gigaSpeed,_root.dungeonChestOpen * 200,gigaCrit,gigaDex,gigaHealth,75,750000000,0,_root.dungeonChestOpen * 200,"Random","Random","Random",75000000,0,false,true,false,false,50,"GIGA PENDANT",""];
      }
      else if(itemToGet == 30)
      {
         itemArray = [50,"Trinket",18,itemAttack,itemSpeed,itemDefense,itemCrit,itemDexterity,itemHealth,1,0,0,itemBonusPow,"Random","Random","Random",0,Infinity,false,false,false,false,10,"4D Infinity Cube","This may look like your ordinary cube, but it\'s actually FOUR DIMENSIONAL! If you have two of these, you can mer... I mean, FUSE them to form a more powerful cube. This item can be fused multiple times."];
      }
      if(itemToGet != 0)
      {
         if(itemArray[24] != "")
         {
            descX = itemArray[24] + "\n\nDropped by: " + name;
         }
         else
         {
            descX = "Dropped by: " + name;
         }
         lootSoFar += 1;
         _root.incDt2();
         _parent.stuffHolder.attachMovie("invenLoot","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + _width / 2 - lootSoFar * 15,y:150,type:"Accessory",reqRank:itemArray[0],subtype:itemArray[1],frame:itemArray[2],attack:itemArray[3],speed:itemArray[4],defense:itemArray[5],crit:itemArray[6],dexterity:itemArray[7],health:itemArray[8],maxLevel:itemArray[9],expTNL:itemArray[10],enhance:itemArray[11],bonusPow:itemArray[12],bonus:itemArray[13],ability:itemArray[14],moreBonus:itemArray[15],sell:itemArray[16],expiry:itemArray[17],noBonus:itemArray[18],noLife:itemArray[19],noUnique:itemArray[20],spirit:itemArray[21],unob:itemArray[22],name:itemArray[23],desc:descX});
      }
      itemToGet = 0;
      if(enemyID == 432 && ultra != true && _root.dungeonDiff == 3)
      {
         gigaRoll = Math.random() * 100;
         gigaChanceA = [50,50,50,50,50,50,50,50,50,50,50,50,50,50,45,15,10,5,0,0,0];
         gigaChanceB = [25,25,25,25,25,25,25,25,25,25,25,25,25,25,25,25,25,25,25,20,0];
         gigaChanceC = [0,0.5,1,1.5,2,2.5,3,3.5,4,4.5,5,10,15,20,25,50,50,50,50,50,50];
         gigaChanceD = [0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1,2,3,4,5,10,15,20,25,30,50];
         if(gigaRoll < gigaChanceA[_root.dungeonChestOpen])
         {
            itemToGet = 13;
         }
         else if(gigaRoll < gigaChanceA[_root.dungeonChestOpen] + gigaChanceB[_root.dungeonChestOpen])
         {
            itemToGet = 14;
         }
         else if(gigaRoll < gigaChanceA[_root.dungeonChestOpen] + gigaChanceB[_root.dungeonChestOpen] + gigaChanceC[_root.dungeonChestOpen])
         {
            itemToGet = 15;
         }
         else if(gigaRoll < gigaChanceA[_root.dungeonChestOpen] + gigaChanceB[_root.dungeonChestOpen] + gigaChanceC[_root.dungeonChestOpen] + gigaChanceD[_root.dungeonChestOpen])
         {
            itemToGet = 16;
         }
      }
      else if(Math.random() < 0.0005 * dropRate / 100)
      {
         if(boss == true && Math.random() < 0.2)
         {
            if(_root.abilIgnoreFinalizer > 0)
            {
               _root.save.arenaPixel += _root.abilIgnoreFinalizer;
            }
            else
            {
               itemRank = 100 + Math.floor(level / 300) * 10;
               if(_root.worstMoon == true)
               {
                  itemRank += 50;
               }
               if(_root.apocalypse == true)
               {
                  itemRank += 50;
               }
               if(enemyID == 432)
               {
                  itemRank = 500;
               }
               if(enemyID == 440)
               {
                  itemRank = 500;
               }
               itemToGet = 11 + random(2);
            }
         }
         else if(rare == true)
         {
            if(boss == true && Math.random() < 0.4)
            {
               itemToGet = 3 + random(3) * 3;
            }
            else if(epic == true && Math.random() < 0.8)
            {
               itemToGet = 1 + random(3) * 3;
            }
            else
            {
               itemToGet = 2 + random(3) * 3;
            }
            if(level == 9001 && _root.save.arenaHardcore == true && _root.apocalypse == true && Math.random() < 0.01)
            {
               itemTag = "[S] [I] ";
            }
            else if(level == 9001 && _root.save.arenaHardcore == true && _root.worstMoon == true && Math.random() < 0.01)
            {
               itemTag = "[I] ";
            }
            else if(level == 9001 && _root.apocalypse == true && Math.random() < 0.01)
            {
               itemTag = "[I] ";
            }
            else if(level == 9001 && _root.worstMoon == true && Math.random() < 0.01)
            {
               itemTag = "[S] ";
            }
            else
            {
               itemTag = "";
               if(_root.abilIgnoreBonusRock > 0)
               {
                  _root.save.arenaPixel += _root.abilIgnoreBonusRock;
                  itemToGet = 0;
               }
            }
         }
      }
      if(_root.save.arenaZone == 59 || _root.save.arenaZone == 94)
      {
         itemToGet = 10;
      }
      if(itemToGet == 1)
      {
         itemArray = ["Weapon Bonus Adder",321,0,0,100,"Random","","",10,36,50000,Infinity,itemTag + "Weapon Bonus: Type A",""];
      }
      else if(itemToGet == 2)
      {
         itemArray = ["Weapon Bonus Adder",322,0,0,100,"","Random","",10,16,50000,Infinity,itemTag + "Weapon Bonus: Type B",""];
      }
      else if(itemToGet == 3)
      {
         itemArray = ["Weapon Bonus Adder",323,0,0,100,"","","Random",10,406,50000,Infinity,itemTag + "Weapon Bonus: Type C",""];
      }
      else if(itemToGet == 4)
      {
         itemArray = ["Armor Bonus Adder",324,0,0,100,"Random","","",10,36,50000,Infinity,itemTag + "Armor Bonus: Type A",""];
      }
      else if(itemToGet == 5)
      {
         itemArray = ["Armor Bonus Adder",325,0,0,100,"","Random","",10,16,50000,Infinity,itemTag + "Armor Bonus: Type B",""];
      }
      else if(itemToGet == 6)
      {
         itemArray = ["Armor Bonus Adder",326,0,0,100,"","","Random",10,406,50000,Infinity,itemTag + "Armor Bonus: Type C",""];
      }
      else if(itemToGet == 7)
      {
         itemArray = ["Accessory Bonus Adder",327,0,0,100,"Random","","",10,36,50000,Infinity,itemTag + "Accessory Bonus: Type A",""];
      }
      else if(itemToGet == 8)
      {
         itemArray = ["Accessory Bonus Adder",328,0,0,100,"","Random","",10,16,50000,Infinity,itemTag + "Accessory Bonus: Type B",""];
      }
      else if(itemToGet == 9)
      {
         itemArray = ["Accessory Bonus Adder",329,0,0,100,"","","Random",10,406,50000,Infinity,itemTag + "Accessory Bonus: Type C",""];
      }
      else if(itemToGet == 10)
      {
         corruptBonusB = "Random";
         if(Math.random() < 0.2)
         {
            corruptBonusB = "Instant Kill";
         }
         if(Math.random() < 0.2)
         {
            corruptBonusB = "Boss Damage";
         }
         if(Math.random() < 0.3)
         {
            corruptBonusB = "Potion Efficiency";
         }
         if(Math.random() < 0.3)
         {
            corruptBonusB = "Negate Effect";
         }
         if(Math.random() < 0.3)
         {
            corruptBonusB = "Magic Resist";
         }
         if(Math.random() < 0.4)
         {
            corruptBonusB = "Poison Damage";
         }
         itemArray = ["Armor Bonus Adder",330,0,0,100,"",corruptBonusB,"",10,500,500000,Infinity,"Corrupted Bonus Rock","A rock that can add bonuses that are impossible otherwise. Too bad, it seems to be corrupted."];
      }
      else if(itemToGet == 11)
      {
         itemArray = ["Weapon Finalizer",424,itemRank,0,100,"","","",10,itemRank + 206,250000,Infinity,"Weapon Finalizer (Rank " + itemRank + ")",""];
      }
      else if(itemToGet == 12)
      {
         itemArray = ["Armor Finalizer",425,itemRank,0,100,"","","",10,itemRank + 206,250000,Infinity,"Armor Finalizer (Rank " + itemRank + ")",""];
      }
      else if(itemToGet == 13)
      {
         itemArray = ["Accessory Attack Enhancer",332,125,0,100,"","","",10,0,7500000,Infinity,"GIGA ENHANCER","Can only be used on GIGA PENDANT and GIGA EARRINGS."];
      }
      else if(itemToGet == 14)
      {
         itemArray = ["Accessory Lifespan Extender",333,2,0,100,"","","",10,0,7500000,Infinity,"GIGA LIFE ROCK","Can only be used on GIGA PENDANT and GIGA EARRINGS."];
      }
      else if(itemToGet == 15)
      {
         itemArray = ["Accessory Attack Enhancer",332,150,0,100,"","","",10,706,75000000,Infinity,"GIGA ENHANCER EX","Can only be used on GIGA PENDANT and GIGA EARRINGS."];
      }
      else if(itemToGet == 16)
      {
         itemArray = ["Accessory Lifespan Extender",333,15,0,100,"","","",10,706,75000000,Infinity,"GIGA LIFE ROCK EX","Can only be used on GIGA PENDANT and GIGA EARRINGS."];
      }
      if(itemToGet != 0)
      {
         if(itemArray[13] != "")
         {
            descX = itemArray[13] + "\n\nDropped by: " + name;
         }
         else
         {
            descX = "Dropped by: " + name;
         }
         _root.incDt2();
         _parent.stuffHolder.attachMovie("invenLoot","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + _width / 2 - lootSoFar * 15,y:150,type:"Enhancer",subtype:itemArray[0],frame:itemArray[1],power:itemArray[2],curse:itemArray[3],success:itemArray[4],bonus:itemArray[5],ability:itemArray[6],moreBonus:itemArray[7],enhance:itemArray[8],bonusPow:itemArray[9],sell:itemArray[10],expiry:itemArray[11],name:itemArray[12],desc:descX});
      }
      itemToGet = 0;
      if(enemyID == 229)
      {
         itemToGet = 1;
      }
      else if(enemyID == 432 && _root.apocalypse == true && _root.save.arenaHardcore == true && _root.dungeonChestOpen == 10 && _root.dungeonAntiCurse != true && _root.saveid != 4 && _root.dungeonDiff != 3)
      {
         itemToGet = 2;
      }
      else if(enemyID == 432 && _root.apocalypse == true && _root.save.arenaHardcore == true && _root.dungeonChestOpen >= 15 && _root.dungeonAntiCurse != true && _root.saveid != 4 && _root.dungeonDiff == 3)
      {
         itemToGet = 3;
      }
      if(itemToGet == 1)
      {
         itemArray = ["Air Bubble",21,1800,1,0,1,10000,Infinity,"Air Bubble","Allows you to breathe underwater (technically, wherever there is no air) for a short while."];
      }
      if(itemToGet == 2)
      {
         yourName = _root.kongregate_username;
         if(_root.kongregate_username == undefined || _root.kongregate_username == "Guest")
         {
            yourName = _root.save.displayName;
         }
         elixName = yourName + "\'s Elixir of Greatness";
         itemArray = ["Elixir of Greatness",22,3600,1,0,706,100000000,Infinity,elixName,"A special potion that once belonged to " + yourName + ", the greatest warrior of Anti-Idle planet. It contains all you need to become as powerful as " + yourName + "!"];
      }
      if(itemToGet == 3)
      {
         yourName = _root.kongregate_username;
         if(_root.kongregate_username == undefined || _root.kongregate_username == "Guest")
         {
            yourName = _root.save.displayName;
         }
         elixName = yourName + "\'s Elixir of Greatness";
         itemArray = ["Elixir of Greatness",25,3600,1,0,5000000,1000000000,Infinity,elixName,"A special potion that once belonged to " + yourName + ", the greatest warrior of Anti-Idle planet. It contains all you need to become as powerful as " + yourName + "!\n\nTimestamp\n<font color=\'#FFFFFF\'>[" + _root.withComma(Math.floor(_root.systemtimenow / 1000)) + "]</font>"];
      }
      if(itemToGet != 0)
      {
         if(itemArray[9] != "")
         {
            if(itemToGet == 4)
            {
               descX = itemArray[9] + "\n\nDropped by: CHAOS";
            }
            else
            {
               descX = itemArray[9] + "\n\nDropped by: " + name;
            }
         }
         else
         {
            descX = "Dropped by: " + name;
         }
         _root.incDt2();
         _parent.stuffHolder.attachMovie("invenLoot","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + _width / 2 - lootSoFar * 15,y:150,type:"Potion",subtype:itemArray[0],frame:itemArray[1],attack:itemArray[2],defense:itemArray[3],enhance:itemArray[4],bonusPow:itemArray[5],sell:itemArray[6],expiry:itemArray[7],name:itemArray[8],desc:descX});
      }
      itemToGet = 0;
      if(Math.random() < 0.00005 * dropRate / 100 && ultra == true)
      {
         if(_root.abilIgnoreOutfit > 0)
         {
            _root.save.arenaPixel += _root.abilIgnoreOutfit;
         }
         else
         {
            itemToGet = 4 + random(3);
         }
      }
      else if(Math.random() < 0.00005 * dropRate / 100 && epic == true && boss == true)
      {
         if(_root.abilIgnoreOutfit > 0)
         {
            _root.save.arenaPixel += _root.abilIgnoreOutfit;
         }
         else
         {
            itemToGet = 1;
         }
      }
      else if(Math.random() < 0.00005 * dropRate / 100 && rare == true && boss == true)
      {
         if(_root.abilIgnoreOutfit > 0)
         {
            _root.save.arenaPixel += _root.abilIgnoreOutfit;
         }
         else
         {
            itemToGet = 2;
         }
      }
      else if(Math.random() < 0.00005 * dropRate / 100 && zombie == true)
      {
         if(_root.abilIgnoreOutfit > 0)
         {
            _root.save.arenaPixel += _root.abilIgnoreOutfit;
         }
         else
         {
            itemToGet = 3;
         }
      }
      if(itemToGet == 1)
      {
         itemArray = [1,"Earring",1,16,500000,"Transparent Earrings",""];
      }
      if(itemToGet == 2)
      {
         itemArray = [1,"Skin",1,16,250000,"Yellow Skin",""];
      }
      if(itemToGet == 3)
      {
         itemArray = [1,"Skin",12,16,100000,"Invisible Skin",""];
      }
      if(itemToGet == 4)
      {
         itemArray = [1,"Weapon",91,16,1000000,"Invisible Weapon","Makes your weapon invisible."];
      }
      if(itemToGet == 5)
      {
         itemArray = [1,"Weapon",92,16,1000000,"Invisible Projectiles","Makes your ranged weapon\'s projectiles invisible."];
      }
      if(itemToGet == 6)
      {
         itemArray = [1,"Weapon",93,16,1000000,"Invisible Weapon and Projectiles","Makes your weapon and projectiles invisible."];
      }
      if(itemToGet != 0)
      {
         if(itemArray[6] != "")
         {
            descX = itemArray[6] + "\n\nDropped by: " + name;
         }
         else
         {
            descX = "Dropped by: " + name;
         }
         _root.incDt2();
         _parent.stuffHolder.attachMovie("invenLoot","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + _width / 2 - lootSoFar * 15,y:150,type:"Outfit",reqRank:itemArray[0],subtype:itemArray[1],frame:itemArray[2],bonusPow:itemArray[3],sell:itemArray[4],name:itemArray[5],desc:descX});
      }
   }
   function checkType()
   {
      if(enemyRank >= 2)
      {
         _root.save.arenaKillWhite += 1;
         careerExpGain += 0.5;
         if(_root.save.questType == "Kill")
         {
            if(_root.save.questSubtype == "Non-Weak")
            {
               _root.save.questCount += 1;
            }
         }
      }
      if(enemyRank >= 3)
      {
         _root.save.arenaKillRed += 1;
         careerExpGain += 1;
         if(_root.save.questType == "Kill")
         {
            if(_root.save.questSubtype == "Strong")
            {
               _root.save.questCount += 1;
            }
         }
      }
      if(enemyRank >= 4)
      {
         _root.save.arenaKillPurple += 1;
         if(_root.save.inventoryName[_root.save.arenaTrinket] == "Auto Buff Gem")
         {
            _root.progPercent += 100;
         }
         careerExpGain += 1.5;
         if(_root.save.questType == "Kill")
         {
            if(_root.save.questSubtype == "Boss")
            {
               _root.save.questCount += 1;
            }
         }
      }
      if(rare == true)
      {
         careerExpGain += 10;
         _root.save.arenaKillRare += 1;
         if(_root.save.questType == "Kill")
         {
            if(_root.save.questSubtype == "Rare")
            {
               _root.save.questCount += 1;
            }
         }
      }
      if(epic == true)
      {
         careerExpGain += 20;
         _root.save.arenaKillEpic += 1;
         if(_root.save.questType == "Kill")
         {
            if(_root.save.questSubtype == "Epic")
            {
               _root.save.questCount += 1;
            }
         }
      }
      if(zombie == true)
      {
         if(_root.save.questType == "Kill")
         {
            if(_root.save.questSubtype == "Undead")
            {
               _root.save.questCount += 1;
            }
         }
      }
   }
   function getDoomItem()
   {
      lootDoom = _root.raidBonus;
      if(Math.random() < 0.5)
      {
         itemToGet = random(10) + 1;
         if(itemToGet == 1)
         {
            _root.getArenaWeapon(338,"Dagger",109,false,1000 + lootDoom * 90,12,65,30 + lootDoom * 5,20 + lootDoom * 5,0,9 + lootDoom * 18,60000000,1,0,Math.min(lootDoom,5),0 + lootDoom * 90,"Random","Random","Random",60000 * lootDoom * lootDoom,5184000000,true,true,false,false,false,lootDoom,"Dagger of DOOOOOOM","An item awarded for reaching a score of " + _root.withComma(_root.raidDamage) + " in Tower of DOOOOOOM.",false,true);
         }
         if(itemToGet == 2)
         {
            _root.getArenaWeapon(338,"Sword",114,false,1000 + lootDoom * 90,11,65,20 + lootDoom * 5,10 + lootDoom * 5,10,9 + lootDoom * 18,60000000,1,0,Math.min(lootDoom,5),0 + lootDoom * 90,"Random","Random","Random",60000 * lootDoom * lootDoom,5184000000,true,true,false,false,false,lootDoom,"Sword of DOOOOOOM","An item awarded for reaching a score of " + _root.withComma(_root.raidDamage) + " in Tower of DOOOOOOM.",false,true);
         }
         if(itemToGet == 3)
         {
            _root.getArenaWeapon(338,"Sword",119,false,1000 + lootDoom * 90,10,65,20 + lootDoom * 5,10 + lootDoom * 5,0,9 + lootDoom * 18,60000000,1,0,Math.min(lootDoom,5),0 + lootDoom * 90,"Random","Random","Random",60000 * lootDoom * lootDoom,5184000000,true,true,false,false,false,lootDoom,"Longsword of DOOOOOOM","An item awarded for reaching a score of " + _root.withComma(_root.raidDamage) + " in Tower of DOOOOOOM.",false,true);
         }
         if(itemToGet == 4)
         {
            _root.getArenaWeapon(338,"Spear",124,false,1000 + lootDoom * 90,9,65,20 + lootDoom * 5,0 + lootDoom * 5,10,9 + lootDoom * 18,60000000,1,0,Math.min(lootDoom,5),0 + lootDoom * 90,"Random","Random","Random",60000 * lootDoom * lootDoom,5184000000,true,true,false,false,false,lootDoom,"Spear of DOOOOOOM","An item awarded for reaching a score of " + _root.withComma(_root.raidDamage) + " in Tower of DOOOOOOM.",false,true);
         }
         if(itemToGet == 5)
         {
            _root.getArenaWeapon(338,"Axe",124,false,1000 + lootDoom * 90,8,65,20 + lootDoom * 5,0 + lootDoom * 5,0,9 + lootDoom * 18,60000000,1,0,Math.min(lootDoom,5),0 + lootDoom * 90,"Random","Random","Random",60000 * lootDoom * lootDoom,5184000000,true,true,false,false,false,lootDoom,"Axe of DOOOOOOM","An item awarded for reaching a score of " + _root.withComma(_root.raidDamage) + " in Tower of DOOOOOOM.",false,true);
         }
         if(itemToGet == 6)
         {
            _root.getArenaWeapon(338,"Bow",140,true,700 + lootDoom * 90,8,45,20 + lootDoom * 5,30 + lootDoom * 5,0,9 + lootDoom * 18,60000000,1,0,Math.min(lootDoom,5),0 + lootDoom * 90,"Random","Random","Random",60000 * lootDoom * lootDoom,5184000000,true,true,false,false,false,lootDoom,"Bow of DOOOOOOM","An item awarded for reaching a score of " + _root.withComma(_root.raidDamage) + " in Tower of DOOOOOOM.",false,true);
         }
         if(itemToGet == 7)
         {
            _root.getArenaWeapon(338,"Crossbow",145,true,750 + lootDoom * 90,6,45,30 + lootDoom * 5,30 + lootDoom * 5,0,9 + lootDoom * 18,60000000,1,0,Math.min(lootDoom,5),0 + lootDoom * 90,"Random","Random","Random",60000 * lootDoom * lootDoom,5184000000,true,true,false,false,false,lootDoom,"Crossbow of DOOOOOOM","An item awarded for reaching a score of " + _root.withComma(_root.raidDamage) + " in Tower of DOOOOOOM.",false,true);
         }
         if(itemToGet == 8)
         {
            _root.getArenaWeapon(338,"Gun",152,true,600 + lootDoom * 90,13,45,30 + lootDoom * 5,20 + lootDoom * 5,0,9 + lootDoom * 18,60000000,1,0,Math.min(lootDoom,5),0 + lootDoom * 90,"Random","Random","Random",60000 * lootDoom * lootDoom,5184000000,true,true,false,false,false,lootDoom,"Gun of DOOOOOOM","An item awarded for reaching a score of " + _root.withComma(_root.raidDamage) + " in Tower of DOOOOOOM.",false,true);
         }
         if(itemToGet == 9)
         {
            _root.getArenaWeapon(338,"Wand",170,true,700 + lootDoom * 90,7,45,10 + lootDoom * 5,0 + lootDoom * 5,80,9 + lootDoom * 18,60000000,1,0,Math.min(lootDoom,5),0 + lootDoom * 90,"Random","Random","Random",60000 * lootDoom * lootDoom,5184000000,true,true,false,false,false,lootDoom,"Wand of DOOOOOOM","An item awarded for reaching a score of " + _root.withComma(_root.raidDamage) + " in Tower of DOOOOOOM.",false,true);
         }
         if(itemToGet == 10)
         {
            _root.getArenaWeapon(338,"Claw",175,true,650 + lootDoom * 90,11,45,20 + lootDoom * 5,20 + lootDoom * 5,20,9 + lootDoom * 18,60000000,1,0,Math.min(lootDoom,5),0 + lootDoom * 90,"Random","Random","Random",60000 * lootDoom * lootDoom,5184000000,true,true,false,false,false,lootDoom,"Claw of DOOOOOOM","An item awarded for reaching a score of " + _root.withComma(_root.raidDamage) + " in Tower of DOOOOOOM.",false,true);
         }
      }
      else
      {
         itemToGet = random(5) + 1;
         if(itemToGet == 1)
         {
            _root.getArenaArmor(313,"Hat",115,60,1,500 + lootDoom * 90,50 + lootDoom * 5,20 + lootDoom * 5,20,9 + lootDoom * 18,60000000,1,0,Math.min(lootDoom,5),0 + lootDoom * 90,"Random","Random","Random",60000 * lootDoom * lootDoom,5184000000,true,true,false,false,false,lootDoom,"Hat of DOOOOOOM","An item awarded for reaching a score of " + _root.withComma(_root.raidDamage) + " in Tower of DOOOOOOM.",false,true);
         }
         if(itemToGet == 2)
         {
            _root.getArenaArmor(313,"Shirt",115,60,1,500 + lootDoom * 90,50 + lootDoom * 5,20 + lootDoom * 5,20,9 + lootDoom * 18,60000000,1,0,Math.min(lootDoom,5),0 + lootDoom * 90,"Random","Random","Random",60000 * lootDoom * lootDoom,5184000000,true,true,false,false,false,lootDoom,"Shirt of DOOOOOOM","An item awarded for reaching a score of " + _root.withComma(_root.raidDamage) + " in Tower of DOOOOOOM.",false,true);
         }
         if(itemToGet == 3)
         {
            _root.getArenaArmor(313,"Gloves",115,60,1,500 + lootDoom * 90,50 + lootDoom * 5,20 + lootDoom * 5,20,9 + lootDoom * 18,60000000,1,0,Math.min(lootDoom,5),0 + lootDoom * 90,"Random","Random","Random",60000 * lootDoom * lootDoom,5184000000,true,true,false,false,false,lootDoom,"Gloves of DOOOOOOM","An item awarded for reaching a score of " + _root.withComma(_root.raidDamage) + " in Tower of DOOOOOOM.",false,true);
         }
         if(itemToGet == 4)
         {
            _root.getArenaArmor(313,"Pants",115,60,1,500 + lootDoom * 90,50 + lootDoom * 5,20 + lootDoom * 5,20,9 + lootDoom * 18,60000000,1,0,Math.min(lootDoom,5),0 + lootDoom * 90,"Random","Random","Random",60000 * lootDoom * lootDoom,5184000000,true,true,false,false,false,lootDoom,"Pants of DOOOOOOM","An item awarded for reaching a score of " + _root.withComma(_root.raidDamage) + " in Tower of DOOOOOOM.",false,true);
         }
         if(itemToGet == 5)
         {
            _root.getArenaArmor(313,"Shoes",115,60,1,500 + lootDoom * 90,50 + lootDoom * 5,20 + lootDoom * 5,20,9 + lootDoom * 18,60000000,1,0,Math.min(lootDoom,5),0 + lootDoom * 90,"Random","Random","Random",60000 * lootDoom * lootDoom,5184000000,true,true,false,false,false,lootDoom,"Shoes of DOOOOOOM","An item awarded for reaching a score of " + _root.withComma(_root.raidDamage) + " in Tower of DOOOOOOM.",false,true);
         }
      }
   }
   function getBestiaryBonus()
   {
      if(_root.save.arenaBestiary[enemyID] >= 100000)
      {
         expToGain = Math.floor(expToGain * 1.5);
         arenaExpGain = Math.floor(arenaExpGain * 1.5);
         careerExpGain += 2.5;
         _root.dispNews(30,"Lv. 6 Bestiary Bonus! (+50% EXP) - " + _root.withComma(_root.save.arenaBestiary[enemyID]) + " kills");
      }
      else if(_root.save.arenaBestiary[enemyID] >= 10000)
      {
         expToGain = Math.floor(expToGain * 1.4);
         arenaExpGain = Math.floor(arenaExpGain * 1.4);
         careerExpGain += 2;
         _root.dispNews(30,"Lv. 5 Bestiary Bonus! (+40% EXP) - " + _root.withComma(_root.save.arenaBestiary[enemyID]) + " kills");
      }
      else if(_root.save.arenaBestiary[enemyID] >= 1000)
      {
         expToGain = Math.floor(expToGain * 1.3);
         arenaExpGain = Math.floor(arenaExpGain * 1.3);
         careerExpGain += 1.5;
         _root.dispNews(30,"Lv. 4 Bestiary Bonus! (+30% EXP) - " + _root.withComma(_root.save.arenaBestiary[enemyID]) + " kills");
      }
      else if(_root.save.arenaBestiary[enemyID] >= 100)
      {
         expToGain = Math.floor(expToGain * 1.2);
         arenaExpGain = Math.floor(arenaExpGain * 1.2);
         careerExpGain += 1;
         _root.dispNews(30,"Lv. 3 Bestiary Bonus! (+20% EXP) - " + _root.withComma(_root.save.arenaBestiary[enemyID]) + " kills");
      }
      else if(_root.save.arenaBestiary[enemyID] >= 10)
      {
         expToGain = Math.floor(expToGain * 1.1);
         arenaExpGain = Math.floor(arenaExpGain * 1.1);
         careerExpGain += 0.5;
         _root.dispNews(30,"Lv. 2 Bestiary Bonus! (+10% EXP) - " + _root.withComma(_root.save.arenaBestiary[enemyID]) + " kills");
      }
      else if(_root.save.arenaBestiary[enemyID] == 1)
      {
         _root.dispNews(32,"New Bestiary entry UNLOCKED!");
         _root.checkBestiary();
      }
      if(_root.save.arenaBestiary[enemyID] == 10 || _root.save.arenaBestiary[enemyID] == 100 || _root.save.arenaBestiary[enemyID] == 1000 || _root.save.arenaBestiary[enemyID] == 10000 || _root.save.arenaBestiary[enemyID] == 100000)
      {
         _root.dispNews(32,"Bestiary entry LEVEL UP!");
         _root.checkBestiary();
      }
   }
   function getDropRate()
   {
      dropRate = _root.arenaDropRate * (0.25 + 0.25 * enemyRank + level * 2 / 9001) * partKilled;
      if(Key.isDown(84) && _root.saveid == 4)
      {
         dropRate = 9999999;
      }
      if(_root.specMine == 1)
      {
         _root.specMine = 0;
         dropRate *= 20;
      }
      if(ultra3 == true)
      {
         dropRate *= 200;
      }
      else if(ultra2 == true)
      {
         dropRate *= 100;
      }
      else if(ultra1 == true)
      {
         dropRate *= 50;
      }
      else if(epic == true)
      {
         dropRate *= 20;
      }
      else if(rare == true)
      {
         dropRate *= 10;
      }
      if(_root.save.arenaBestiary[enemyID] >= 100000)
      {
         dropRate *= 3;
      }
      else if(_root.save.arenaBestiary[enemyID] >= 10000)
      {
         dropRate *= 2;
      }
      else if(_root.save.arenaBestiary[enemyID] >= 1000)
      {
         dropRate *= 1.5;
      }
      if(name == "Corrupted Giant Treeman" && ultra != true)
      {
         if(_root.saveid == 22)
         {
            _root.clearChallenge();
         }
         dropRate *= 5;
      }
      if(name == "CHAOS" && ultra != true)
      {
         dropRate *= 3;
      }
      if(name == "Chaos" && ultra != true)
      {
         dropRate *= 2;
      }
      if(name == "Chuck Norris" && ultra != true)
      {
         dropRate *= 3;
      }
      if(name == "Boss of DOOOOOOM" && ultra != true)
      {
         dropRate *= 3;
      }
      if(name == "THE MEGABOSS" && ultra != true)
      {
         dropRate *= 2;
      }
      if(name == "???")
      {
         dropRate *= 10;
      }
      if(_root.save.arenaZone == 60)
      {
         dropRate *= 0.3;
      }
      if(evolve == enemyID)
      {
         dropRate *= 0.1;
      }
   }
   function getBlueCoinReward()
   {
      if(ultra != true)
      {
         if(enemyID >= 222 && enemyID <= 225)
         {
            _root.gainBlueCoin(1);
         }
         if(enemyID == 226)
         {
            _root.gainBlueCoin(25);
         }
         if(enemyID == 227)
         {
            _root.gainBlueCoin(25);
         }
         if(enemyID == 229)
         {
            _root.gainBlueCoin(50);
         }
         if(enemyID >= 230 && enemyID <= 239)
         {
            _root.gainBlueCoin(2);
         }
         if(enemyID == 282)
         {
            _root.gainBlueCoin(10);
         }
         if(enemyID == 288)
         {
            _root.gainBlueCoin(10);
         }
         if(enemyID == 295)
         {
            _root.gainBlueCoin(30);
         }
         if(enemyID == 318 || enemyID == 319)
         {
            _root.gainBlueCoin(5);
         }
         if(enemyID == 320 || enemyID == 321)
         {
            _root.gainBlueCoin(20);
         }
         if(enemyID == 332)
         {
            _root.gainBlueCoin(5);
         }
         if(enemyID == 350)
         {
            _root.gainBlueCoin(50);
         }
         if(enemyID == 367)
         {
            _root.gainBlueCoin(5);
         }
         if(enemyID == 417 || enemyID == 421 || enemyID == 424 || enemyID == 429)
         {
            _root.gainBlueCoin(10);
         }
         if(enemyID == 430)
         {
            _root.gainBlueCoin(10);
         }
         if(enemyID == 431)
         {
            _root.gainBlueCoin(10);
         }
         if(enemyID == 432)
         {
            _root.gainBlueCoin(40);
         }
         if(enemyID == 437)
         {
            _root.gainBlueCoin(1);
         }
      }
   }
   function rollTukkonium()
   {
      if(_root.save.arenaZone >= 85 && _root.save.arenaZone <= 92 && Math.random() < 0.00005 * dropRate / 100)
      {
         if(_root.save.arenaZone == 85)
         {
            tukkoniumMult = 30;
         }
         else if(_root.save.arenaZone == 86)
         {
            tukkoniumMult = 1;
         }
         else if(_root.save.arenaZone == 87)
         {
            tukkoniumMult = 2;
         }
         else if(_root.save.arenaZone == 88)
         {
            tukkoniumMult = 4;
         }
         else if(_root.save.arenaZone == 89)
         {
            tukkoniumMult = 6;
         }
         else if(_root.save.arenaZone == 90)
         {
            tukkoniumMult = 10;
         }
         else if(_root.save.arenaZone == 91)
         {
            tukkoniumMult = 20;
         }
         else if(_root.save.arenaZone == 92)
         {
            tukkoniumMult = 2;
         }
         else
         {
            tukkoniumMult = 0;
         }
         if(_root.save.arenaHardcore == true)
         {
            tukkoniumMult *= 2;
         }
         tukkoniumChance = tukkoniumMult / 2500000;
         if(boss == true)
         {
            if(_root.save.arenaZone == 85)
            {
               tukkoniumChance *= 3000;
            }
            else if(_root.save.arenaZone == 86)
            {
               tukkoniumChance *= 2;
            }
            else if(_root.save.arenaZone == 87)
            {
               tukkoniumChance *= 5;
            }
            else if(_root.save.arenaZone == 88)
            {
               tukkoniumChance *= 10;
            }
            else if(_root.save.arenaZone == 89)
            {
               tukkoniumChance *= 25;
            }
            else if(_root.save.arenaZone == 90)
            {
               tukkoniumChance *= 100;
            }
            else if(_root.save.arenaZone == 91)
            {
               tukkoniumChance *= 1000;
            }
            else if(_root.save.arenaZone == 92)
            {
               tukkoniumChance *= 5;
            }
         }
         lootSoFar += 1;
         if(Math.random() < tukkoniumChance)
         {
            _root.incDt2();
            _parent.stuffHolder.attachMovie("newLoot21","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + _width / 2 - lootSoFar * 15,y:150,lootValue:1});
         }
         else
         {
            _root.incDt2();
            _parent.stuffHolder.attachMovie("newLoot16","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + _width / 2 - lootSoFar * 15,y:150,lootValue:5 * tukkoniumMult});
         }
      }
      else if(enemyID != 435 && Math.random() < 0.0001 * dropRate / 100)
      {
         lootSoFar += 1;
         if(Math.random() < (40 + Math.round(Math.random() * level / 150)) / 25000000)
         {
            _root.incDt2();
            _parent.stuffHolder.attachMovie("newLoot21","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + _width / 2 - lootSoFar * 15,y:150,lootValue:1});
         }
         else
         {
            _root.incDt2();
            _parent.stuffHolder.attachMovie("newLoot16","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + _width / 2 - lootSoFar * 15,y:150,lootValue:40 + Math.round(Math.random() * level / 150)});
         }
      }
      else if(Math.random() < 0.0005 * dropRate / 100)
      {
         lootSoFar += 1;
         if(Math.random() < (16 + Math.round(Math.random() * level / 375)) / 25000000)
         {
            _root.incDt2();
            _parent.stuffHolder.attachMovie("newLoot21","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + _width / 2 - lootSoFar * 15,y:150,lootValue:1});
         }
         else
         {
            _root.incDt2();
            _parent.stuffHolder.attachMovie("newLoot16","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + _width / 2 - lootSoFar * 15,y:150,lootValue:16 + Math.round(Math.random() * level / 375)});
         }
      }
      else if(enemyID == 435 && Math.random() < 0.004 * dropRate / 100)
      {
         lootSoFar += 1;
         if(Math.random() < (4 + Math.round(Math.random() * level / 1500)) / 25000000)
         {
            _root.incDt2();
            _parent.stuffHolder.attachMovie("newLoot21","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + _width / 2 - lootSoFar * 15,y:150,lootValue:1});
         }
         else
         {
            _root.incDt2();
            _parent.stuffHolder.attachMovie("newLoot16","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + _width / 2 - lootSoFar * 15,y:150,lootValue:4 + Math.round(Math.random() * level / 1500)});
         }
      }
      else if(boss == true && Math.random() < 0.005 * dropRate / 100)
      {
         lootSoFar += 1;
         if(Math.random() < (2 + Math.round(Math.random() * level / 3000)) / 25000000)
         {
            _root.incDt2();
            _parent.stuffHolder.attachMovie("newLoot21","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + _width / 2 - lootSoFar * 15,y:150,lootValue:1});
         }
         else
         {
            _root.incDt2();
            _parent.stuffHolder.attachMovie("newLoot16","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + _width / 2 - lootSoFar * 15,y:150,lootValue:2 + Math.round(Math.random() * level / 3000)});
         }
      }
      else if(Math.random() < 0.003 * dropRate / 100)
      {
         lootSoFar += 1;
         if(Math.random() < (1 + Math.round(Math.random() * level / 3000)) / 25000000)
         {
            _root.incDt2();
            _parent.stuffHolder.attachMovie("newLoot21","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + _width / 2 - lootSoFar * 15,y:150,lootValue:1});
         }
         else
         {
            _root.incDt2();
            _parent.stuffHolder.attachMovie("newLoot16","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + _width / 2 - lootSoFar * 15,y:150,lootValue:1 + Math.round(Math.random() * level / 3000)});
         }
      }
   }
   function getTBGEventPoints()
   {
      eventPointToGain = 55 + level / 200 + Math.min(_root.eventConsecKill,100);
      if(enemyID >= 481)
      {
         eventPointToGain *= 3;
      }
      else if(enemyID >= 475)
      {
         eventPointToGain *= 2;
      }
      else if(enemyID >= 469)
      {
         eventPointToGain *= 1;
      }
      else if(enemyID >= 462)
      {
         eventPointToGain *= 0.6;
      }
      else if(enemyID >= 456)
      {
         eventPointToGain *= 0.3;
      }
      else
      {
         eventPointToGain *= 0.1;
      }
      if(boss == true)
      {
         eventPointToGain *= 5;
         if(enemyID >= 481)
         {
            eventPointToGain *= 2;
         }
         else if(enemyID >= 475)
         {
            eventPointToGain *= 1.5;
         }
      }
      if(_root.save.arenaHardcore == true)
      {
         eventPointToGain *= 2;
      }
      if(_root.worstMoon == true)
      {
         eventPointToGain *= 1.6;
      }
      if(_root.apocalypse == true)
      {
         eventPointToGain *= 1.25;
      }
      if(_root.eventConsecKill <= 1)
      {
         eventPointToGain = 1;
      }
      else if(_root.eventConsecKill < 5)
      {
         eventPointToGain *= 0.05;
      }
      else if(_root.eventConsecKill < 10)
      {
         eventPointToGain *= 0.15;
      }
      else if(_root.eventConsecKill < 20)
      {
         eventPointToGain *= 0.25;
      }
      else if(_root.eventConsecKill < 50)
      {
         eventPointToGain *= 0.35;
      }
      else
      {
         eventPointToGain *= 0.5;
      }
      if(lifespan > 15)
      {
         eventPointToGain *= 0.5;
      }
      else if(lifespan > 5)
      {
         eventPointToGain *= 1.25 - lifespan / 20;
      }
      if(lifespan < 1 && _root.eventConsecKill >= 10)
      {
         eventPointToGain *= 2;
      }
      if(isNaN(eventPointToGain))
      {
         eventPointToGain = 1;
      }
      _root.incDt2();
      _parent.stuffHolder.attachMovie("epSupply","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + _width / 2 + 10,y:140,lootValue:Math.ceil(eventPointToGain)});
   }
   function getIALoot()
   {
      allyDropChance = _root.areaAllyChance;
      if(name == "Idle Dummy")
      {
         allyDropChance = 1;
      }
      if(enemyID == 322 && level >= 7000)
      {
         allyDropChance = 0.05;
      }
      else if(enemyID == 435 && level >= 8400)
      {
         allyDropChance = 0.25;
      }
      else if(name == "Secret Crystal")
      {
         allyDropChance = 0;
      }
      if(name == "THE MEGABOSS")
      {
         allyDropChance = 0.2;
      }
      if(name == "Chuck Norris")
      {
         allyDropChance = 0.5;
      }
      if(name == "Boss of DOOOOOOM")
      {
         allyDropChance = 0.2;
      }
      if(rare != true)
      {
         allyDropChance = 0;
      }
      if(_root.save.arenaZone != 20 && _root.save.arenaZone != 52 && _root.save.arenaZone != 56 && _root.save.arenaZone != 68)
      {
         allyDropChance = allyDropChance * dropRate / 100000;
      }
      else
      {
         allyDropChance /= 100;
      }
      if(Math.random() < allyDropChance && isNaN(_root.save.arenaAllyEXP[enemyID]) && _root.save.arenaLevel >= 35)
      {
         lootValue = enemyID;
         lootSoFar += 1;
         _root.incDt2();
         _parent.stuffHolder.attachMovie("newLoot13","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + _width / 2 - lootSoFar * 15,y:150,lootValue:lootValue});
      }
   }
   function getChipLoot()
   {
      chipDropChance = allyDropChance / 10;
      if(_root.save.arenaHardcore == true)
      {
         chipDropChance *= 2;
      }
      if(_root.worstMoon == true)
      {
         chipDropChance *= 3;
      }
      if(_root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Good Luck")
      {
         chipDropChance *= 1.5;
      }
      if(_root.apocalypse == true)
      {
         chipDropChance *= 2;
      }
      if(Math.random() < chipDropChance && !isNaN(_root.save.arenaAllyEXP[enemyID]))
      {
         itemToGet = 0;
         if(ultra == true && Math.random() < 0.25)
         {
            if(Math.random() < 0.05 && ultra2 == true)
            {
               itemToGet = 3;
            }
            else if(Math.random() < 0.5 && ultra2 == true)
            {
               itemToGet = 2;
            }
            else if(Math.random() < 0.25)
            {
               itemToGet = 2;
            }
            else
            {
               itemToGet = 1;
            }
         }
         else if(epic == true && Math.random() < 0.1)
         {
            if(Math.random() < 0.001 && _root.save.arenaBestiary[enemyID] >= 1000000 || _root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Good Luck" && Math.random() < 0.025 && _root.save.arenaBestiary[enemyID] >= 1000000)
            {
               itemToGet = 3;
            }
            else if(Math.random() < 0.05 && _root.save.arenaBestiary[enemyID] >= 10000 || _root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Good Luck" && Math.random() < 0.25 && _root.save.arenaBestiary[enemyID] >= 10000)
            {
               itemToGet = 2;
               if((_root.save.arenaZone == 59 || _root.save.arenaZone == 94) && Math.random() < 0.000025 * _root.save.arenaCorruptWmDifficulty * _root.save.arenaCorruptWmDifficulty * _root.save.arenaCorruptWmDifficulty)
               {
                  itemToGet = 3;
               }
            }
            else
            {
               itemToGet = 1;
               if((_root.save.arenaZone == 59 || _root.save.arenaZone == 94) && Math.random() < 0.0001 * _root.save.arenaCorruptWmDifficulty * _root.save.arenaCorruptWmDifficulty * _root.save.arenaCorruptWmDifficulty)
               {
                  itemToGet = 2;
               }
            }
         }
         else if(Math.random() < 0.05)
         {
            if(Math.random() < 0.002 && _root.save.arenaBestiary[enemyID] >= 100000 || _root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Good Luck" && Math.random() < 0.01 && _root.save.arenaBestiary[enemyID] >= 100000)
            {
               itemToGet = 2;
               if((_root.save.arenaZone == 59 || _root.save.arenaZone == 94) && Math.random() < 0.000025 * _root.save.arenaCorruptWmDifficulty * _root.save.arenaCorruptWmDifficulty * _root.save.arenaCorruptWmDifficulty)
               {
                  itemToGet = 3;
               }
            }
            else if(Math.random() < 0.1)
            {
               itemToGet = 1;
               if((_root.save.arenaZone == 59 || _root.save.arenaZone == 94) && Math.random() < 0.0001 * _root.save.arenaCorruptWmDifficulty * _root.save.arenaCorruptWmDifficulty * _root.save.arenaCorruptWmDifficulty)
               {
                  itemToGet = 2;
               }
            }
         }
         if(itemToGet != 0)
         {
            if(itemToGet == 1)
            {
               itemArray = ["Monster Chip (Rare)",3,enemyID,0,0,16,pixel,Infinity,"Monster Chip R-" + enemyID,""];
            }
            else if(itemToGet == 2)
            {
               itemArray = ["Monster Chip (Epic)",4,enemyID,0,0,36,10 * pixel,Infinity,"Monster Chip E-" + enemyID,""];
            }
            else if(itemToGet == 3)
            {
               itemArray = ["Monster Chip (Ultra)",5,enemyID,0,0,706,100 * pixel,Infinity,"Monster Chip U-" + enemyID,""];
            }
            if(itemArray[9] != "")
            {
               descX = itemArray[9] + "\n\nDropped by: " + name;
            }
            else
            {
               descX = "Dropped by: " + name;
            }
            _root.incDt2();
            _parent.stuffHolder.attachMovie("invenLoot","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + _width / 2 - lootSoFar * 15,y:150,type:"Chip",subtype:itemArray[0],frame:itemArray[1],attack:itemArray[2],defense:itemArray[3],enhance:itemArray[4],bonusPow:itemArray[5],sell:itemArray[6],expiry:itemArray[7],name:itemArray[8],desc:descX});
         }
      }
   }
   function death()
   {
      if(enemyID == 0)
      {
         return undefined;
      }
      if(_root.save.arenaZone == 47)
      {
         _root.arenaPoison = 0;
         _root.arenaWeaken = 0;
         _root.arenaBlind = 0;
         _root.arenaSlow = 0;
         _root.arenaStun = 0;
         _root.arenaZombify = 0;
         _root.arenaPotionBlock = 0;
      }
      else if(_root.save.arenaZone == 50)
      {
         _root.areaCorruptKill += 1;
         if(_root.areaCorruptKill >= _root.areaCorruptReq)
         {
            _root.save.arenaZone = 84;
         }
      }
      else if(_root.save.arenaZone == 59)
      {
         _root.save.arenaZone = 94;
      }
      else if(_root.save.arenaZone == 52)
      {
         _root.areaSpookyKill += 1;
         if(_root.save.questType == "Special")
         {
            if(_root.save.questSubtype == "Spooky Crypt Score")
            {
               if(_root.save.questCount < _root.areaSpookyKill)
               {
                  _root.save.questCount = _root.areaSpookyKill;
               }
            }
         }
         if(_root.save.arenaSpookyToday < _root.areaSpookyKill)
         {
            _root.save.arenaSpookyToday = _root.areaSpookyKill;
            if(_root.save.arenaSpookyToday == 1000)
            {
               itemAttack = 0;
               itemSpeed = 0;
               itemDefense = 0;
               itemCrit = 0;
               itemDexterity = 0;
               itemHealth = 0;
               itemBonusPow = 0;
               if(Math.random() < 0.4)
               {
                  itemAttack += 8 * (random(10) + 6);
                  itemBonusPow += itemAttack * 4;
               }
               if(Math.random() < 0.4)
               {
                  itemSpeed += 2 * (random(4) + 2);
                  itemBonusPow += itemSpeed * 40;
               }
               if(Math.random() < 0.4)
               {
                  itemDefense += 8 * (random(10) + 6);
                  itemBonusPow += itemDefense * 2;
               }
               if(Math.random() < 0.3)
               {
                  itemCrit += 4 * (random(10) + 6);
                  itemBonusPow += itemCrit * 10;
               }
               if(Math.random() < 0.3)
               {
                  itemDexterity += 4 * (random(10) + 6);
                  itemBonusPow += itemDexterity * 10;
               }
               if(Math.random() < 0.3)
               {
                  itemHealth += 4 * (random(10) + 6);
                  itemBonusPow += itemHealth * 10;
               }
               _root.getArenaAccessory(_root.save.arenaLevel,"Pendant",5,itemAttack,itemSpeed,itemDefense,itemCrit,itemDexterity,itemHealth,1,0,1,0,10,itemBonusPow,"Random","Random","Random",250000,Infinity,false,true,false,false,20,"Immortal Pendant","An item awarded for reaching a kill streak of 1,000 in Spooky Crypt.",false,true);
            }
            if(_root.save.arenaSpookyToday == 2000)
            {
               _root.getArenaEnhancer("Accessory Unobtainium Enhancer",380,10,0,100,"","","",0,2506,0,172800000,"Accessory Unobtainium Enhancer Lv. 10","An item awarded for reaching a kill streak of 2,000 in Spooky Crypt.",false,true);
            }
            if(_root.save.arenaSpookyToday >= 5000 && _root.save.arenaSpookyToday % 5000 == 0)
            {
               _root.getArenaEnhancer("Accessory Unique Enhancer",420,50,0,100,"","","",0,706,0,172800000,"Accessory Unique Enhancer Lv. 50","An item awarded for reaching a kill streak of " + _root.withComma(_root.save.arenaSpookyToday) + " in Spooky Crypt.",false,true);
            }
         }
         if(_root.save.arenaSpookyScore < _root.areaSpookyKill)
         {
            _root.save.arenaSpookyScore = _root.areaSpookyKill;
         }
      }
      else if(_root.save.arenaZone == 56)
      {
         _root.areaRevengeKill += 1;
         if(_root.save.questType == "Special")
         {
            if(_root.save.questSubtype == "MB\'s Revenge Score")
            {
               if(_root.save.questCount < _root.areaRevengeKill)
               {
                  _root.save.questCount = _root.areaRevengeKill;
               }
            }
         }
         if(_root.save.arenaRevengeScore < _root.areaRevengeKill)
         {
            _root.save.arenaRevengeScore = _root.areaRevengeKill;
         }
      }
      else if((_root.save.arenaZone >= 62 && _root.save.arenaZone <= 67 || _root.save.arenaZone >= 86 && _root.save.arenaZone <= 91) && _root.areaFairyPower == false)
      {
         if(boss == true)
         {
            if(_root.save.arenaZone <= 67)
            {
               _root.areaFairyPerformance += _root.save.arenaZone - 57;
            }
            else
            {
               _root.areaFairyPerformance += _root.save.arenaZone - 81;
            }
         }
         else
         {
            _root.areaFairyPerformance += 1;
         }
         if(_root.setCount[37] == 5 || _root.setCount[38] >= 5)
         {
            if(boss == true)
            {
               if(_root.save.arenaZone <= 67)
               {
                  _root.areaFairyPerformance += _root.save.arenaZone - 57;
               }
               else
               {
                  _root.areaFairyPerformance += _root.save.arenaZone - 81;
               }
            }
            else
            {
               _root.areaFairyPerformance += 1;
            }
         }
         if(_root.areaFairyPerformance >= 200)
         {
            _root.areaFairyPower = true;
         }
      }
      else if(_root.save.arenaZone == 68)
      {
         _root.areaTriangleKill += 1;
         if(_root.save.questType == "Special")
         {
            if(_root.save.questSubtype == "Triangle Hideout Score")
            {
               if(_root.save.questCount < _root.areaTriangleKill)
               {
                  _root.save.questCount = _root.areaTriangleKill;
               }
            }
         }
         if(_root.save.arenaTriangleToday < _root.areaTriangleKill)
         {
            _root.save.arenaTriangleToday = _root.areaTriangleKill;
            if(_root.save.arenaTriangleToday == 100)
            {
               _root.getArenaEnhancer("Armor Unique Enhancer",410,10,0,100,"","","",0,1337,0,172800000,"Armor Unique Enhancer Lv. 10","An item awarded for reaching a kill streak of 100 in Triangle Hideout.",false,true);
            }
            if(_root.save.arenaTriangleToday == 200)
            {
               _root.getArenaEnhancer("Weapon Unique Enhancer",400,10,0,100,"","","",0,1337,0,172800000,"Weapon Unique Enhancer Lv. 10","An item awarded for reaching a kill streak of 200 in Triangle Hideout.",false,true);
            }
            if(_root.save.arenaTriangleToday >= 500 && _root.save.arenaTriangleToday % 500 == 0)
            {
               _root.getArenaEnhancer("Accessory Unique Enhancer",420,100,0,100,"","","",0,1337,0,172800000,"Accessory Unique Enhancer Lv. 100","An item awarded for reaching a kill streak of " + _root.withComma(_root.save.arenaTriangleToday) + " in Triangle Hideout.",false,true);
            }
         }
         if(_root.save.arenaTriangleScore < _root.areaTriangleKill)
         {
            _root.save.arenaTriangleScore = _root.areaTriangleKill;
         }
      }
      else if(_root.save.arenaZone == 13)
      {
         _root.save.triangleLandKill += 1;
      }
      else if(_root.save.arenaZone == 70)
      {
         _root.save.apocSecretKill += 1;
         if(_root.save.apocSecretKill == 100)
         {
            _root.fightStat2 = "NOTICE: ADVANCING WALL OF DOOM ACTIVATED!";
         }
      }
      else if(_root.save.arenaZone == 82)
      {
         _root.eventConsecKill += 1;
         getTBGEventPoints();
      }
      if(enemyID == 487)
      {
         _root.save.strangeBoxKill += 1;
      }
      careerExpGain = 0;
      if(_root.save.arenaZone == 29)
      {
         _root.save.arenaProofTraining += 1;
         _root.dispNews(66,"You have gained 1 [Proof of Training]!");
         careerExpGain += 10;
      }
      if(enemyID == 350 && _root.raidBonus > 0 && ultra != true)
      {
         _root.towerCooldown = 0;
         getDoomItem();
         if(_root.save.arenaZone == 47)
         {
            if(_root.save.raidTower < _root.raidDamage)
            {
               _root.save.raidTower = _root.raidDamage;
            }
         }
      }
      if(name == "THE MEGABOSS" && ultra != true && !isNaN(_root.raidBonus))
      {
         if(_root.saveid == 21)
         {
            _root.clearChallenge();
         }
         if(_root.save.raidMegaboss < _root.raidTimeLeft * 1000)
         {
            _root.save.raidMegaboss = _root.raidTimeLeft * 1000;
         }
         _root.save.arenaProofTraining += 30 + 10 * _root.raidBonus;
         _root.dispNews(66,"You have gained " + (30 + 10 * _root.raidBonus) + " [Proof of Training]!");
         diffDisplay = "";
         if(_root.save.arenaHardcore == true && _root.apocalypse == true)
         {
            diffDisplay = "(Hardcore / Apocalypse)";
         }
         else if(_root.apocalypse == true)
         {
            diffDisplay = "(Casual / Apocalypse)";
         }
         else if(_root.save.arenaHardcore == true && _root.worstMoon == true)
         {
            diffDisplay = "(Hardcore / Worst Moon)";
         }
         else if(_root.worstMoon == true)
         {
            diffDisplay = "(Casual / Worst Moon)";
         }
         else if(_root.save.arenaHardcore == true)
         {
            diffDisplay = "(Hardcore)";
         }
         else
         {
            diffDisplay = "(Casual)";
         }
         if(_root.raidBonus >= 6)
         {
            careerExpGain += 600;
            _root.getArenaWeapon(500,"Trophy",299,false,1337,50,500,90,90,0,1,0,1,0,6,500,"Random","Random","Random",2500000,1296000000,false,true,true,false,false,10,"Unobtainium Trophy","A trophy awarded for beating The Special Arena with a score of " + _root.withComma(_root.raidTimeLeft * 1000) + " " + diffDisplay + ".",false,true);
         }
         else if(_root.raidBonus >= 5)
         {
            careerExpGain += 500;
            _root.getArenaWeapon(350,"Trophy",298,false,1237,50,400,80,80,0,1,0,1,0,7,400,"Random","Random","Random",1000000,1296000000,false,true,true,false,false,9,"Platinum Trophy","A trophy awarded for beating The Special Arena with a score of " + _root.withComma(_root.raidTimeLeft * 1000) + " " + diffDisplay + ".",false,true);
         }
         else if(_root.raidBonus >= 4)
         {
            careerExpGain += 400;
            _root.getArenaWeapon(250,"Trophy",195,false,1137,50,300,70,70,0,1,0,1,0,8,300,"Random","Random","Random",500000,1296000000,false,true,true,false,false,8,"Gold Trophy","A trophy awarded for beating The Special Arena with a score of " + _root.withComma(_root.raidTimeLeft * 1000) + " " + diffDisplay + ".",false,true);
         }
         else if(_root.raidBonus >= 3)
         {
            careerExpGain += 300;
            _root.getArenaWeapon(180,"Trophy",194,false,1037,50,200,60,60,0,1,0,1,0,9,200,"Random","Random","Random",250000,1296000000,false,true,true,false,false,7,"Silver Trophy","A trophy awarded for beating The Special Arena with a score of " + _root.withComma(_root.raidTimeLeft * 1000) + " " + diffDisplay + ".",false,true);
         }
         else if(_root.raidBonus >= 2)
         {
            careerExpGain += 200;
            _root.getArenaWeapon(120,"Trophy",193,false,937,50,100,50,50,0,1,0,1,0,10,100,"Random","Random","Random",100000,1296000000,false,true,true,false,false,6,"Bronze Trophy","A trophy awarded for beating The Special Arena with a score of " + _root.withComma(_root.raidTimeLeft * 1000) + " " + diffDisplay + ".",false,true);
         }
         careerExpGain += 400;
      }
      if(name == "Chuck Norris" && ultra != true)
      {
         if(_root.save.arenaSkill[103] < 30)
         {
            _root.save.arenaSkill[103] += 1;
            _root.dispNews(47,"You have learned Roundhouse Kick Lv. " + _root.save.arenaSkill[103] + "!");
            _root.house.arena.skillBar.gotoAndStop(3);
         }
         careerExpGain += 1000;
      }
      if(_root.save.arenaZone == 47)
      {
         if(_root.doomTowerTaunt == 100)
         {
            _root.save.arenaProofTraining += 2;
            _root.dispNews(66,"You have gained 2 [Proof of Training]!");
         }
         else
         {
            _root.save.arenaProofTraining += 1;
            _root.dispNews(66,"You have gained 1 [Proof of Training]!");
         }
         careerExpGain += 10 + Math.floor(_root.doomTowerTaunt / 10);
         _root.doomTowerDel = 4;
      }
      if(name == "Boss of DOOOOOOM" && ultra != true)
      {
         _root.save.arenaProofTraining += 30 + Math.floor(_root.doomTowerTaunt / 5);
         _root.dispNews(66,"You have gained " + (30 + Math.floor(_root.doomTowerTaunt / 5)) + " [Proof of Training]!");
         careerExpGain += 500 + Math.floor(_root.doomTowerTaunt * 5);
      }
      if(enemyID == 432 && ultra != true)
      {
         if(_root.dungeonAntiCurse == false)
         {
            _root.save.arenaProofTraining += 150 + _root.dungeonChestOpen * 15;
            _root.dispNews(66,"You have gained " + _root.withComma(150 + _root.dungeonChestOpen * 15) + " [Proof of Training]!");
            careerExpGain += 1000 + _root.dungeonChestOpen * 100;
         }
         else
         {
            _root.save.arenaProofTraining += 30;
            _root.dispNews(66,"You have gained 30 [Proof of Training]!");
            careerExpGain += 200;
         }
         _root.killedChaos = true;
         _root.save.arenaZone = 55;
      }
      if(epic == true)
      {
         exp = Math.floor(exp * 1.2);
         bonusExp = _root.abilIncExpEpic + _root.abilIncExpRare;
         if(bonusExp > origExp * 4.8 || isNaN(bonusExp))
         {
            bonusExp = origExp * 4.8;
         }
         exp += Math.floor(bonusExp);
         coin = Math.floor(coin * 1.5);
         pixel = Math.floor(pixel * 1.5);
      }
      else if(rare == true)
      {
         bonusExp = _root.abilIncExpRare;
         if(bonusExp > origExp * 2 || isNaN(bonusExp))
         {
            bonusExp = origExp * 2;
         }
         exp += Math.floor(bonusExp);
         coin = Math.floor(coin * 1.2);
         pixel = Math.floor(pixel * 1.2);
      }
      if(boss == true)
      {
         bonusExp = _root.abilIncExpBoss;
         if(bonusExp > origExp || isNaN(bonusExp))
         {
            bonusExp = origExp;
         }
         exp += Math.floor(bonusExp);
      }
      expPenalty2 = 0;
      if(enemyRank == 1 && _root.save.inventoryName[_root.save.arenaTrinket] != "Yellow Madness Gem")
      {
         expPenalty2 = 10;
      }
      if(exp >= 2000000 && _root.cursoridle < 300)
      {
         if(_root.save.boost < _root.boostMax * 2.5 - 1 && _root.save.megaBoostPotion >= 1 && _root.save.boostAuto2 == true)
         {
            _root.save.megaBoostPotion -= 1;
            _root.gainBoost(9999,4);
            _root.save.boost = _root.boostMax * 2.5;
            if(_root.save.boostFreeze < 45 + Math.min(Math.floor(_root.save.totalStupidity / 500),250))
            {
               _root.save.boostFreeze = 45 + Math.min(Math.floor(_root.save.totalStupidity / 500),250);
            }
         }
      }
      expToGain = Math.floor(exp * (100 - expPenalty2) * _root.save.boost / 10000 * (1 + _root.save.petStat[2] * 0.002));
      coinToGain = Math.floor(coin * _root.save.boost / 100);
      pixelToGain = pixel;
      expPenalty = (Math.sqrt(_root.save.arenaLevel * 40) - Math.sqrt(level)) * 1.5;
      if(expPenalty > 80)
      {
         expPenalty = 80;
      }
      if(expPenalty < 0)
      {
         expPenalty = 0;
      }
      if(_root.save.inventoryName[_root.save.arenaTrinket] == "Auto Buff Gem")
      {
         _root.gainBoost(0.5,3);
      }
      _root.save.arenaKill += 1;
      if(_root.save.arenaLevel >= 20 && enemyID == _root.save.arenaKommanderMonID && _root.save.arenaKommanderProgress < _root.save.arenaKommanderMonCount)
      {
         _root.save.arenaKommanderProgress += 1;
         if(_root.save.arenaKommanderProgress < _root.save.arenaKommanderMonCount && _root.save.inventoryName[_root.save.arenaTrinket] == "Mission Kommander\'s Gem")
         {
            _root.save.arenaKommanderProgress += 1;
         }
         _root.fightStat2 = "" + _root.enemyList[_root.save.arenaKommanderMonID].name + ": " + _root.withComma(_root.save.arenaKommanderProgress) + " / " + _root.withComma(_root.save.arenaKommanderMonCount);
      }
      if(_root.save.questType == "Kill")
      {
         if(_root.save.questSubtype == "Pyramid" && _root.save.arenaZone == 20)
         {
            _root.save.questCount += 1;
         }
         if(_root.save.questSubtype == "Alien" && (_root.save.arenaZone >= 31 && _root.save.arenaZone <= 43 || _root.save.arenaZone >= 23 && _root.save.arenaZone <= 24))
         {
            _root.save.questCount += 1;
         }
         if(_root.save.questSubtype == "The Corruption" && _root.save.arenaZone == 50)
         {
            _root.save.questCount += 1;
         }
         if(_root.save.questSubtype == name)
         {
            _root.save.questCount += 1;
         }
         if(_root.save.questSubtype == "Any")
         {
            _root.save.questCount += 1;
         }
      }
      checkType();
      if(_root.save.arenaHardcore == true)
      {
         careerExpGain += 0.5;
      }
      _root.specPolearmCD += 3;
      if(_root.save.arenaAlly != 0)
      {
         allyExpGain = 0;
         if(level >= _root.enemyList[_root.save.arenaAlly].level)
         {
            allyExpGain += 2;
            if(boss == true)
            {
               allyExpGain += 3;
            }
         }
         if(_root.save.arenaZone == 52)
         {
            allyExpGain = 1;
         }
         if(_root.save.arenaAlly == enemyID)
         {
            allyExpGain = 20;
            if(rare == true)
            {
               allyExpGain = 50;
            }
            if(epic == true)
            {
               allyExpGain = 100;
            }
         }
         allyExpBefore = _root.save.arenaAllyEXP[_root.save.arenaAlly];
         _root.save.arenaAllyEXP[_root.save.arenaAlly] += allyExpGain;
         allyExpAfter = _root.save.arenaAllyEXP[_root.save.arenaAlly];
         if(allyExpGain > 0 && allyExpBefore < 10000)
         {
            _root.dispNews(33,"[" + _root.enemyList[_root.save.arenaAlly].name + "]\'s EXP: " + _root.withComma(allyExpBefore) + " --> " + _root.withComma(allyExpAfter));
            if(allyExpAfter >= 10000)
            {
               _root.dispNews(34,"[" + _root.enemyList[_root.save.arenaAlly].name + "] ALLY MASTERED!");
               _root.checkBestiary();
            }
         }
      }
      _root.save.arenaZoneKill[_root.save.arenaZone] += 1;
      _root.save.arenaBestiary[enemyID] += 1;
      if(isNaN(_root.save.arenaBestiary[enemyID]))
      {
         _root.save.arenaBestiary[enemyID] = 1;
      }
      if(ultra == true)
      {
         _root.save.arenaAllyUpgrade[enemyID] = 15;
      }
      if(ultra3 == true)
      {
         _root.save.arenaBestiary[enemyID] += 100000;
         _root.save.arenaBestiaryExtra[enemyID] += 100000;
         if(isNaN(_root.save.arenaBestiaryExtra[enemyID]))
         {
            _root.save.arenaBestiaryExtra[enemyID] = 100000;
         }
         _root.save.arenaBestiaryUlt3[enemyID] += 1;
         if(isNaN(_root.save.arenaBestiaryUlt3[enemyID]))
         {
            _root.save.arenaBestiaryUlt3[enemyID] = 1;
         }
         _root.save.arenaBestiaryUlt3V[enemyID] = _root.upnumber;
         if(_root.save.arenaBestiaryUlt3F[enemyID] == undefined)
         {
            _root.save.arenaBestiaryUlt3F[enemyID] = _root.clock_display2;
         }
         _root.fightStat = "ULTRA-3 [" + _root.enemyList[enemyID].name + "] killed!";
         _root.fightStat2 = "Monster Kill Count +100,000";
         _root.updateFightStatA = 1;
         _root.updateFightStatB = 1;
      }
      else if(ultra2 == true)
      {
         _root.save.arenaBestiary[enemyID] += 10000;
         _root.save.arenaBestiaryExtra[enemyID] += 10000;
         if(isNaN(_root.save.arenaBestiaryExtra[enemyID]))
         {
            _root.save.arenaBestiaryExtra[enemyID] = 10000;
         }
         _root.save.arenaBestiaryUlt2[enemyID] += 1;
         if(isNaN(_root.save.arenaBestiaryUlt2[enemyID]))
         {
            _root.save.arenaBestiaryUlt2[enemyID] = 1;
         }
         _root.save.arenaBestiaryUlt2V[enemyID] = _root.upnumber;
         if(_root.save.arenaBestiaryUlt2F[enemyID] == undefined)
         {
            _root.save.arenaBestiaryUlt2F[enemyID] = _root.clock_display2;
         }
         _root.fightStat = "ULTRA-2 [" + _root.enemyList[enemyID].name + "] killed!";
         _root.fightStat2 = "Monster Kill Count +10,000";
         _root.updateFightStatA = 1;
         _root.updateFightStatB = 1;
      }
      else if(ultra1 == true)
      {
         _root.save.arenaBestiary[enemyID] += 1000;
         _root.save.arenaBestiaryExtra[enemyID] += 1000;
         if(isNaN(_root.save.arenaBestiaryExtra[enemyID]))
         {
            _root.save.arenaBestiaryExtra[enemyID] = 1000;
         }
         _root.save.arenaBestiaryUlt1[enemyID] += 1;
         if(isNaN(_root.save.arenaBestiaryUlt1[enemyID]))
         {
            _root.save.arenaBestiaryUlt1[enemyID] = 1;
         }
         _root.save.arenaBestiaryUlt1V[enemyID] = _root.upnumber;
         if(_root.save.arenaBestiaryUlt1F[enemyID] == undefined)
         {
            _root.save.arenaBestiaryUlt1F[enemyID] = _root.clock_display2;
         }
         _root.fightStat = "ULTRA-1 [" + _root.enemyList[enemyID].name + "] killed!";
         _root.fightStat2 = "Monster Kill Count +1,000";
         _root.updateFightStatA = 1;
         _root.updateFightStatB = 1;
      }
      if(_root.challengeCompatible == true && _root.challengeZone != _root.save.arenaZone && _root.challengeDuration < -90 && Math.random() < 0.005 * _root.challengeRewardMul && _root.save.arenaLevel >= 30)
      {
         _root.fightStat2 = "A Time Attack Challenge has appeared!";
         _root.challengeZone = _root.save.arenaZone;
      }
      if(_root.challengeZone == _root.save.arenaZone && _root.save.arenaZone && _root.challengeDuration > 0)
      {
         _root.challengeKill += 1;
      }
      _root.trackZoneKill();
      if(_root.save.arenaZone == 47)
      {
         towerMult = 200;
         if(_root.save.arenaHardcore == true)
         {
            towerMult += 100;
         }
         if(_root.worstMoon == true)
         {
            towerMult += 150;
         }
         if(_root.apocalypse == true)
         {
            towerMult += 50;
         }
         if(enemyID == 349)
         {
            towerMult *= 100;
         }
         else if(enemyID == 350 || enemyID == 348)
         {
            towerMult *= 30;
         }
         else
         {
            towerMult *= 10 + _root.doomTowerSpawn;
         }
         _root.raidDamage += Math.floor(towerMult * (_root.doomTowerTaunt * 2 + 100) * _root.raidTimeLeft);
         _root.doomTowerTaunt = 0;
      }
      bonusExpPct = _root.save.bannedB * 10;
      if(bonusExpPct > 100)
      {
         bonusExpPct = 100;
      }
      if(_root.save.arenaLevel >= 2 && _root.save.arenaLevel <= 12)
      {
         bonusExpPct = 100;
      }
      if(isNaN(bonusExpPct))
      {
         bonusExpPct = 0;
      }
      arenaExpGain = Math.floor((100 - expPenalty) * exp * (1 + bonusExpPct / 100) / 100);
      allyExpBonus = Math.ceil(_root.save.arenaAllyEXP[enemyID] / 1000);
      if(_root.save.arenaAllyEXP[enemyID] >= 10000)
      {
         allyExpBonus = 20;
      }
      if(isNaN(_root.save.arenaAllyEXP[enemyID]))
      {
         allyExpBonus = 0;
      }
      if(allyExpBonus > 0)
      {
         expToGain = Math.floor(expToGain * (100 + allyExpBonus) / 100);
         arenaExpGain = Math.floor(arenaExpGain * (100 + allyExpBonus) / 100);
         _root.dispNews(31,"Invisible Ally EXP Bonus! (+" + allyExpBonus + "% EXP)");
      }
      if(_root.save.arenaBestiary[enemyID] == 100000 || _root.save.arenaBestiary[enemyID] == 10000 || _root.save.arenaBestiary[enemyID] == 1000 || _root.save.arenaBestiary[enemyID] == 100 || _root.save.arenaBestiary[enemyID] == 10 || _root.save.arenaBestiary[enemyID] == 1 || ultra == true)
      {
         _root.checkBestiary();
      }
      if(_root.save.featureBestiary == true)
      {
         getBestiaryBonus();
      }
      if(_root.save.bannedB > 0 && _root.save.arenaLevel < 500)
      {
         if(_root.save.arenaLevel >= 400)
         {
            expToGain = Math.floor(expToGain * 1.05);
         }
         else if(_root.save.arenaLevel >= 300)
         {
            expToGain = Math.floor(expToGain * 1.1);
         }
         else if(_root.save.arenaLevel >= 200)
         {
            expToGain = Math.floor(expToGain * 1.15);
         }
         else if(_root.save.arenaLevel >= 100)
         {
            expToGain = Math.floor(expToGain * 1.2);
         }
         else
         {
            expToGain = Math.floor(expToGain * 1.25);
         }
      }
      if(arenaExpGain > 1300)
      {
         careerExpGain += Math.floor(Math.pow(arenaExpGain,0.25) * 10 - 50) / 10;
      }
      _root.gainCareerEXP(3,Math.floor(careerExpGain),true);
      _root.save.arenaExp += arenaExpGain;
      _parent.showDamage("A.EXP +" + _root.withComma(arenaExpGain),10092288,62.5,45);
      _root.save.inventoryExp[_root.save.arenaWeapon] += Math.floor(arenaExpGain * 100 / (100 + _root.save.inventoryLevel[_root.save.arenaWeapon]));
      _root.save.inventoryExp[_root.save.arenaHat] += Math.floor(arenaExpGain * 100 / (100 + _root.save.inventoryLevel[_root.save.arenaHat]));
      _root.save.inventoryExp[_root.save.arenaShirt] += Math.floor(arenaExpGain * 100 / (100 + _root.save.inventoryLevel[_root.save.arenaShirt]));
      _root.save.inventoryExp[_root.save.arenaGloves] += Math.floor(arenaExpGain * 100 / (100 + _root.save.inventoryLevel[_root.save.arenaGloves]));
      _root.save.inventoryExp[_root.save.arenaPants] += Math.floor(arenaExpGain * 100 / (100 + _root.save.inventoryLevel[_root.save.arenaPants]));
      _root.save.inventoryExp[_root.save.arenaShoes] += Math.floor(arenaExpGain * 100 / (100 + _root.save.inventoryLevel[_root.save.arenaShoes]));
      _root.save.inventoryExp[_root.save.arenaSkin] += Math.floor(arenaExpGain * 100 / (100 + _root.save.inventoryLevel[_root.save.arenaSkin]));
      _root.save.inventoryExp[_root.save.arenaMedal] += Math.floor(arenaExpGain * 100 / (100 + _root.save.inventoryLevel[_root.save.arenaMedal]));
      _root.save.inventoryExp[_root.save.arenaPendant] += Math.floor(arenaExpGain * 100 / (100 + _root.save.inventoryLevel[_root.save.arenaPendant]));
      _root.save.inventoryExp[_root.save.arenaEarring] += Math.floor(arenaExpGain * 100 / (100 + _root.save.inventoryLevel[_root.save.arenaEarring]));
      _root.save.inventoryExp[_root.save.arenaTrinket] += Math.floor(arenaExpGain * 100 / (100 * _root.save.inventoryLevel[_root.save.arenaTrinket]));
      if(_root.robaconActive == true)
      {
         _root.save.inventoryExp[400] += Math.floor(arenaExpGain * 150 / (100 + _root.save.inventoryLevel[400]));
         if(_root.save.robaconLevel < _root.save.arenaLevel)
         {
            _root.save.robaconExp += Math.floor(arenaExpGain * 1.5);
         }
         else
         {
            _root.save.robaconExp = 0;
         }
      }
      _root.gainEXP(expToGain);
      _root.gainCoin(coinToGain);
      _root.gainGreenCoin(18 + enemyRank * enemyRank * 2 + Math.min(Math.floor(_root.enemyList[enemyID].coin / 100),950));
      _root.save.arenaPixel += pixelToGain;
      if(_root.manaPower == true)
      {
         _root.save.arenaMana += _root.manaEater * 25;
      }
      else
      {
         _root.save.arenaMana += _root.manaEater;
      }
      if(_root.save.arenaRing == 11 && boss == true)
      {
         _root.save.arenaMana = _root.maxMana;
         _root.save.arenaSpirit += 15;
      }
      if(Math.random() < _root.save.arenaSkill[37] * 0.01)
      {
         _root.save.arenaSpirit += 3;
      }
      _root.save.arenaSpirit += 5;
      getDropRate();
      getBlueCoinReward();
      if(enemyID == 322)
      {
         dropRate *= 0.25 + level / 3000;
         _root.gainCareerEXP(4,1,true);
      }
      if(enemyID == 435)
      {
         dropRate *= 0.25 + level / 300;
         _root.gainCareerEXP(4,10,true);
      }
      lootSoFar = 0;
      if(_root.save.arenaZone == 24)
      {
         if(_root.areaDefendStage == 1 || _root.areaDefendStage == 2)
         {
            _root.incDt2();
            _parent.stuffHolder.attachMovie("dmSupply","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + _width / 2,y:150});
            if(enemyID == 323)
            {
               _root.incDt2();
               _parent.stuffHolder.attachMovie("dmSupply","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + _width / 2 + 10,y:140});
            }
         }
         else if(_root.areaDefendStage == 3 || _root.areaDefendStage == 4)
         {
            _root.incDt2();
            _parent.stuffHolder.attachMovie("dmSupply","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + _width / 2,y:150});
            _root.incDt2();
            _parent.stuffHolder.attachMovie("dmSupply","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + _width / 2 + 10,y:140});
            _root.incDt2();
            _parent.stuffHolder.attachMovie("dmSupply","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + _width / 2 + 20,y:130});
            _root.incDt2();
            _parent.stuffHolder.attachMovie("dmSupply","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + _width / 2 + 30,y:120});
            _root.incDt2();
            _parent.stuffHolder.attachMovie("dmSupply","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + _width / 2 + 40,y:110});
         }
         else if(_root.areaDefendStage == 5)
         {
            _root.incDt2();
            _parent.stuffHolder.attachMovie("dmSupply","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + _width / 2,y:150});
            _root.incDt2();
            _parent.stuffHolder.attachMovie("dmSupply","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + _width / 2 + 10,y:140});
            if(_root.areaDefendProgress >= 5)
            {
               _root.incDt2();
               _parent.stuffHolder.attachMovie("dmSupply","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + _width / 2 + 20,y:130});
            }
            if(_root.areaDefendProgress >= 15)
            {
               _root.incDt2();
               _parent.stuffHolder.attachMovie("dmSupply","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + _width / 2 + 30,y:120});
            }
            if(_root.areaDefendProgress >= 30)
            {
               _root.incDt2();
               _parent.stuffHolder.attachMovie("dmSupply","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + _width / 2 + 40,y:110});
            }
         }
      }
      if(Math.random() < 0.05 * dropRate / 100)
      {
         lootValue = Math.floor((coinToGain + 1000) * (4 + Math.random() * 2));
         if(_root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Good Luck" && Math.random() < 0.4)
         {
            lootValue = Math.floor((coinToGain + 1000) * 6);
         }
         if(_root.save.permaBanPenalty[11] == 3)
         {
            lootValue = Math.floor(lootValue * 1.5);
         }
         else if(_root.save.permaBanPenalty[11] == 2)
         {
            lootValue = Math.floor(lootValue * 1.3);
         }
         else if(_root.save.permaBanPenalty[11] == 1)
         {
            lootValue = Math.floor(lootValue * 1.2);
         }
         lootSoFar += 1;
         _root.incDt2();
         _parent.stuffHolder.attachMovie("newLoot1","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + _width / 2 - lootSoFar * 15,y:150,lootValue:lootValue});
      }
      if(Math.random() < 0.001 * dropRate / 100 && ultra != true)
      {
         lootValue = Math.floor((coinToGain + 1000) * (2 + Math.random() * 2));
         if(_root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Good Luck" && Math.random() < 0.4)
         {
            lootValue = Math.floor((coinToGain + 1000) * 4);
         }
         if(_root.save.permaBanPenalty[11] == 3)
         {
            lootValue = Math.floor(lootValue * 1.5);
         }
         else if(_root.save.permaBanPenalty[11] == 2)
         {
            lootValue = Math.floor(lootValue * 1.3);
         }
         else if(_root.save.permaBanPenalty[11] == 1)
         {
            lootValue = Math.floor(lootValue * 1.2);
         }
         lootSoFar += 1;
         _root.incDt2();
         _parent.stuffHolder.attachMovie("newLoot1","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + _width / 2 - lootSoFar * 15,y:150,lootValue:lootValue});
      }
      if(Math.random() < 0.15 * dropRate / 100 && (_root.save.arenaLevel >= 10 && _root.save.arenaLevel <= 50 || _root.save.bannedB >= 1 && _root.save.arenaLevel < 500))
      {
         lootValue = Math.floor((arenaExpGain + 2000) * (0.4 + Math.random() * 0.2));
         if(_root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Good Luck" && Math.random() < 0.4)
         {
            lootValue = Math.floor((arenaExpGain + 2000) * 0.6);
         }
         if(lootValue > 5000)
         {
            lootValue = Math.ceil(5000 + Math.sqrt(lootValue - 5000));
         }
         lootSoFar += 1;
         _root.incDt2();
         _parent.stuffHolder.attachMovie("newLoot22","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + _width / 2 - lootSoFar * 15,y:150,lootValue:lootValue});
      }
      if(Math.random() < 0.05 * dropRate / 100)
      {
         lootValue = Math.floor((arenaExpGain + 2000) * (0.4 + Math.random() * 0.2));
         if(_root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Good Luck" && Math.random() < 0.4)
         {
            lootValue = Math.floor((arenaExpGain + 2000) * 0.6);
         }
         if(lootValue > 10000)
         {
            lootValue = Math.ceil(10000 + Math.sqrt(lootValue - 10000));
         }
         lootSoFar += 1;
         _root.incDt2();
         _parent.stuffHolder.attachMovie("newLoot22","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + _width / 2 - lootSoFar * 15,y:150,lootValue:lootValue});
      }
      if(Math.random() < 0.001 * dropRate / 100)
      {
         lootValue = Math.floor((arenaExpGain + 2000) * (0.1 + Math.random() * 0.1));
         if(_root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Good Luck" && Math.random() < 0.4)
         {
            lootValue = Math.floor((arenaExpGain + 2000) * 0.2);
         }
         if(lootValue > 20000)
         {
            lootValue = Math.ceil(20000 + Math.sqrt(lootValue - 20000));
         }
         lootSoFar += 1;
         _root.incDt2();
         _parent.stuffHolder.attachMovie("newLoot22","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + _width / 2 - lootSoFar * 15,y:150,lootValue:lootValue});
      }
      if(Math.random() < 0.05 * dropRate / 100)
      {
         lootValue = Math.floor(enemyRank * enemyRank * 50) + 200;
         if(_root.save.permaBanPenalty[11] == 3)
         {
            lootValue = Math.floor(lootValue * 2);
         }
         else if(_root.save.permaBanPenalty[11] == 2)
         {
            lootValue = Math.floor(lootValue * 1.6);
         }
         else if(_root.save.permaBanPenalty[11] == 1)
         {
            lootValue = Math.floor(lootValue * 1.4);
         }
         if(Math.random() < 0.001 * dropRate / 100)
         {
            lootValue = Math.floor(lootValue * 1.5);
         }
         lootSoFar += 1;
         _root.incDt2();
         _parent.stuffHolder.attachMovie("newLoot2","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + _width / 2 - lootSoFar * 15,y:150,lootValue:lootValue});
      }
      if(Math.random() < 0.005 * dropRate / 100)
      {
         lootValue = Math.floor(enemyRank * enemyRank * 1) + 4;
         if(_root.cursoridle >= 300)
         {
            lootValue = Math.ceil(lootValue * 0.5);
         }
         if(_root.save.permaBanPenalty[11] == 3)
         {
            lootValue = Math.floor(lootValue * 2.5);
         }
         else if(_root.save.permaBanPenalty[11] == 2)
         {
            lootValue = Math.floor(lootValue * 1.9);
         }
         else if(_root.save.permaBanPenalty[11] == 1)
         {
            lootValue = Math.floor(lootValue * 1.6);
         }
         if(Math.random() < 0.0001 * dropRate / 100)
         {
            lootValue = Math.floor(lootValue * 2);
         }
         lootSoFar += 1;
         _root.incDt2();
         _parent.stuffHolder.attachMovie("newLoot3","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + _width / 2 - lootSoFar * 15,y:150,lootValue:lootValue});
      }
      wcMult = 0.2 + 0.8 / (Math.sqrt(_root.save.wcDropToday / 250) + 1);
      if(_root.cursoridle > 60)
      {
         wcMult *= 0.2;
      }
      if(_root.save.arenaZone == 60 || _root.save.arenaZone == 61)
      {
         wcMult *= 0.1;
      }
      if(boss == true && Math.random() < 0.0002 * dropRate * wcMult / 100 && _root.save.wcDropToday < 25000)
      {
         lootValue = 1;
         if(name != "Secret Crystal" && Math.random() < 0.5)
         {
            lootValue += 1;
         }
         if(name != "Secret Crystal" && level >= 5000)
         {
            lootValue += 1;
         }
         if(name != "Secret Crystal" && rare == true)
         {
            lootValue += 1;
         }
         if(name != "Secret Crystal" && epic == true)
         {
            lootValue += 1;
         }
         if(_root.save.arenaZone == 39 || _root.save.arenaZone == 40 || _root.save.arenaZone == 41 || _root.save.arenaZone == 42 || _root.save.arenaZone == 54 || _root.save.arenaZone == 78)
         {
            lootValue = 10;
         }
         if(_root.save.arenaZone == 24 || _root.save.arenaZone == 25 || _root.save.arenaZone == 53)
         {
            lootValue = 3 + random(3);
         }
         _root.save.wcDropToday += lootValue;
         lootSoFar += 1;
         _root.incDt2();
         _parent.stuffHolder.attachMovie("newLoot20","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + _width / 2 - lootSoFar * 15,y:150,lootValue:lootValue});
      }
      if(boss == true && Math.random() < 0.2 * dropRate / 100)
      {
         if(Math.random() < 0.6)
         {
            lootSoFar += 1;
            lootValue = Math.ceil(level / 1000);
            _root.incDt2();
            _parent.stuffHolder.attachMovie("newLoot4","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + _width / 2 - lootSoFar * 15,y:150,lootValue:lootValue});
         }
         else
         {
            lootSoFar += 1;
            lootValue = 1;
            if(Math.random() < level / 20000)
            {
               lootValue = 2;
            }
            _root.incDt2();
            _parent.stuffHolder.attachMovie("newLoot17","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + _width / 2 - lootSoFar * 15,y:150,lootValue:lootValue});
         }
      }
      if(enemyID == 441 || enemyID == 442)
      {
         lootValue = 5;
         _root.incDt2();
         _parent.stuffHolder.attachMovie("newLoot17","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + _width / 2 - lootSoFar * 15,y:150,lootValue:lootValue});
      }
      if(rare == true)
      {
         if(Math.random() < 0.7 || name == "Secret Crystal")
         {
            lootSoFar += 1;
            lootValue = Math.ceil(level / 1000);
            if(name == "Secret Crystal")
            {
               lootValue = 1;
            }
            _root.incDt2();
            _parent.stuffHolder.attachMovie("newLoot4","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + _width / 2 - lootSoFar * 15,y:150,lootValue:lootValue});
         }
         else
         {
            lootSoFar += 1;
            lootValue = 2;
            if(Math.random() < level / 20000)
            {
               lootValue = 3;
            }
            _root.incDt2();
            _parent.stuffHolder.attachMovie("newLoot17","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + _width / 2 - lootSoFar * 15,y:150,lootValue:lootValue});
         }
         if(_root.save.arenaZone == 20)
         {
            if(epic == true || Math.random() < 0.5)
            {
               lootSoFar += 1;
               _root.incDt2();
               _parent.stuffHolder.attachMovie("newLoot14","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + _width / 2 - lootSoFar * 15,y:150});
            }
         }
      }
      if(epic == true)
      {
         lootSoFar += 1;
         lootValue = Math.ceil(level / 1000);
         _root.incDt2();
         _parent.stuffHolder.attachMovie("newLoot4","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + _width / 2 - lootSoFar * 15,y:150,lootValue:lootValue});
         lootValue = 3;
         if(Math.random() < level / 20000)
         {
            lootValue = 4;
         }
         lootSoFar += 1;
         _root.incDt2();
         _parent.stuffHolder.attachMovie("newLoot17","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + _width / 2 - lootSoFar * 15,y:150,lootValue:lootValue});
      }
      boostDropRate = 0.02 * dropRate / 100;
      if(boostDropRate > 0.4)
      {
         boostDropRate = 0.4;
      }
      if(Math.random() < boostDropRate)
      {
         lootSoFar += 1;
         _root.incDt2();
         _parent.stuffHolder.attachMovie("newLoot5","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + _width / 2 - lootSoFar * 15,y:150});
      }
      if(Math.random() < 0.02 * dropRate / 100)
      {
         lootValue = Math.floor((pixelToGain * (0.5 + Math.random() * 0.3) + 500) * (1 + _root.curCareerLevel[4] * 0.005));
         if(_root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Good Luck" && Math.random() < 0.4)
         {
            lootValue = Math.floor((pixelToGain * 0.8 + 500) * (1 + _root.curCareerLevel[4] * 0.005));
         }
         if(Math.random() < 0.001 * dropRate / 100 && ultra != true)
         {
            lootValue = Math.floor(lootValue * 2);
         }
         lootSoFar += 1;
         _root.incDt2();
         _parent.stuffHolder.attachMovie("newLoot6","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + _width / 2 - lootSoFar * 15,y:150,lootValue:lootValue});
      }
      if(Math.random() < 0.02 * dropRate / 100)
      {
         lootValue = Math.floor(pixelToGain * (2.4 + Math.random() * 1.6)) + 1000;
         if(_root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Good Luck" && Math.random() < 0.4)
         {
            lootValue = Math.floor(pixelToGain * 4) + 1000;
         }
         if(Math.random() < 0.001 * dropRate / 100 && ultra != true)
         {
            lootValue = Math.floor(lootValue * 2);
         }
         lootSoFar += 1;
         _root.incDt2();
         _parent.stuffHolder.attachMovie("newLoot7","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + _width / 2 - lootSoFar * 15,y:150,lootValue:lootValue});
      }
      if(Math.random() < 0.005 * dropRate / 100 && _root.save.arenaLevel >= 20)
      {
         lootSoFar += 1;
         _root.incDt2();
         _parent.stuffHolder.attachMovie("newLoot8","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + _width / 2 - lootSoFar * 15,y:150});
      }
      if(enemyID == 431)
      {
         if(_root.dungeonAntiCurse != true || Math.random() < 0.1 * dropRate / 100)
         {
            lootSoFar += 1;
            _root.incDt2();
            _parent.stuffHolder.attachMovie("newLoot15","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + _width / 2 - lootSoFar * 15,y:150,lootValue:5});
         }
      }
      if(enemyID == 432)
      {
         lootSoFar += 1;
         _root.incDt2();
         _parent.stuffHolder.attachMovie("newLoot15","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + _width / 2 - lootSoFar * 15,y:150,lootValue:10});
         if(_root.dungeonAntiCurse != true)
         {
            _root.incDt2();
            _parent.stuffHolder.attachMovie("newLoot15","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + _width / 2 - lootSoFar * 15,y:150,lootValue:20 + _root.dungeonChestOpen});
         }
      }
      if(Math.random() < 0.01 * dropRate / 100 || enemyID == 322 || enemyID == 435)
      {
         lootValue = 4 + random(3);
         if(enemyID == 322)
         {
            lootValue += 3;
         }
         if(enemyID == 435)
         {
            lootValue += 15;
         }
         if(level >= 1000)
         {
            lootValue += 1;
         }
         if(level >= 2500)
         {
            lootValue += 1;
         }
         if(level >= 5000)
         {
            lootValue += 2;
         }
         if(level >= 7500)
         {
            lootValue += 2;
         }
         if(level >= 9001)
         {
            lootValue += 3;
         }
         if(rare == true)
         {
            lootValue = Math.floor(lootValue * 2);
         }
         if(boss == true)
         {
            lootValue = Math.floor(lootValue * 3);
         }
         if(epic == true)
         {
            lootValue = Math.floor(lootValue * 5);
         }
         if(Math.random() < 0.001 * dropRate / 100)
         {
            lootValue = Math.floor(lootValue * 2);
         }
         lootSoFar += 1;
         _root.incDt2();
         _parent.stuffHolder.attachMovie("newLoot18","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + _width / 2 - lootSoFar * 15,y:150,lootValue:lootValue});
      }
      if(rare == true)
      {
         if(enemyID != 322 && enemyID != 435 && Math.random() < 0.0002 * dropRate / 100)
         {
            lootSoFar += 1;
            _root.incDt2();
            _parent.stuffHolder.attachMovie("newLoot10","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + _width / 2 - lootSoFar * 15,y:150,lootValue:100 + Math.round(Math.random() * level / 60)});
         }
         else if(enemyID != 322 && Math.random() < 0.001 * dropRate / 100)
         {
            lootSoFar += 1;
            _root.incDt2();
            _parent.stuffHolder.attachMovie("newLoot10","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + _width / 2 - lootSoFar * 15,y:150,lootValue:40 + Math.round(Math.random() * level / 150)});
         }
         else if(enemyID == 435 && Math.random() < 0.01 * dropRate / 100)
         {
            lootSoFar += 1;
            _root.incDt2();
            _parent.stuffHolder.attachMovie("newLoot10","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + _width / 2 - lootSoFar * 15,y:150,lootValue:20 + Math.round(Math.random() * level / 300)});
         }
         else if(enemyID == 322 && Math.random() < 0.01 * dropRate / 100)
         {
            lootSoFar += 1;
            _root.incDt2();
            _parent.stuffHolder.attachMovie("newLoot10","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + _width / 2 - lootSoFar * 15,y:150,lootValue:4 + Math.round(Math.random() * level / 1500)});
         }
         else if(boss == true && Math.random() < 0.01 * dropRate / 100)
         {
            lootSoFar += 1;
            _root.incDt2();
            _parent.stuffHolder.attachMovie("newLoot10","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + _width / 2 - lootSoFar * 15,y:150,lootValue:2 + Math.round(Math.random() * level / 3000)});
         }
         else if(Math.random() < 0.006 * dropRate / 100)
         {
            lootSoFar += 1;
            _root.incDt2();
            _parent.stuffHolder.attachMovie("newLoot10","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + _width / 2 - lootSoFar * 15,y:150,lootValue:1 + Math.round(Math.random() * level / 3000)});
         }
      }
      if(epic == true)
      {
         rollTukkonium();
      }
      if(enemyID >= 443 && enemyID <= 447)
      {
         skillToGet = enemyID - 387;
         lootSoFar += 1;
         _root.incDt2();
         _parent.stuffHolder.attachMovie("newLoot19","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + _width / 2 - lootSoFar * 15,y:150,lootValue:skillToGet});
      }
      if(_root.save.arenaLevel >= 70 && rare == true && Math.random() < 0.001 * level * _root.save.arenaLevel / 100 * dropRate / 1000000)
      {
         if(Math.random() < 0.3 || level < 1000)
         {
            if(Math.random() < 0.4)
            {
               skillToGet = 21 + random(5);
            }
            else if(Math.random() < 0.7)
            {
               skillToGet = 11 + random(6);
            }
            else
            {
               skillToGet = 9 + random(2);
            }
         }
         else if(Math.random() < 0.6 || level < 3000 || _root.save.arenaLevel < 120)
         {
            if(Math.random() < 0.4)
            {
               skillToGet = 18 + random(3);
            }
            else if(Math.random() < 0.8)
            {
               skillToGet = 27 + random(7);
            }
            else
            {
               skillToGet = 36 + random(3);
            }
         }
         else if(Math.random() < 0.4)
         {
            skillToGet = 50 + random(4);
         }
         else if(Math.random() < 0.8)
         {
            skillToGet = 39 + random(7);
         }
         else
         {
            skillToGet = 55;
         }
         lootSoFar += 1;
         _root.incDt2();
         _parent.stuffHolder.attachMovie("newLoot19","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + _width / 2 - lootSoFar * 15,y:150,lootValue:skillToGet});
      }
      if(_root.save.arenaLevel >= 120 && level > 60 && epic == true && Math.random() < 0.001 * level * _root.save.arenaLevel / 200 * dropRate / 1000000)
      {
         skillToGet = 61 + random(2);
         if(_root.save.arenaLevel >= 180 && Math.random() < 0.4)
         {
            skillToGet = 63 + random(4);
         }
         lootSoFar += 1;
         _root.incDt2();
         _parent.stuffHolder.attachMovie("newLoot19","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + _width / 2 - lootSoFar * 15,y:150,lootValue:skillToGet});
      }
      getIALoot();
      getChipLoot();
      if(enemyID == 226 || enemyID == 227 || enemyID == 282 || enemyID == 288 || enemyID == 318 || enemyID == 319 || enemyID == 320 || enemyID == 417 || enemyID == 421 || enemyID == 424 || enemyID == 429 || enemyID == 430 || enemyID == 435)
      {
         lootSoFar += 1;
         _root.incDt2();
         _parent.stuffHolder.attachMovie("newLoot11","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + _width / 2 - lootSoFar * 15,y:150,lootValue:1});
      }
      if(enemyID == 229 || enemyID == 275 || enemyID == 295 || enemyID == 321 || enemyID == 349 || enemyID == 350 || enemyID == 377 || enemyID == 431 || enemyID == 432 || enemyID == 436)
      {
         lootSoFar += 1;
         _root.incDt2();
         _parent.stuffHolder.attachMovie("newLoot11","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + _width / 2 - lootSoFar * 15,y:150,lootValue:2});
      }
      if(enemyID == 159 || enemyID == 177 || enemyID == 195 || enemyID == 248 || enemyID == 322 || enemyID == 375 || enemyID == 376 || enemyID == 439 || enemyID == 468 || enemyID == 474 || enemyID == 480 || enemyID == 487)
      {
         if(Math.random() < 0.00002 * dropRate / 100)
         {
            lootSoFar += 1;
            _root.incDt2();
            _parent.stuffHolder.attachMovie("newLoot11","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + _width / 2 - lootSoFar * 15,y:150,lootValue:1});
         }
      }
      if(enemyID == 435 || enemyID == 484 || enemyID == 485 || enemyID == 487)
      {
         if(Math.random() < 0.00002 * dropRate / 100)
         {
            lootSoFar += 1;
            _root.incDt2();
            _parent.stuffHolder.attachMovie("newLoot11","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + _width / 2 - lootSoFar * 15,y:150,lootValue:2});
         }
      }
      if(Math.random() < 0.0005 * dropRate / 100 && (boss == true || Math.random() < 0.005) && enemyRank >= 2)
      {
         lootValue = 1;
         lootSoFar += 1;
         _root.incDt2();
         _parent.stuffHolder.attachMovie("newLoot11","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + _width / 2 - lootSoFar * 15,y:150,lootValue:lootValue});
      }
      if(Math.random() < 0.0002 * dropRate / 100 && rare == true && enemyRank >= 2)
      {
         lootValue = 1;
         if(epic == true && Math.random() < 0.2)
         {
            lootValue = 2;
         }
         if(boss == true && Math.random() < 0.02)
         {
            lootValue = 2;
         }
         lootSoFar += 1;
         _root.incDt2();
         _parent.stuffHolder.attachMovie("newLoot11","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + _width / 2 - lootSoFar * 15,y:150,lootValue:lootValue});
      }
      chalMult = 1;
      if(_root.saveid == 26)
      {
         chalMult = 100;
      }
      if(Math.random() < 0.000005 * chalMult * dropRate / 100 && rare == true && (enemyRank >= 3 || Math.random() < 0.1))
      {
         lootValue = 1;
         if(epic == true && Math.random() < 0.6 && (boss == true || Math.random() < 0.2))
         {
            lootValue = 2;
         }
         lootSoFar += 1;
         _root.incDt2();
         _parent.stuffHolder.attachMovie("newLoot9","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + _width / 2 - lootSoFar * 15,y:150,lootValue:lootValue});
      }
      if(Math.random() < 0.02 * dropRate / 100)
      {
         if(_root.save.battlePoint >= 500 && _root.save.battlePoint >= (_root.save.arenaUltimateSP - 150) * 10000 && boss == true && level >= _root.save.arenaUltimateSP * 35 && _root.save.arenaUltimateSP < 250 && Math.random() < Math.pow(1 / (_root.save.arenaUltimateSP + 1),1.5))
         {
            lootSoFar += 1;
            _root.incDt2();
            _parent.stuffHolder.attachMovie("newLoot12","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + _width / 2 - lootSoFar * 15,y:150,lootValue:7});
         }
         else if(rare == true && _root.save.secretRecipeLevel < 4 && Math.random() < Math.pow(1 / (_root.save.secretRecipeLevel + 1),3))
         {
            lootSoFar += 1;
            _root.incDt2();
            _parent.stuffHolder.attachMovie("newLoot12","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + _width / 2 - lootSoFar * 15,y:150,lootValue:2});
         }
         else if(boss == true && _root.save.recipeLevel < 4 && Math.random() < Math.pow(1 / (_root.save.recipeLevel + 1),3) && level >= 100 * Math.pow(3,_root.save.recipeLevel))
         {
            lootSoFar += 1;
            _root.incDt2();
            _parent.stuffHolder.attachMovie("newLoot12","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + _width / 2 - lootSoFar * 15,y:150,lootValue:1});
         }
         else if(_root.save.arenaSkill[101] < 30 && Math.random() < 0.2 / (_root.save.arenaSkill[101] + 1) && _root.save.inventorySpirit[_root.save.arenaWeapon] != true)
         {
            lootSoFar += 1;
            _root.incDt2();
            _parent.stuffHolder.attachMovie("newLoot12","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + _width / 2 - lootSoFar * 15,y:150,lootValue:3});
         }
         else if(_root.save.arenaSkill[104] < 30 && Math.random() < _root.spiritCount * 0.1 / (_root.save.arenaSkill[104] + 1) && _root.save.inventorySpirit[_root.save.arenaWeapon] == true && name != "Secret Crystal")
         {
            lootSoFar += 1;
            _root.incDt2();
            _parent.stuffHolder.attachMovie("newLoot12","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + _width / 2 - lootSoFar * 15,y:150,lootValue:4});
         }
         else if(_root.save.arenaSkill[105] < 30 && Math.random() < _root.spiritCount * 0.05 / (_root.save.arenaSkill[105] + 1) && _root.save.inventorySpirit[_root.save.arenaWeapon] == true && level >= 2500 && name != "Secret Crystal")
         {
            lootSoFar += 1;
            _root.incDt2();
            _parent.stuffHolder.attachMovie("newLoot12","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + _width / 2 - lootSoFar * 15,y:150,lootValue:5});
         }
         else if(_root.save.arenaSkill[106] < 30 && Math.random() < _root.spiritCount * 0.02 / (_root.save.arenaSkill[106] + 1) && _root.save.inventorySpirit[_root.save.arenaWeapon] == true && boss == true && level >= 5000 && name != "Secret Crystal")
         {
            lootSoFar += 1;
            _root.incDt2();
            _parent.stuffHolder.attachMovie("newLoot12","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + _width / 2 - lootSoFar * 15,y:150,lootValue:6});
         }
      }
      if(_root.save.arenaZone == 78)
      {
         if(Math.random() < 0.15 * dropRate / 100)
         {
            lootSoFar += 1;
            _root.incDt2();
            _parent.stuffHolder.attachMovie("newLoot14","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + _width / 2 - lootSoFar * 15,y:150,lootValue:1});
         }
         if(Math.random() < 0.001 * dropRate / 100 && boss != true)
         {
            lootSoFar += 1;
            cfocGain = 1 + Math.floor(Math.random() + _root.endlessFloor / 50);
            _root.incDt2();
            _parent.stuffHolder.attachMovie("newLoot15","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + _width / 2 - lootSoFar * 15,y:150,lootValue:cfocGain});
         }
         if(Math.random() < 0.02 * dropRate / 100 && boss == true)
         {
            lootSoFar += 1;
            cfocGain = 2 + Math.floor(Math.random() + _root.endlessFloor / 50);
            _root.incDt2();
            _parent.stuffHolder.attachMovie("newLoot15","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + _width / 2 - lootSoFar * 15,y:150,lootValue:cfocGain});
         }
      }
      if(_root.save.arenaZone == 53)
      {
         if(Math.random() < 0.15 * dropRate / 100 && _root.dungeonAntiCurse != true)
         {
            lootSoFar += 1;
            _root.incDt2();
            _parent.stuffHolder.attachMovie("newLoot14","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + _width / 2 - lootSoFar * 15,y:150,lootValue:1});
         }
         if(Math.random() < 0.04 * dropRate / 100)
         {
            lootSoFar += 1;
            _root.incDt2();
            _parent.stuffHolder.attachMovie("newLoot14","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + _width / 2 - lootSoFar * 15,y:150,lootValue:1});
         }
         if(_root.dungeonAntiCurse != true)
         {
            if(Math.random() < 0.001 * dropRate / 100 && boss != true)
            {
               lootSoFar += 1;
               _root.incDt2();
               _parent.stuffHolder.attachMovie("newLoot15","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + _width / 2 - lootSoFar * 15,y:150,lootValue:2});
            }
            if(Math.random() < 0.02 * dropRate / 100 && boss == true)
            {
               lootSoFar += 1;
               _root.incDt2();
               _parent.stuffHolder.attachMovie("newLoot15","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + _width / 2 - lootSoFar * 15,y:150,lootValue:5});
            }
         }
      }
      checkEquipLoot();
      checkEquipLoot2();
      var _loc3_ = 1;
      while(_loc3_ <= _root.todayEvent)
      {
         yy = _root.clock_year % 10;
         mm = _root.clock_month;
         dd = _root.clock_date;
         if(_root.eventList[yy][mm][dd][_loc3_] == "Receive Event Tokens by killing boss monsters" && boss == true)
         {
            _root.gainEventToken(1);
         }
         if(_root.eventList[yy][mm][dd][_loc3_] == "Receive Event Tokens by killing undead monsters" && zombie == true)
         {
            _root.gainEventToken(1);
         }
         _loc3_ += 1;
      }
      _root.dispNews(29,"[" + name + "] defeated! (+" + _root.withComma(expToGain) + " EXP | +" + _root.withComma(coinToGain) + " Coins)");
      _parent.showDamage("Pixel +" + _root.withComma(pixelToGain),65535,62.5,60);
      if(enemyID == 331)
      {
         if(_root.worstMoon == true && _root.save.arenaHardcore == true && _root.save.gDifficulty >= 3)
         {
            _root.obtainAlly(331);
         }
         _root.gotoAndStop(15);
      }
      if(enemyID == 441)
      {
         _root.save.vegetarianMode = true;
      }
      if(enemyID == 442)
      {
         _root.save.vegetarianMode = false;
      }
      approach = _root.areaSpawn - approachCompensation;
      if(isNaN(evolve) || evolve == 0)
      {
         approachCompensation = 0;
      }
      if((_root.save.arenaZone >= 62 && _root.save.arenaZone <= 67 || _root.save.arenaZone >= 86 && _root.save.arenaZone <= 91) && _root.areaFairyPower == true)
      {
         approach = (_root.areaSpawn - approachCompensation) * 0.4;
         _root.areaFairyPerformance -= 10;
         if(_root.areaFairyPerformance < 0)
         {
            _root.areaFairyPerformance = 0;
            _root.areaFairyPower = false;
         }
      }
      partKilled = 1;
      lifespan = 0;
      if(_root.save.inventorySubtype[_root.save.arenaWeapon] == "Mining Tool" && (_root.save.arenaZone >= 1 && _root.save.arenaZone <= 13 && _root.save.arenaZone != 5 && _root.save.arenaZone != 7))
      {
         approach = 8;
         if(_root.save.inventoryName[_root.save.arenaWeapon] == "Bronze Pickaxe")
         {
            approach = 8;
         }
         else if(_root.save.inventoryName[_root.save.arenaWeapon] == "Silver Pickaxe")
         {
            approach = 7.7;
         }
         else if(_root.save.inventoryName[_root.save.arenaWeapon] == "Golden Pickaxe")
         {
            approach = 7.4;
         }
         else if(_root.save.inventoryName[_root.save.arenaWeapon] == "Diamond Pickaxe")
         {
            approach = 7.1;
         }
         else if(_root.save.inventoryName[_root.save.arenaWeapon] == "Master\'s Pickaxe")
         {
            approach = 6.8;
         }
         else if(_root.save.inventoryName[_root.save.arenaWeapon] == "Legendary Pickaxe")
         {
            approach = 6.5;
         }
         else if(_root.save.inventoryName[_root.save.arenaWeapon] == "Unobtainium Pickaxe")
         {
            approach = 6;
         }
      }
      zombie = false;
      exp = 0;
      coin = 0;
      pixel = 0;
      skill = "None";
      if(isNaN(evolve) || evolve == 0)
      {
         enemyID = 0;
         if(_root.save.arenaZone != 20)
         {
            _root.chargeX = 4;
            _root.chargeC = 4;
            _root.chargeV = 4;
            _root.chargeB = 4;
         }
      }
      else
      {
         _parent.rangedAttack.gotoAndStop(2);
         _parent.rangedAttack._alpha = 50;
         if(evolve == enemyID && Math.random() < 0.1)
         {
            summonEnemy(evolve,false);
         }
         else
         {
            summonEnemy(evolve,true);
         }
      }
      _parent.checkStat();
   }
   function summonEnemy(ID, evo)
   {
      if(ID == 0)
      {
         approach = _root.areaSpawn;
         lifespan = 0;
      }
      else
      {
         approach = Infinity;
         lifespan = 0;
         if(enemyID == 0)
         {
            curX = 200;
            if(_root.save.inventoryRange[_root.save.arenaWeapon] == false)
            {
               curX = Math.floor(75 + _root.wpRange);
               if(_root.wpRange < 35)
               {
                  curX = 110;
               }
               if(_root.wpRange > 125)
               {
                  curX = 200;
               }
               if(isNaN(_root.wpRange))
               {
                  curX = 150;
               }
            }
            if(_root.save.arenaZone == 20)
            {
               curX = 110;
            }
         }
         ultra = false;
         ultra1 = false;
         ultra2 = false;
         ultra3 = false;
         ultraCount = 3;
         if(ID > 3000)
         {
            ID -= 3000;
            ultra = true;
            ultra1 = true;
            ultra2 = true;
            ultra3 = true;
         }
         else if(ID > 2000)
         {
            ID -= 2000;
            ultra = true;
            ultra1 = true;
            ultra2 = true;
         }
         else if(ID > 1000)
         {
            ID -= 1000;
            ultra = true;
            ultra1 = true;
         }
         enemyID = ID;
         name = _root.enemyList[ID].name;
         if(name == undefined)
         {
            _root.gotoAndStop(16);
         }
         level = _root.enemyList[ID].level;
         speed = _root.enemyList[ID].speed * 0.8;
         if(speed == 0)
         {
            curX = 100;
            if(_root.save.arenaZone == 61)
            {
               curX = 200;
            }
         }
         if(_root.save.arenaRing == 19)
         {
            speed *= 0.7;
         }
         stun = -0.5;
         poison = -0.5;
         poisonDelay = 0;
         weaken = -0.5;
         blind = -0.5;
         slow = -0.5;
         _parent.dodgeCombo = 0;
         absorbCombo = 0;
         reflectCombo = 0;
         magImmune = 0;
         multiSlash = 0;
         crescendo = 0;
         crescendoMult = 1;
         chaosCount = 0;
         threatCount = 0;
         allyDownCount1 = 0;
         allyDownCount2 = 0;
         allyDownCount3 = 0;
         allyDownCount4 = 0;
         mined = 0;
         immune = false;
         rare = false;
         epic = false;
         _X = curX;
         if(_root.specInfinity > 0)
         {
            epic = true;
            rare = true;
         }
         else if(_root.worstMoon == true && Math.random() < _root.areaEpicChance2 * _root.arenaEpicRate / 10000)
         {
            epic = true;
            rare = true;
         }
         else if(_root.worstMoon == true && _root.save.arenaAllyEXP[ID] >= 10000 && !isNaN(_root.save.arenaAllyEXP[ID]) && Math.random() < 0.005 * _root.arenaEpicRate / 100)
         {
            epic = true;
            rare = true;
         }
         else if(_root.worstMoon == false && Math.random() < _root.areaEpicChance * _root.arenaEpicRate / 10000)
         {
            epic = true;
            rare = true;
         }
         if(Math.random() < _root.areaRareChance * _root.arenaRareRate / 10000)
         {
            rare = true;
         }
         else if(_root.save.arenaAllyEXP[ID] >= 10000 && !isNaN(_root.save.arenaAllyEXP[ID]) && Math.random() < 0.05 * _root.arenaRareRate / 100)
         {
            rare = true;
         }
         else if(Math.random() < 0.1 * _root.arenaRareRate / 100 && _root.save.inventoryName[_root.save.arenaTrinket] == "Yellow Madness Gem")
         {
            rare = true;
         }
         if(name == "THE MEGABOSS" || name == "Chuck Norris" || name == "Boss of DOOOOOOM" || name == "Supergem" || name == "Pirate Gem")
         {
            rare = true;
            if(_root.worstMoon == true)
            {
               epic = true;
            }
         }
         if(name == "Secret Crystal")
         {
            rare = true;
            epic = false;
         }
         if(name == "Strange Box")
         {
            rare = true;
            epic = true;
         }
         if(name == "The Ascendant")
         {
            rare = false;
            epic = false;
         }
         if(enemyID == 226)
         {
            rare = true;
         }
         if(enemyID == 227)
         {
            rare = true;
            epic = true;
         }
         if(enemyID == 229)
         {
            rare = true;
            epic = true;
         }
         if(_root.save.arenaZone == 52 && _root.areaSpookyKill < _root.save.arenaSpookyToday)
         {
            rare = false;
            epic = false;
         }
         if(_root.save.arenaZone == 68 && _root.areaTriangleKill < _root.save.arenaTriangleToday)
         {
            rare = false;
            epic = false;
         }
         attack = _root.enemyList[ID].attack;
         defense = _root.enemyList[ID].defense;
         accuracy = _root.enemyList[ID].accuracy;
         evasion = _root.enemyList[ID].evasion;
         hp = _root.enemyList[ID].hp;
         maxhp = _root.enemyList[ID].hp;
         stealable = 250;
         exp = Math.floor(_root.enemyList[ID].exp * _root.arenaExpMult / 100);
         coin = Math.floor(_root.enemyList[ID].coin * _root.arenaCoinMult / 100);
         pixel = Math.floor(_root.enemyList[ID].pixel * _root.arenaPixelMult / 100);
         if(_root.saveid == 21 && _root.save.arenaZone == 29)
         {
            exp = 0;
            coin = 0;
            pixel = 0;
         }
         element = _root.enemyList[ID].element;
         boss = _root.enemyList[ID].boss;
         evolve = _root.enemyList[ID].evolve;
         if(evo == false)
         {
            evolve = 0;
         }
         if(evolve == enemyID)
         {
            rare = false;
            epic = false;
         }
         heal = _root.enemyList[ID].heal;
         zombie = _root.enemyList[ID].zombie;
         if(_root.save.arenaZone == 17)
         {
            hp = Math.floor(hp * 1.5);
            maxhp = Math.floor(maxhp * 1.5);
            defense = -1;
            evasion = Math.floor(evasion * 2);
            exp = Math.floor(exp * 1.8);
            coin = Math.floor(coin * 1.8);
            pixel = Math.floor(pixel * 1.8);
            zombie = true;
         }
         if(_root.saveid == 26)
         {
            zombie = true;
         }
         rangeCount = 0;
         rangeDamage = _root.enemyList[ID].rangeDamage;
         explode = _root.enemyList[ID].explode;
         explodeCount = 0;
         explodeDamage = _root.enemyList[ID].explodeDamage;
         magnetCount = 0;
         tankMode = false;
         rampage = false;
         rampage2 = false;
         rampagePct = _root.enemyList[ID].rampagePct;
         skill = _root.enemyList[ID].skill;
         skillLevel = _root.enemyList[ID].skillLevel;
         art = _root.enemyList[ID].art;
         loc = _root.enemyList[ID].loc;
         summonEnemy2();
         if(defense < 0)
         {
            defense = 999999999999999;
         }
         if(level > 9001)
         {
            level = 9001;
         }
         if(level < 1)
         {
            level = 1;
         }
         if(maxhp > 999999999999999)
         {
            hp = 999999999999999;
            maxhp = 999999999999999;
         }
         origExp = exp;
         enemyRank = 1;
         if(level >= _root.save.level * 0.7 - 50 || level >= 4000)
         {
            enemyRank = 2;
         }
         if(level >= _root.save.level + 1 || level >= 7000)
         {
            enemyRank = 3;
         }
         if(boss == true)
         {
            enemyRank = 4;
         }
         _parent.checkStat();
         if(boss == true)
         {
            _root.dispNews(28,"[" + name + "] encountered!");
         }
         else
         {
            _root.dispNews(27,"[" + name + "] encountered!");
         }
         if(_root.robaconActive == true && evolve == 0 && _root.save.arenaZone != 20 && skill != "Self-Destruct")
         {
            baconPower = Math.floor(50 + _root.save.robaconLevel + _root.save.inventoryAttack[400] / 3);
            baconKnockback = 0;
            if(_root.save.inventoryName[400] != "Bacon Sword")
            {
               _root.save.robaconBacon -= 1;
            }
            if(_root.save.robaconLevel >= 50)
            {
               _root.arenaCombo += 2;
            }
            if(_root.save.robaconLevel >= 75)
            {
               _root.save.arenaRage += 0.5;
            }
            if(_root.save.robaconLevel >= 150 && Math.random() < 0.25 && boss != true && ultra != true)
            {
               rampagePct = 0;
               explodeDamage = 1;
               skill = "None";
               skillLevel = -1;
               rangeDamage = 0;
               showDamage("SILENCED",16777215,_X + _width / 2,40);
            }
            if(_root.save.robaconLevel >= 175 && Math.random() < 0.25)
            {
               baconPower = Math.floor(baconPower * 2);
            }
            if(_root.save.robaconLevel >= 225 && Math.random() < 0.05)
            {
               blind = 3600;
            }
            if(_root.save.robaconLevel >= 250 && Math.random() < 0.05)
            {
               poison = 3600;
            }
            if(_root.save.robaconLevel >= 275 && Math.random() < 0.05)
            {
               weaken = 3600;
            }
            if(_root.save.robaconLevel >= 325)
            {
               evasion = Math.floor(evasion * 0.9);
            }
            if(_root.save.robaconLevel >= 350)
            {
               defense = Math.floor(defense * 0.9);
            }
            if(_root.save.robaconLevel >= 375)
            {
               accuracy = Math.floor(accuracy * 0.9);
            }
            if(_root.save.robaconLevel >= 425)
            {
               attack = Math.floor(attack * 0.9);
            }
            if(_root.save.robaconLevel >= 450)
            {
               coin = Math.floor(coin * 1.15);
            }
            if(_root.save.robaconLevel >= 475)
            {
               pixel = Math.floor(pixel * 1.15);
            }
            if(_root.save.robaconLevel >= 500)
            {
               exp = Math.floor(exp * 1.1);
            }
            if(_root.setCount[36] >= 5)
            {
               baconPower = Math.floor(baconPower * 3);
            }
            if(_root.save.robaconLevel >= 100 && Math.random() < 0.5)
            {
               _root.incDt2();
               stuffHolder.attachMovie("newLoot18","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + _width / 2,y:150,lootValue:1});
            }
            if(_root.save.robaconLevel >= 200 && Math.random() < 0.05)
            {
               _root.incDt2();
               stuffHolder.attachMovie("newLoot10","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:_X + _width / 2,y:150,lootValue:1});
            }
            if(_root.save.robaconLevel >= 300 && _root.save.arenaZone != 24)
            {
               _root.save.arenaHealth += Math.floor(_root.maxHealth * 0.25);
               if(_root.save.arenaHealth > _root.maxHealth)
               {
                  _root.save.arenaHealth = _root.maxHealth;
               }
            }
            if(_root.save.robaconLevel >= 400)
            {
               _root.save.arenaMana += Math.floor(_root.maxMana * 0.05);
               if(_root.save.arenaMana > _root.maxMana)
               {
                  _root.save.arenaMana = _root.maxMana;
               }
            }
            _root.house.arena.dealDamage(baconPower,baconKnockback,"Bacon");
         }
      }
   }
   function summonEnemy2()
   {
      if(enemyID == 322)
      {
         level = 500;
         hp = 500000;
         maxhp = 500000;
         exp = 8000;
         coin = 8000;
         pixel = 15000;
         if(_root.save.inventoryName[_root.save.arenaWeapon] == "Bronze Pickaxe")
         {
            level = 500;
            hp = 250000;
            maxhp = 250000;
            exp = 2000;
            coin = 4000;
            pixel = 8000;
         }
         if(_root.save.inventoryName[_root.save.arenaWeapon] == "Silver Pickaxe")
         {
            level = 1000;
            hp = 500000;
            maxhp = 500000;
            exp = 3000;
            coin = 6000;
            pixel = 15000;
         }
         if(_root.save.inventoryName[_root.save.arenaWeapon] == "Golden Pickaxe")
         {
            level = 2000;
            hp = 1000000;
            maxhp = 1000000;
            exp = 4000;
            coin = 8000;
            pixel = 24000;
         }
         if(_root.save.inventoryName[_root.save.arenaWeapon] == "Diamond Pickaxe")
         {
            level = 3500;
            hp = 1500000;
            maxhp = 1500000;
            exp = 5000;
            coin = 10000;
            pixel = 35000;
         }
         if(_root.save.inventoryName[_root.save.arenaWeapon] == "Master\'s Pickaxe")
         {
            level = 5000;
            hp = 2000000;
            maxhp = 2000000;
            exp = 6000;
            coin = 12000;
            pixel = 48000;
         }
         if(_root.save.inventoryName[_root.save.arenaWeapon] == "Legendary Pickaxe")
         {
            level = 7000;
            hp = 2500000;
            maxhp = 2500000;
            exp = 7000;
            coin = 14000;
            pixel = 63000;
         }
         if(_root.save.inventoryName[_root.save.arenaWeapon] == "Unobtainium Pickaxe")
         {
            level = 9001;
            hp = 4000000;
            maxhp = 4000000;
            exp = 8000;
            coin = 16000;
            pixel = 80000;
         }
         if(_root.save.careerLevel[4] >= 200)
         {
            hp = Math.floor(hp * 0.7);
            maxhp = Math.floor(maxhp * 0.7);
         }
         if(level > Math.floor(_root.save.bestLevel / 100 + 10) * 100)
         {
            level = Math.floor(_root.save.bestLevel / 100 + 10) * 100;
         }
         exp = Math.floor(exp * _root.arenaExpMult / 100);
         coin = Math.floor(coin * _root.arenaCoinMult / 100);
         pixel = Math.floor(pixel * _root.arenaPixelMult / 100);
      }
      else if(enemyID == 435)
      {
         level = 700;
         hp = 1000000;
         maxhp = 1000000;
         exp = 40000;
         coin = 40000;
         pixel = 50000;
         epic = true;
         if(_root.save.inventoryName[_root.save.arenaWeapon] == "Bronze Pickaxe")
         {
            level = 700;
            hp = 600000;
            maxhp = 600000;
            exp = 20000;
            coin = 40000;
            pixel = 160000;
            epic = true;
         }
         if(_root.save.inventoryName[_root.save.arenaWeapon] == "Silver Pickaxe")
         {
            level = 1400;
            hp = 1400000;
            maxhp = 1400000;
            exp = 30000;
            coin = 60000;
            pixel = 300000;
            epic = true;
         }
         if(_root.save.inventoryName[_root.save.arenaWeapon] == "Golden Pickaxe")
         {
            level = 2800;
            hp = 2400000;
            maxhp = 2400000;
            exp = 40000;
            coin = 80000;
            pixel = 480000;
            epic = true;
         }
         if(_root.save.inventoryName[_root.save.arenaWeapon] == "Diamond Pickaxe")
         {
            level = 4900;
            hp = 3600000;
            maxhp = 3600000;
            exp = 50000;
            coin = 100000;
            pixel = 700000;
            epic = true;
         }
         if(_root.save.inventoryName[_root.save.arenaWeapon] == "Master\'s Pickaxe")
         {
            level = 7000;
            hp = 5000000;
            maxhp = 5000000;
            exp = 60000;
            coin = 120000;
            pixel = 960000;
            epic = true;
         }
         if(_root.save.inventoryName[_root.save.arenaWeapon] == "Legendary Pickaxe")
         {
            level = 9001;
            hp = 7000000;
            maxhp = 7000000;
            exp = 70000;
            coin = 140000;
            pixel = 1260000;
            epic = true;
         }
         if(_root.save.inventoryName[_root.save.arenaWeapon] == "Unobtainium Pickaxe")
         {
            level = 9001;
            hp = 10000000;
            maxhp = 10000000;
            exp = 80000;
            coin = 160000;
            pixel = 1600000;
            epic = true;
         }
         if(level > Math.floor(_root.save.bestLevel / 100 + 10) * 140)
         {
            level = Math.floor(_root.save.bestLevel / 100 + 10) * 140;
         }
         exp = Math.floor(exp * _root.arenaExpMult / 100);
         coin = Math.floor(coin * _root.arenaCoinMult / 100);
         pixel = Math.floor(pixel * _root.arenaPixelMult / 100);
      }
      else if(_root.save.arenaZone == 53 && _root.dungeonAntiCurse == true)
      {
         exp = Math.floor(exp * 0.2);
         coin = Math.floor(coin * 0.2);
         pixel = Math.floor(pixel * 0.2);
      }
      else if(_root.save.arenaZone == 54 && _root.dungeonAntiCurse == true)
      {
         exp = Math.floor(exp * 0.3);
         coin = Math.floor(coin * 0.3);
         pixel = Math.floor(pixel * 0.3);
      }
      if(_root.save.arenaZone == 53)
      {
         if(_root.dungeonDiff == 1)
         {
            exp = Math.floor(exp * 0.2);
            coin = Math.floor(coin * 0.2);
            pixel = Math.floor(pixel * 0.2);
         }
         else if(_root.dungeonDiff == 3)
         {
            hp = Math.floor(hp * 125);
            maxhp = Math.floor(maxhp * 125);
            attack = Math.floor(attack * 10);
            defense = Math.floor(defense * 10);
            accuracy = Math.floor(accuracy * 10);
            evasion = Math.floor(evasion * 10);
            rangeDamage = Math.floor(rangeDamage * 10);
            exp = Math.floor(exp * 20);
            coin = Math.floor(coin * 2);
            pixel = Math.floor(pixel * 2);
         }
      }
      else if(_root.save.arenaZone == 54)
      {
         if(_root.dungeonDiff == 1)
         {
            exp = Math.floor(exp * 0.2);
            coin = Math.floor(coin * 0.2);
            pixel = Math.floor(pixel * 0.2);
         }
         else if(_root.dungeonDiff == 3)
         {
            hp = Math.floor(hp * 20);
            maxhp = Math.floor(maxhp * 20);
            attack = Math.floor(attack * 4);
            defense = Math.floor(defense * 4);
            accuracy = Math.floor(accuracy * 4);
            evasion = Math.floor(evasion * 4);
            rangeDamage = Math.floor(rangeDamage * 4);
            heal = Math.floor(heal * 5);
            exp = Math.floor(exp * 20);
            coin = Math.floor(coin * 2);
            pixel = Math.floor(pixel * 2);
         }
         hp = Math.floor(hp * (1 + 0.6 * _root.dungeonChestOpen));
         maxhp = Math.floor(maxhp * (1 + 0.6 * _root.dungeonChestOpen));
         attack = Math.floor(attack * (1 + 0.2 * _root.dungeonChestOpen));
         defense = Math.floor(defense * (1 + 0.2 * _root.dungeonChestOpen));
         accuracy = Math.floor(accuracy * (1 + 0.1 * _root.dungeonChestOpen));
         evasion = Math.floor(evasion * (1 + 0.1 * _root.dungeonChestOpen));
         rangeDamage = Math.floor(rangeDamage * (1 + 0.15 * _root.dungeonChestOpen));
         heal = Math.floor(heal * (1 + 0.9 * _root.dungeonChestOpen));
         exp = Math.floor(exp * (2 + 0.3 * _root.dungeonChestOpen));
         coin = Math.floor(coin * (2 + 0.3 * _root.dungeonChestOpen));
         pixel = Math.floor(pixel * (2 + 0.3 * _root.dungeonChestOpen));
         skillLevel += _root.dungeonChestOpen;
         if(_root.dungeonChestOpen > 10)
         {
            hp = Math.floor(hp * (1 + 0.05 * (_root.dungeonChestOpen - 10)));
            maxhp = Math.floor(maxhp * (1 + 0.05 * (_root.dungeonChestOpen - 10)));
            attack = Math.floor(attack * (1 + 0.05 * (_root.dungeonChestOpen - 10)));
            rangeDamage = Math.floor(rangeDamage * (1 + 0.05 * (_root.dungeonChestOpen - 10)));
            defense = Math.floor(defense * (1 + 0.05 * (_root.dungeonChestOpen - 10)));
            accuracy = Math.floor(accuracy * (1 + 0.05 * (_root.dungeonChestOpen - 10)));
            evasion = Math.floor(evasion * (1 + 0.05 * (_root.dungeonChestOpen - 10)));
         }
         if(_root.dungeonChestOpen > 15)
         {
            hp = Math.floor(hp * (2000 + 600 * (_root.dungeonChestOpen - 15)) / 2275);
            maxhp = Math.floor(maxhp * (2000 + 600 * (_root.dungeonChestOpen - 15)) / 2275);
            defense = Math.floor(defense * (2000 + 600 * (_root.dungeonChestOpen - 15)) / 2275);
            exp = Math.floor(exp * (1 + 0.1 * (_root.dungeonChestOpen - 15)));
         }
      }
      else if(_root.save.arenaZone == 52)
      {
         level = 7000 + _root.areaSpookyKill;
         hp = Math.floor(hp * (100 + Math.pow(_root.areaSpookyKill * 2,1.2)) / 100);
         maxhp = Math.floor(maxhp * (100 + Math.pow(_root.areaSpookyKill * 2,1.2)) / 100);
         attack = Math.floor(attack * (100 + Math.pow(_root.areaSpookyKill * 2,1.25)) / 100);
         if(attack > 1000000000)
         {
            attack = Math.floor(1000000000 + Math.pow(attack - 1000000000,0.95));
         }
         if(attack > 1500000000)
         {
            attack = Math.floor(1500000000 + Math.pow(attack - 1500000000,0.9));
         }
         if(attack > 2500000000)
         {
            attack = Math.floor(2500000000 + Math.pow(attack - 2500000000,0.9));
         }
         defense = Math.floor(defense * (100 + Math.pow(_root.areaSpookyKill * 2,1.25)) / 100);
         accuracy = Math.floor(accuracy * (100 + Math.pow(_root.areaSpookyKill * 2,1.15)) / 100);
         evasion = Math.floor(evasion * (100 + Math.pow(_root.areaSpookyKill * 2,1.15)) / 100);
         if(_root.areaSpookyKill < 1000)
         {
            exp = Math.floor(exp * (100 + _root.areaSpookyKill) / 100);
            coin = Math.floor(coin * (100 + _root.areaSpookyKill) / 100);
            pixel = Math.floor(pixel * (100 + _root.areaSpookyKill) / 100);
         }
         else if(_root.areaSpookyKill < 3000)
         {
            exp = Math.floor(exp * ((400 + _root.areaSpookyKill) / 400 + 7.5));
            coin = Math.floor(coin * ((400 + _root.areaSpookyKill) / 400 + 7.5));
            pixel = Math.floor(pixel * ((400 + _root.areaSpookyKill) / 400 + 7.5));
         }
         else if(_root.areaSpookyKill < 10000)
         {
            exp = Math.floor(exp * ((2000 + _root.areaSpookyKill) / 2000 + 13.5));
            coin = Math.floor(coin * ((2000 + _root.areaSpookyKill) / 2000 + 13.5));
            pixel = Math.floor(pixel * ((2000 + _root.areaSpookyKill) / 2000 + 13.5));
         }
         else
         {
            exp = Math.floor(exp * ((10000 + _root.areaSpookyKill) / 10000 + 17.5));
            coin = Math.floor(coin * ((10000 + _root.areaSpookyKill) / 10000 + 17.5));
            pixel = Math.floor(pixel * ((10000 + _root.areaSpookyKill) / 10000 + 17.5));
         }
         skillLevel = 5 + Math.floor(_root.areaSpookyKill / 200);
         if(_root.areaSpookyKill >= 1000)
         {
            skill = "All";
            if(_root.save.inventoryName[400] == "Dark Ruler")
            {
               attack = Math.floor(attack * 3);
            }
         }
         if(_root.areaSpookyKill < _root.save.arenaSpookyToday)
         {
            exp = Math.floor(exp * 0.01);
            coin = Math.floor(coin * 0.01);
            pixel = Math.floor(pixel * 0.01);
         }
      }
      else if(_root.save.arenaZone == 24)
      {
         if(_root.raidDiff == 3)
         {
            if(_root.areaDefendStage == 1)
            {
               hp = Math.floor(hp * 3);
               maxhp = Math.floor(maxhp * 3);
            }
            if(_root.areaDefendStage == 2)
            {
               hp = Math.floor(hp * 5);
               maxhp = Math.floor(maxhp * 5);
            }
            if(_root.areaDefendStage == 3)
            {
               hp = Math.floor(hp / 0.63);
               maxhp = Math.floor(maxhp / 0.63);
            }
            if(_root.areaDefendStage == 4)
            {
               hp = Math.floor(hp / 1.575);
               maxhp = Math.floor(maxhp / 1.575);
            }
            if(_root.areaDefendStage == 5)
            {
               hp = Math.floor(hp * 5);
               maxhp = Math.floor(maxhp * 5);
            }
            attack = Math.floor(attack * 2);
            accuracy = Math.floor(accuracy * 25);
            evasion = Math.floor(evasion * 5);
            exp = Math.floor(exp * 5);
            coin = Math.floor(coin * 2);
            pixel = Math.floor(pixel * 2);
         }
      }
      else if(_root.save.arenaZone >= 31 && _root.save.arenaZone <= 43)
      {
         if(_root.raidDiff == 3)
         {
            hp = Math.floor(hp * 5);
            maxhp = Math.floor(maxhp * 5);
            if(maxhp >= 10000)
            {
               hp = Math.floor(hp * 20);
               maxhp = Math.floor(maxhp * 20);
               if(_root.save.arenaZone < 39)
               {
                  hp = Math.floor(hp * 8);
                  maxhp = Math.floor(maxhp * 8);
               }
               if(_root.save.arenaZone == 39)
               {
                  hp = Math.floor(hp * 2.25);
                  maxhp = Math.floor(maxhp * 2.25);
               }
               if(_root.save.arenaZone == 40)
               {
                  hp = Math.floor(hp * 1.5);
                  maxhp = Math.floor(maxhp * 1.5);
               }
            }
            attack = Math.floor(attack * 8);
            accuracy = Math.floor(accuracy * 20);
            evasion = Math.floor(evasion * 8);
            exp = Math.floor(exp * 5);
            coin = Math.floor(coin * 2);
            pixel = Math.floor(pixel * 2);
         }
      }
      else if(_root.save.arenaZone == 78)
      {
         level += (_root.endlessFloor - 20) * 50;
         hp = Math.floor(hp * (10 + Math.pow(_root.endlessFloor,2)) / 100);
         maxhp = Math.floor(maxhp * (10 + Math.pow(_root.endlessFloor,2)) / 100);
         if(_root.endlessFloor <= 150)
         {
            hp = Math.floor(hp * (0.5 + _root.endlessFloor / 300));
            maxhp = Math.floor(maxhp * (0.5 + _root.endlessFloor / 300));
         }
         if(_root.endlessFloor > 200)
         {
            hp = Math.floor(hp * (_root.endlessFloor / 25 - 7));
            maxhp = Math.floor(maxhp * (_root.endlessFloor / 25 - 7));
         }
         attack = Math.floor(attack * 0.7 * (10 + Math.pow(_root.endlessFloor,1.78)) / 10);
         rangeDamage = Math.floor(rangeDamage * 0.7 * (10 + Math.pow(_root.endlessFloor,1.58)) / 10);
         explodeDamage = Math.floor(explodeDamage * 0.7 * (10 + Math.pow(_root.endlessFloor,1.58)) / 10);
         defense = Math.floor(defense * (10 + Math.pow(_root.endlessFloor,1.78)) / 10);
         accuracy = Math.floor(accuracy * (10 + Math.pow(_root.endlessFloor,1.58)) / 10);
         evasion = Math.floor(evasion * (10 + Math.pow(_root.endlessFloor,1.58)) / 10);
         exp = Math.floor(exp * (20 + _root.endlessFloor) / 4);
         coin = Math.floor(coin * (100 + _root.endlessFloor) / 100);
         pixel = Math.floor(pixel * (20 + _root.endlessFloor) / 40);
         if(_root.endlessFloor < 10)
         {
            exp = Math.floor(exp * (0.5 + _root.endlessFloor * 0.05));
         }
         if(_root.endlessFloor >= 100)
         {
            exp = Math.floor(exp * _root.endlessFloor / 100);
         }
         if(_root.endlessFloor >= 200)
         {
            exp = Math.floor(exp * (_root.endlessFloor - 100) / 100);
         }
         if(_root.endlessFloor == 250)
         {
            exp = Math.floor(exp * 5);
         }
         if(_root.apocalypse == true)
         {
            exp = Math.floor(exp * 3);
         }
         else if(_root.worstMoon == true)
         {
            exp = Math.floor(exp * 2);
         }
      }
      else if(_root.save.arenaZone == 68)
      {
         level = 1 + _root.areaTriangleKill;
         hp = Math.floor(hp * (10 + Math.pow(_root.areaTriangleKill,1.5)) / 10);
         maxhp = Math.floor(maxhp * (10 + Math.pow(_root.areaTriangleKill,1.5)) / 10);
         attack = Math.floor(attack * (10 + Math.pow(_root.areaTriangleKill,1.6)) / 30);
         if(attack > 1500000000)
         {
            attack = Math.floor(1500000000 + Math.pow(attack - 1500000000,0.9));
         }
         if(attack > 2500000000)
         {
            attack = Math.floor(2500000000 + Math.pow(attack - 2500000000,0.9));
         }
         defense = Math.floor(defense * (10 + Math.pow(_root.areaTriangleKill,1.6)) / 10);
         accuracy = Math.floor(accuracy * (10 + Math.pow(_root.areaTriangleKill,1.4)) / 10);
         evasion = Math.floor(evasion * (10 + Math.pow(_root.areaTriangleKill,1.4)) / 10);
         if(_root.apocalypse == true)
         {
            exp = Math.floor(exp * 3);
         }
         else if(_root.worstMoon == true)
         {
            exp = Math.floor(exp * 2);
         }
         exp = Math.floor(exp * Math.min(1 + _root.areaTriangleKill / 300,2));
         if(_root.areaTriangleKill < 100)
         {
            exp = Math.floor(exp * (20 + _root.areaTriangleKill) / 20);
            coin = Math.floor(coin * (20 + _root.areaTriangleKill) / 20);
            pixel = Math.floor(pixel * (20 + _root.areaTriangleKill) / 20);
         }
         else if(_root.areaTriangleKill < 300)
         {
            exp = Math.floor(exp * ((50 + _root.areaTriangleKill) / 50 + 3));
            coin = Math.floor(coin * ((50 + _root.areaTriangleKill) / 50 + 3));
            pixel = Math.floor(pixel * ((50 + _root.areaTriangleKill) / 50 + 3));
         }
         else if(_root.areaTriangleKill < 1000)
         {
            exp = Math.floor(exp * ((100 + _root.areaTriangleKill) / 100 + 6));
            coin = Math.floor(coin * ((100 + _root.areaTriangleKill) / 100 + 6));
            pixel = Math.floor(pixel * ((100 + _root.areaTriangleKill) / 100 + 6));
         }
         else if(_root.areaTriangleKill < 3000)
         {
            exp = Math.floor(exp * ((200 + _root.areaTriangleKill) / 200 + 11));
            coin = Math.floor(coin * ((200 + _root.areaTriangleKill) / 200 + 11));
            pixel = Math.floor(pixel * ((200 + _root.areaTriangleKill) / 200 + 11));
         }
         else
         {
            exp = Math.floor(exp * ((500 + _root.areaTriangleKill) / 500 + 20));
            coin = Math.floor(coin * ((500 + _root.areaTriangleKill) / 500 + 20));
            pixel = Math.floor(pixel * ((500 + _root.areaTriangleKill) / 500 + 20));
         }
         if(_root.areaTriangleKill < _root.save.arenaTriangleToday)
         {
            exp = Math.floor(exp * 0.01);
            coin = Math.floor(coin * 0.01);
            pixel = Math.floor(pixel * 0.01);
         }
      }
      else if(_root.save.arenaZone == 56)
      {
         hp = Math.floor(hp * (100 + Math.pow(_root.areaRevengeKill,2)) / 100);
         maxhp = Math.floor(maxhp * (100 + Math.pow(_root.areaRevengeKill,2)) / 100);
         attack = Math.floor(attack * (100 + Math.pow(_root.areaRevengeKill,1.5)) / 100);
         defense = Math.floor(defense * (100 + Math.pow(_root.areaRevengeKill,1.5)) / 100);
         accuracy = Math.floor(accuracy * (100 + Math.pow(_root.areaRevengeKill,1.2)) / 100);
         evasion = Math.floor(evasion * (100 + Math.pow(_root.areaRevengeKill,1.2)) / 100);
         if(_root.areaRevengeKill < 100)
         {
            exp = Math.floor(exp * (10 + _root.areaRevengeKill * 1) / 10);
            coin = Math.floor(coin * (20 + _root.areaRevengeKill * 1) / 20);
            pixel = Math.floor(pixel * (20 + _root.areaRevengeKill * 1) / 20);
         }
         else
         {
            exp = Math.floor(exp * (5 + _root.areaRevengeKill / 50));
            coin = Math.floor(coin * (5 + _root.areaRevengeKill / 100));
            pixel = Math.floor(pixel * (5 + _root.areaRevengeKill / 100));
         }
         if(_root.areaRevengeKill == 20 || _root.areaRevengeKill == 50)
         {
            exp = Math.floor(exp * 10);
            coin = Math.floor(coin * 5);
            pixel = Math.floor(pixel * 5);
         }
         if(_root.areaRevengeKill % 100 == 0 && _root.areaRevengeKill >= 100)
         {
            exp = Math.floor(exp * _root.areaRevengeKill / 10);
            coin = Math.floor(coin * (8 + _root.areaRevengeKill / 50));
            pixel = Math.floor(pixel * (8 + _root.areaRevengeKill / 50));
         }
         _root.toUpdateRound = 1;
         if(!isNaN(_root.save.arenaBestiary[437]))
         {
            if(_root.areaRevengeKill % 20 == 0 && _root.areaRevengeKill != 0 && _root.areaRevengeKill <= 400)
            {
               earringChance = (330 - _root.raidTimeLeft) * _root.areaRevengeKill / 40000;
               if(_root.areaRevengeKill == 400)
               {
                  earringChance = 1;
               }
               if(Math.random() < earringChance)
               {
                  earringToGet = random(4) + 1;
                  tempDuration = 864000000;
                  if(_root.save.arenaHardcore == true || _root.worstMoon == true)
                  {
                     tempDuration = 2592000000;
                  }
                  if(_root.save.arenaHardcore == true && _root.worstMoon == true)
                  {
                     tempDuration = Infinity;
                  }
                  if(earringToGet == 1)
                  {
                     _root.getArenaAccessory(100 + _root.areaRevengeKill,"Earring",5,9,0,0,9,9,9,Math.floor(_root.areaRevengeKill / 20) + 1,6000000,1,0,10,100 + _root.areaRevengeKill,"EXP","","EXP / Boss Kill",1000 * _root.areaRevengeKill,tempDuration,true,true,true,true,0,"THE MEGABOSS\'s Earrings of Experience","Awarded for reaching round " + _root.areaRevengeKill + " in THE MEGABOSS\'s Revenge.",false,true);
                  }
                  if(earringToGet == 2)
                  {
                     _root.getArenaAccessory(100 + _root.areaRevengeKill,"Earring",6,9,0,0,9,9,9,Math.floor(_root.areaRevengeKill / 20) + 1,6000000,1,0,10,100 + _root.areaRevengeKill,"Coin","Autosteal","",1000 * _root.areaRevengeKill,tempDuration,true,true,true,true,0,"THE MEGABOSS\'s Earrings of Wealth","Awarded for reaching round " + _root.areaRevengeKill + " in THE MEGABOSS\'s Revenge.",false,true);
                  }
                  if(earringToGet == 3)
                  {
                     _root.getArenaAccessory(100 + _root.areaRevengeKill,"Earring",7,9,0,0,9,9,39,Math.floor(_root.areaRevengeKill / 20) + 1,6000000,1,0,10,100 + _root.areaRevengeKill,"","HP Regen","MaxHP",1000 * _root.areaRevengeKill,tempDuration,true,true,true,true,0,"THE MEGABOSS\'s Earrings of Health","Awarded for reaching round " + _root.areaRevengeKill + " in THE MEGABOSS\'s Revenge.",false,true);
                  }
                  if(earringToGet == 4)
                  {
                     _root.getArenaAccessory(100 + _root.areaRevengeKill,"Earring",7,39,0,0,9,9,9,Math.floor(_root.areaRevengeKill / 20) + 1,6000000,1,0,10,100 + _root.areaRevengeKill,"","Non-Boss Damage","Attack Power",1000 * _root.areaRevengeKill,tempDuration,true,true,true,true,0,"THE MEGABOSS\'s Earrings of Power","Awarded for reaching round " + _root.areaRevengeKill + " in THE MEGABOSS\'s Revenge.",false,true);
                  }
               }
            }
         }
      }
      else if(_root.save.arenaZone == 50)
      {
         level = Math.floor(1000 + _root.save.arenaCorruptDifficulty * 400);
         if(level > 9000)
         {
            level = 9000;
         }
         hp = Math.floor(hp * Math.pow(_root.save.arenaCorruptDifficulty / 20,1.8));
         maxhp = Math.floor(maxhp * Math.pow(_root.save.arenaCorruptDifficulty / 20,1.8));
         attack = Math.floor(attack * Math.pow(_root.save.arenaCorruptDifficulty / 20,1.35));
         rangeDamage = Math.floor(rangeDamage * Math.pow(_root.save.arenaCorruptDifficulty / 20,1.35));
         defense = Math.floor(defense * Math.pow(_root.save.arenaCorruptDifficulty / 20,1.35));
         accuracy = Math.floor(accuracy * Math.pow(_root.save.arenaCorruptDifficulty / 20,1.1));
         evasion = Math.floor(evasion * Math.pow(_root.save.arenaCorruptDifficulty / 20,1.1));
         exp = Math.floor(exp * Math.pow(level / 9000,1.2));
         coin = Math.floor(coin * Math.pow(level / 9000,1.2));
         pixel = Math.floor(pixel * Math.pow(level / 9000,1.2));
         if(_root.areaCorruptKill == _root.areaCorruptReq - 1)
         {
            if(_root.save.arenaCorruptDifficulty > 20)
            {
               exp *= 120 + _root.save.arenaCorruptDifficulty * 4;
               coin *= 30 + _root.save.arenaCorruptDifficulty * 1;
               pixel *= 30 + _root.save.arenaCorruptDifficulty * 1;
            }
            else
            {
               exp *= 40 + _root.save.arenaCorruptDifficulty * 8;
               coin *= 10 + _root.save.arenaCorruptDifficulty * 2;
               pixel *= 10 + _root.save.arenaCorruptDifficulty * 2;
            }
         }
         if(_root.save.arenaCorruptDifficulty > 20)
         {
            hp *= _root.save.arenaCorruptDifficulty - 20;
            maxhp *= _root.save.arenaCorruptDifficulty - 20;
            attack = Math.floor(attack * (_root.save.arenaCorruptDifficulty - 18) / 3);
            rangeDamage = Math.floor(rangeDamage * (_root.save.arenaCorruptDifficulty - 18) / 3);
            defense *= _root.save.arenaCorruptDifficulty - 20;
            accuracy = Math.floor(accuracy * (_root.save.arenaCorruptDifficulty - 18) / 3);
            evasion = Math.floor(evasion * (_root.save.arenaCorruptDifficulty - 18) / 3);
            exp = Math.floor(exp * _root.save.arenaCorruptDifficulty / 20);
            coin = Math.floor(coin * (_root.save.arenaCorruptDifficulty + 20) / 40);
            pixel = Math.floor(pixel * (_root.save.arenaCorruptDifficulty + 20) / 40);
         }
         if(_root.save.arenaCorruptDifficulty > 30)
         {
            hp = Math.floor(hp * (_root.save.arenaCorruptDifficulty - 25) / 5);
            maxhp = Math.floor(maxhp * (_root.save.arenaCorruptDifficulty - 25) / 5);
            attack = Math.floor(attack * (_root.save.arenaCorruptDifficulty - 30) / 30);
            defense = Math.floor(defense * (_root.save.arenaCorruptDifficulty - 25) / 5);
            accuracy = Math.floor(accuracy * (_root.save.arenaCorruptDifficulty - 30) / 30);
            evasion = Math.floor(evasion * (_root.save.arenaCorruptDifficulty - 30) / 30);
            exp = Math.floor(exp * (_root.save.arenaCorruptDifficulty + 70) / 100);
            coin = Math.floor(coin * (_root.save.arenaCorruptDifficulty + 370) / 400);
            pixel = Math.floor(pixel * (_root.save.arenaCorruptDifficulty + 370) / 400);
         }
         if(_root.save.arenaCorruptDifficulty > 50)
         {
            if(boss == true)
            {
               hp = hp * (_root.save.arenaCorruptDifficulty - 45) / 5;
               maxhp = maxhp * (_root.save.arenaCorruptDifficulty - 45) / 5;
               defense = defense * (_root.save.arenaCorruptDifficulty - 45) / 5;
            }
            else
            {
               hp = hp * (_root.save.arenaCorruptDifficulty - 40) / 10;
               maxhp = maxhp * (_root.save.arenaCorruptDifficulty - 40) / 10;
               defense = defense * (_root.save.arenaCorruptDifficulty - 40) / 10;
            }
         }
         if(_root.save.arenaCorruptScore < level)
         {
            _root.save.arenaCorruptScore = level;
         }
         _root.save.arenaCorruptToday += 1;
      }
      else if(_root.save.arenaZone == 59)
      {
         hp = Math.floor(hp * (_root.save.arenaCorruptWmDifficulty * (0.5 + _root.save.arenaCorruptWmDifficulty / 2)));
         maxhp = Math.floor(maxhp * (_root.save.arenaCorruptWmDifficulty * (0.5 + _root.save.arenaCorruptWmDifficulty / 2)));
         rangeDamage = Math.floor(rangeDamage * (_root.save.arenaCorruptWmDifficulty * (0.5 + _root.save.arenaCorruptWmDifficulty / 2)));
         defense = Math.floor(defense * (_root.save.arenaCorruptWmDifficulty * (0.5 + _root.save.arenaCorruptWmDifficulty / 2)));
         accuracy = Math.floor(accuracy * (_root.save.arenaCorruptWmDifficulty * (0.5 + _root.save.arenaCorruptWmDifficulty / 2)));
         evasion = Math.floor(evasion * (_root.save.arenaCorruptWmDifficulty * (0.5 + _root.save.arenaCorruptWmDifficulty / 2)));
         exp = Math.floor(exp * (0.4 + _root.save.arenaCorruptWmDifficulty * 0.6));
         coin = Math.floor(coin * (0.7 + _root.save.arenaCorruptWmDifficulty * 0.3));
         pixel = Math.floor(pixel * (0.7 + _root.save.arenaCorruptWmDifficulty * 0.3));
         if(_root.save.arenaCorruptWmDifficulty > 20)
         {
            exp = Math.floor(exp * (0 + _root.save.arenaCorruptWmDifficulty * 0.05));
            coin = Math.floor(coin * (0.6 + _root.save.arenaCorruptWmDifficulty * 0.02));
            pixel = Math.floor(pixel * (0.6 + _root.save.arenaCorruptWmDifficulty * 0.02));
         }
      }
      else if(_root.save.arenaZone == 47)
      {
         level = Math.floor(level + _root.doomTowerTaunt);
         hp = Math.floor(hp * Math.pow(1.03,_root.doomTowerTaunt));
         maxhp = Math.floor(maxhp * Math.pow(1.03,_root.doomTowerTaunt));
         attack = Math.floor(attack * Math.pow(1.02,_root.doomTowerTaunt));
         defense = Math.floor(defense * Math.pow(1.02,_root.doomTowerTaunt));
         accuracy = Math.floor(accuracy * Math.pow(1.02,_root.doomTowerTaunt));
         evasion = Math.floor(evasion * Math.pow(1.02,_root.doomTowerTaunt));
         rangeDamage = Math.floor(rangeDamage * Math.pow(1.015,_root.doomTowerTaunt));
         exp = Math.floor(exp * (1 + _root.doomTowerTaunt * 0.02));
         coin = Math.floor(coin * (1 + _root.doomTowerTaunt * 0.02));
         pixel = Math.floor(pixel * (1 + _root.doomTowerTaunt * 0.02));
      }
      else if(_root.save.arenaZone == 82)
      {
         tempDiff = _root.save.arenaEventPoint[_root.save.arenaEvent];
         if(_root.eventConsecKill < 1)
         {
            tempDiff -= 5000;
         }
         else if(_root.eventConsecKill < 2)
         {
            tempDiff -= 2500;
         }
         else if(_root.eventConsecKill < 5)
         {
            tempDiff -= 1000;
         }
         else if(_root.eventConsecKill < 10)
         {
            tempDiff -= 500;
         }
         else if(_root.eventConsecKill < 20)
         {
            tempDiff += 0;
         }
         else if(_root.eventConsecKill < 50)
         {
            tempDiff += 500;
         }
         else if(_root.eventConsecKill < 100)
         {
            tempDiff += 1000;
         }
         else
         {
            tempDiff += 2500;
         }
         if(tempDiff < 0)
         {
            tempDiff = 0;
         }
         level += Math.floor(tempDiff / 5) - 2500;
         if(level > 8999)
         {
            level = 8999;
         }
         hp = Math.floor(hp * (1 + Math.pow(tempDiff / 250,2)) / 1000);
         maxhp = Math.floor(maxhp * (1 + Math.pow(tempDiff / 250,2)) / 1000);
         if(_root.save.arenaEventPoint[_root.save.arenaEvent] <= 9000)
         {
            hp = Math.floor(hp * (0.25 + _root.save.arenaEventPoint[_root.save.arenaEvent] / 12000));
            maxhp = Math.floor(maxhp * (0.25 + _root.save.arenaEventPoint[_root.save.arenaEvent] / 12000));
         }
         if(_root.save.arenaEvent == 2)
         {
            hp = Math.floor(hp * 15);
            maxhp = Math.floor(maxhp * 15);
         }
         if(_root.save.arenaEvent == 3)
         {
            speed = 10;
            zombie = true;
         }
         if(boss == true)
         {
            hp = Math.floor(hp * 0.8);
            maxhp = Math.floor(maxhp * 0.8);
         }
         else
         {
            hp = Math.floor(hp * 1.2);
            maxhp = Math.floor(maxhp * 1.2);
         }
         attack = Math.floor(attack * (10 + Math.pow(tempDiff / 250,1.6)) / 10);
         rangeDamage = Math.floor(rangeDamage * (10 + Math.pow(tempDiff / 250,1.4)) / 10);
         explodeDamage = Math.floor(explodeDamage * (10 + Math.pow(tempDiff / 250,1.4)) / 10);
         defense = Math.floor(defense * (10 + Math.pow(tempDiff / 250,1.6)) / 10);
         accuracy = Math.floor(accuracy * (10 + Math.pow(tempDiff / 250,1.3)) / 10);
         evasion = Math.floor(evasion * (10 + Math.pow(tempDiff / 250,1.3)) / 10);
         exp = Math.floor(exp * Math.min((10 + tempDiff / 500) / 10,20));
         coin = Math.floor(coin * Math.min((10 + tempDiff / 500) / 10,20));
         pixel = Math.floor(pixel * Math.min((10 + tempDiff / 500) / 10,20));
         hp = Math.floor(Math.pow(hp,0.8) * 10);
         maxhp = Math.floor(Math.pow(maxhp,0.8) * 10);
         attack = Math.floor(Math.pow(attack,0.75) * 10);
         rangeDamage = Math.floor(Math.pow(rangeDamage,0.75) * 10);
         explodeDamage = Math.floor(Math.pow(explodeDamage,0.75) * 10);
         defense = Math.floor(Math.pow(defense,0.75) * 10);
         accuracy = Math.floor(Math.pow(accuracy,0.75) * 10);
         evasion = Math.floor(Math.pow(evasion,0.75) * 10);
      }
      else if(_root.save.arenaZone == 81)
      {
         name = "Test Dummy";
         element = "All";
         level = 1;
         hp = 1000000000000000000;
         maxhp = 1000000000000000000;
         exp = 0;
         coin = 0;
         pixel = 0;
         rangeDamage = 0;
         skill = "None";
         skillLevel = 0;
         explode = 90;
         explodeDamage = 1;
         boss = true;
         rare = false;
         epic = false;
      }
      else if(_root.save.arenaZone == 85)
      {
         if(boss != true)
         {
            attack = Math.floor(attack * 300);
            speed *= 1.3;
            rangeDamage = Math.floor(rangeDamage * 300);
            explodeDamage = Math.floor(explodeDamage * 300);
            defense = Math.floor(defense * 30000);
            accuracy = Math.floor(accuracy * 600);
            evasion = Math.floor(evasion * 600);
            hp = Math.floor(hp * 30000);
            maxhp = Math.floor(maxhp * 30000);
            exp = Math.floor(exp * 18);
            coin = Math.floor(coin * 6);
            pixel = Math.floor(pixel * 18);
         }
         else
         {
            attack = Math.floor(attack * 300);
            rangeDamage = Math.floor(rangeDamage * 300);
            explodeDamage = Math.floor(explodeDamage * 300);
            defense = Math.floor(defense * 30000);
            accuracy = Math.floor(accuracy * 600);
            evasion = Math.floor(evasion * 600);
            hp = Math.floor(hp * 3000);
            maxhp = Math.floor(maxhp * 3000);
            exp = Math.floor(exp * 27);
            coin = Math.floor(coin * 3);
            pixel = Math.floor(pixel * 18);
         }
      }
      else if(_root.save.arenaZone >= 86 && _root.save.arenaZone <= 91)
      {
         if(boss != true)
         {
            attack = Math.floor(attack * (50 + (_root.save.arenaZone - 86) * 15));
            rangeDamage = Math.floor(rangeDamage * (50 + (_root.save.arenaZone - 86) * 15));
            explodeDamage = Math.floor(explodeDamage * (50 + (_root.save.arenaZone - 86) * 15));
            defense = Math.floor(defense * (200 + (_root.save.arenaZone - 86) * 60));
            accuracy = Math.floor(accuracy * (5 + (_root.save.arenaZone - 86) * 5));
            evasion = Math.floor(evasion * (5 + (_root.save.arenaZone - 86) * 5));
            hp = Math.floor(hp * (100 + (_root.save.arenaZone - 86) * 30));
            maxhp = Math.floor(maxhp * (100 + (_root.save.arenaZone - 86) * 30));
            exp = Math.floor(exp * (3 + (_root.save.arenaZone - 86) * 1));
            coin = Math.floor(coin * (2 + (_root.save.arenaZone - 86) * 0.2));
            pixel = Math.floor(pixel * (3 + (_root.save.arenaZone - 86) * 1));
         }
         else
         {
            attack = Math.floor(attack * (50 + (_root.save.arenaZone - 86) * 15));
            rangeDamage = Math.floor(rangeDamage * (50 + (_root.save.arenaZone - 86) * 15));
            explodeDamage = Math.floor(explodeDamage * (50 + (_root.save.arenaZone - 86) * 15));
            defense = Math.floor(defense * (200 + (_root.save.arenaZone - 86) * 60));
            accuracy = Math.floor(accuracy * (5 + (_root.save.arenaZone - 86) * 5));
            evasion = Math.floor(evasion * (5 + (_root.save.arenaZone - 86) * 5));
            hp = Math.floor(hp * (50 + (_root.save.arenaZone - 86) * 15));
            maxhp = Math.floor(maxhp * (50 + (_root.save.arenaZone - 86) * 15));
            exp = Math.floor(exp * (5 + (_root.save.arenaZone - 86) * 1.5));
            coin = Math.floor(coin * (1.5 + (_root.save.arenaZone - 86) * 0.1));
            pixel = Math.floor(pixel * (3 + (_root.save.arenaZone - 86) * 1));
         }
      }
      else if(_root.save.arenaZone == 92)
      {
         if(boss != true)
         {
            attack = Math.floor(attack * 25);
            rangeDamage = Math.floor(rangeDamage * 25);
            explodeDamage = Math.floor(explodeDamage * 25);
            defense = Math.floor(defense * 2500);
            accuracy = Math.floor(accuracy * 25);
            evasion = Math.floor(evasion * 25);
            hp = Math.floor(hp * 250);
            maxhp = Math.floor(maxhp * 250);
            exp = Math.floor(exp * 3.3);
            coin = Math.floor(coin * 2);
            pixel = Math.floor(pixel * 3);
         }
         else
         {
            attack = Math.floor(attack * 25);
            rangeDamage = Math.floor(rangeDamage * 25);
            explodeDamage = Math.floor(explodeDamage * 25);
            defense = Math.floor(defense * 2500);
            accuracy = Math.floor(accuracy * 25);
            evasion = Math.floor(evasion * 25);
            hp = Math.floor(hp * 250);
            maxhp = Math.floor(maxhp * 250);
            exp = Math.floor(exp * 5.5);
            coin = Math.floor(coin * 1.5);
            pixel = Math.floor(pixel * 3);
         }
      }
      if(ultra3 == true)
      {
         level = 9001;
         hp = Math.max(Math.floor(hp * 100),2857142857.142857);
         maxhp = Math.max(Math.floor(maxhp * 100),2857142857.142857);
         if(enemyID == 440)
         {
            hp = Math.floor(hp * 0.9);
            maxhp = Math.floor(maxhp * 0.9);
         }
         if(enemyID == 275)
         {
            hp = Math.floor(hp * 0.75);
            maxhp = Math.floor(maxhp * 0.75);
         }
         attack = Math.floor(attack * 5) + 6666666.666666667;
         defense = Math.floor(defense * 5);
         accuracy = Math.floor(accuracy * 10) + 66666.66666666667;
         evasion = Math.floor(evasion * 10) + 66666.66666666667;
         exp = Math.floor(exp * 300);
         coin = Math.floor(coin * 100);
         pixel = Math.floor(pixel * 100);
         rangeDamage = Math.floor(rangeDamage * 5);
         skill = "ULTRA";
         skillLevel = 15;
         explode = 0;
         evolve = 0;
         rare = true;
         epic = true;
      }
      else if(ultra2 == true)
      {
         level = Math.floor(level * 5) + 2500;
         hp = Math.max(Math.floor(hp * 25),28571428.57142857);
         maxhp = Math.max(Math.floor(maxhp * 25),28571428.57142857);
         attack = Math.floor(attack * 3) + 666666.6666666666;
         defense = Math.floor(defense * 3);
         accuracy = Math.floor(accuracy * 5) + 6666.666666666667;
         evasion = Math.floor(evasion * 5) + 6666.666666666667;
         exp = Math.floor(exp * 75);
         coin = Math.floor(coin * 25);
         pixel = Math.floor(pixel * 25);
         rangeDamage = Math.floor(rangeDamage * 3);
         skill = "ULTRA";
         skillLevel = 10;
         explode = 0;
         evolve = 0;
         rare = true;
         epic = true;
      }
      else if(ultra1 == true)
      {
         level = Math.floor(level * 2) + 1000;
         hp = Math.max(Math.floor(hp * 5),285714.28571428574);
         maxhp = Math.max(Math.floor(maxhp * 5),285714.28571428574);
         attack = Math.floor(attack * 2) + 66666.66666666667;
         defense = Math.floor(defense * 2);
         accuracy = Math.floor(accuracy * 3) + 666.6666666666666;
         evasion = Math.floor(evasion * 3) + 666.6666666666666;
         exp = Math.floor(exp * 15);
         coin = Math.floor(coin * 5);
         pixel = Math.floor(pixel * 5);
         rangeDamage = Math.floor(rangeDamage * 2);
         skill = "ULTRA";
         skillLevel = 5;
         explode = 0;
         evolve = 0;
         rare = true;
         epic = true;
      }
      if(_root.challengeZone == _root.save.arenaZone && _root.challengeDuration > 0)
      {
         level += _root.challengeKill;
         if(name != "Strange Box")
         {
            hp = Math.floor(hp * (5 + _root.challengeKill * 0.1));
            maxhp = Math.floor(maxhp * (5 + _root.challengeKill * 0.1));
         }
         speed *= 1.5;
         attack = Math.floor(attack * 2);
         defense = Math.floor(defense * 3);
         accuracy = Math.floor(accuracy * 2);
         evasion = Math.floor(evasion * 2);
         rangeDamage = Math.floor(rangeDamage * 2);
         if(isNaN(_root.challengeRewardMul))
         {
            _root.challengeRewardMul = 1;
         }
         exp = Math.floor(exp * (_root.challengeRewardMul + Math.min(_root.challengeKill * _root.challengeRewardMul,250) * 0.02));
         coin = Math.floor(coin * (_root.challengeRewardMul / 2 + 0.5 + Math.min(_root.challengeKill * _root.challengeRewardMul,250) * 0.01));
         pixel = Math.floor(pixel * (_root.challengeRewardMul + Math.min(_root.challengeKill * _root.challengeRewardMul,250) * 0.02));
         if(_root.save.arenaHardcore == true)
         {
            attack = Math.floor(attack * 1.5);
            defense = Math.floor(defense * 2);
            accuracy = Math.floor(accuracy * 1.5);
            evasion = Math.floor(evasion * 1.5);
            exp = Math.floor(exp * Math.min(_root.challengeRewardMul,1.2));
            coin = Math.floor(coin * Math.min(_root.challengeRewardMul,1.2));
            pixel = Math.floor(pixel * Math.min(_root.challengeRewardMul,1.2));
         }
         if(_root.worstMoon == true)
         {
            exp = Math.floor(exp * Math.min(_root.challengeRewardMul,1.25));
            coin = Math.floor(coin * Math.min(_root.challengeRewardMul,1.25));
            pixel = Math.floor(pixel * Math.min(_root.challengeRewardMul,1.25));
         }
         if(_root.apocalypse == true)
         {
            exp = Math.floor(exp * Math.min(_root.challengeRewardMul,1.2));
            coin = Math.floor(coin * Math.min(_root.challengeRewardMul,1.2));
            pixel = Math.floor(pixel * Math.min(_root.challengeRewardMul,1.2));
         }
      }
      if(_root.save.arenaHardcore == true && _root.save.arenaZone != 81)
      {
         level = Math.floor(level * 1.3);
         hp = Math.floor(hp * 3.5);
         maxhp = Math.floor(maxhp * 3.5);
         speed *= 1.25;
         attack = Math.floor(attack * 1.5);
         defense = Math.floor(defense * 2);
         accuracy = Math.floor(accuracy * 1.5);
         evasion = Math.floor(evasion * 1.5);
         exp = Math.floor(exp * 1.5);
         coin = Math.floor(coin * 1.5);
         pixel = Math.floor(pixel * 1.5);
         rangeDamage = Math.floor(rangeDamage * 1.5);
         if(rangeDamage == 0 && _root.save.arenaZone != 24 && _root.save.arenaZone != 38 && _root.save.arenaZone != 78)
         {
            rangeDamage = Math.floor(attack * 0.8);
         }
         if(rampagePct > 0)
         {
            rampagePct = Math.floor(rampagePct + (100 - rampagePct) / 2);
         }
         else
         {
            attack = Math.ceil(attack * 0.8);
            rangeDamage = Math.ceil(rangeDamage * 0.8);
            rampagePct = 50;
         }
         if(skill == "None")
         {
            selectedSkill = random(10) + 1;
            if(selectedSkill == 1)
            {
               skill = "Poison";
            }
            if(selectedSkill == 2)
            {
               skill = "Weaken";
            }
            if(selectedSkill == 3)
            {
               skill = "Blind";
            }
            if(selectedSkill == 4)
            {
               skill = "Slow";
            }
            if(selectedSkill == 5)
            {
               skill = "Stun";
            }
            if(selectedSkill == 6)
            {
               skill = "Potion Block";
            }
            if(selectedSkill == 7)
            {
               skill = "Zombify";
            }
            if(selectedSkill == 8)
            {
               skill = "Mana Drain";
            }
            if(selectedSkill == 9)
            {
               skill = "Stat UP";
            }
            if(selectedSkill == 10)
            {
               skill = "Throw Soap";
            }
         }
         if(skillLevel < 5 && skill != "Self-Destruct")
         {
            skillLevel = 5;
         }
      }
   }
   function selectMonster()
   {
      approach = Infinity;
      explodeDeath = false;
      lifespan = 0;
      nextEnemy = 0;
      if(_root.save.arenaZone == 0)
      {
         nextEnemy = 0;
      }
      if(_root.save.arenaZone == 1)
      {
         nextEnemy = 2 + random(9);
         if(Math.random() < 0.001 && _root.save.arenaLevel >= 70 && (_root.save.arenaHardcore == true || Math.random() < 0.1))
         {
            nextEnemy = 487;
         }
      }
      if(_root.save.arenaZone == 2)
      {
         nextEnemy = 2 + random(14);
         if(Math.random() < 0.001 && _root.save.arenaLevel >= 70 && (_root.save.arenaHardcore == true || Math.random() < 0.1))
         {
            nextEnemy = 487;
         }
      }
      if(_root.save.arenaZone == 3)
      {
         nextEnemy = 16 + random(19);
         if(Math.random() < 0.001 && _root.save.arenaLevel >= 70 && (_root.save.arenaHardcore == true || Math.random() < 0.1))
         {
            nextEnemy = 487;
         }
      }
      if(_root.save.arenaZone == 4)
      {
         nextEnemy = 35 + random(20);
         if(Math.random() < 0.001 && _root.save.arenaLevel >= 70 && (_root.save.arenaHardcore == true || Math.random() < 0.1))
         {
            nextEnemy = 487;
         }
      }
      if(_root.save.arenaZone == 5)
      {
         nextEnemy = 55 + random(8);
         if(Math.random() < 0.001 && _root.save.arenaLevel >= 70 && (_root.save.arenaHardcore == true || Math.random() < 0.1))
         {
            nextEnemy = 487;
         }
      }
      if(_root.save.arenaZone == 6)
      {
         nextEnemy = 65 + random(7);
         if(Math.random() < 0.001 && _root.save.arenaLevel >= 70 && (_root.save.arenaHardcore == true || Math.random() < 0.1))
         {
            nextEnemy = 487;
         }
      }
      if(_root.save.arenaZone == 7)
      {
         nextEnemy = 0;
      }
      if(_root.save.arenaZone == 8)
      {
         nextEnemy = 72 + random(11);
         if(Math.random() < 0.002 && _root.save.arenaLevel >= 70 && (_root.save.arenaHardcore == true || Math.random() < 0.1))
         {
            nextEnemy = 487;
         }
      }
      if(_root.save.arenaZone == 9)
      {
         nextEnemy = 83 + random(15);
         if(Math.random() < 0.002 && _root.save.arenaLevel >= 70 && (_root.save.arenaHardcore == true || Math.random() < 0.1))
         {
            nextEnemy = 487;
         }
      }
      if(_root.save.arenaZone == 10)
      {
         nextEnemy = 100 + random(25);
         if(Math.random() < 0.002 && _root.save.arenaLevel >= 70 && (_root.save.arenaHardcore == true || Math.random() < 0.1))
         {
            nextEnemy = 487;
         }
      }
      if(_root.save.arenaZone == 11)
      {
         nextEnemy = 125 + random(12);
         if(Math.random() < 0.002 && _root.save.arenaLevel >= 70 && (_root.save.arenaHardcore == true || Math.random() < 0.1))
         {
            nextEnemy = 487;
         }
      }
      if(_root.save.arenaZone == 12)
      {
         nextEnemy = 137 + random(23);
         if(Math.random() < 0.002 && _root.save.arenaLevel >= 70 && (_root.save.arenaHardcore == true || Math.random() < 0.1))
         {
            nextEnemy = 487;
         }
      }
      if(_root.save.arenaZone == 13)
      {
         nextEnemy = 160 + random(18);
         if(Math.random() < 0.01 && _root.save.arenaLevel >= 70 && (_root.save.arenaHardcore == true || Math.random() < 0.1))
         {
            nextEnemy = 487;
         }
      }
      if(_root.save.arenaZone == 14)
      {
         nextEnemy = 274;
      }
      if(_root.save.arenaZone == 15)
      {
         nextEnemy = 55 + random(10);
      }
      if(_root.save.arenaZone == 16)
      {
         nextEnemy = 87 + random(13);
      }
      if(_root.save.arenaZone == 17)
      {
         nextEnemy = 2 + random(176);
         if(_root.save.arenaBestiary[nextEnemy] == undefined || _root.enemyList[nextEnemy].level > _root.save.level)
         {
            nextEnemy = 0;
            approach = 0.5;
         }
      }
      if(_root.save.arenaZone == 18)
      {
         nextEnemy = 273;
      }
      if(_root.save.arenaZone == 19)
      {
         nextEnemy = 1;
         if(Math.random() < 0.01)
         {
            nextEnemy = 275;
         }
      }
      if(_root.save.arenaZone == 20)
      {
         nextEnemy = 178 + random(5);
         _root.areaFirstPyr = true;
      }
      if(_root.save.arenaZone == 21)
      {
         nextEnemy = 183 + random(13);
      }
      if(_root.save.arenaZone == 23)
      {
         nextEnemy = 196 + random(26);
      }
      if(_root.save.arenaZone == 24)
      {
         _root.areaDefendProgress += 1;
         if(_root.raidDiff == 2)
         {
            if(_root.areaDefendStage == 1 && _root.areaDefendProgress == 0)
            {
               _root.save.arenaHealth = 100;
               _root.fightStat = "STAGE 1";
               _root.fightStat2 = "Defeat all aliens!";
            }
            if(_root.areaDefendStage == 1 && _root.areaDefendProgress >= 15)
            {
               _root.areaDefendStage = 2;
               _root.areaDefendProgress = 0;
               _root.areaDontAttack1 = 2 + random(4);
               _root.areaDontAttack2 = 6 + random(5);
               _root.areaDontAttack3 = 11 + random(5);
               _root.areaDontAttack4 = 16 + random(5);
               _root.areaDontAttack5 = 21 + random(4);
               _root.fightStat = "STAGE 2";
               _root.fightStat2 = "Defeat all aliens... but be careful!";
               _root.save.arenaProofMission += 1;
               _root.dispNews(66,"You have gained 1 [Proof of Mission]!");
            }
            if(_root.areaDefendStage == 2 && _root.areaDefendProgress >= 25)
            {
               _root.areaDefendStage = 3;
               _root.areaDefendProgress = 0;
               _root.fightStat = "STAGE 3";
               _root.fightStat2 = "Defeat the Super Alien!";
               _root.save.arenaProofMission += 1;
               _root.dispNews(66,"You have gained 1 [Proof of Mission]!");
            }
            if(_root.areaDefendStage == 3 && _root.areaDefendProgress >= 1)
            {
               _root.areaDefendStage = 4;
               _root.areaDefendProgress = 0;
               _root.fightStat = "STAGE 4";
               _root.fightStat2 = "Destroy the Alien Generator!";
               _root.save.arenaProofMission += 2;
               _root.dispNews(66,"You have gained 2 [Proof of Mission]!");
            }
            if(_root.areaDefendStage == 4 && _root.areaDefendProgress >= 1)
            {
               _root.areaDefendStage = 5;
               _root.areaDefendProgress = 0;
               _root.areaDefendSecret = Math.pow(_root.save.arenaHealth / 150,4);
               _root.fightStat = "STAGE 5";
               _root.fightStat2 = "Gather supplies to repair the \'??? Generator\'!";
               _root.save.arenaProofMission += 2;
               _root.dispNews(66,"You have gained 2 [Proof of Mission]!");
            }
            if(_root.areaDefendStage == 5 && _root.save.arenaHealth >= 200)
            {
               _root.areaDefendStage = 6;
               _root.areaDefendProgress = 0;
               _root.fightStat2 = "Mission cleared!";
               _root.save.arenaMission += 1;
               _root.save.arenaDefendComplete += 1;
               tempScore = Math.floor(_root.raidTimeLeft * 1000);
               if(_root.save.raidDefend < tempScore)
               {
                  _root.save.raidDefend = tempScore;
               }
               _root.save.arenaProofMission += _root.raidBonus * _root.raidBonus + 1;
               _root.dispNews(66,"You have gained " + (_root.raidBonus * _root.raidBonus + 1) + " [Proof of Mission]!");
               _root.dispNews(66,"Defend Mission complete!");
               _root.house.arena.travel(25);
            }
         }
         else if(_root.raidDiff == 1)
         {
            if(_root.areaDefendStage == 1 && _root.areaDefendProgress == 0)
            {
               _root.save.arenaHealth = 120;
               _root.fightStat = "STAGE 1";
               _root.fightStat2 = "Defeat all aliens!";
            }
            if(_root.areaDefendStage == 1 && _root.areaDefendProgress >= 5)
            {
               _root.areaDefendStage = 2;
               _root.areaDefendProgress = 0;
               _root.areaDontAttack1 = 2 + random(2);
               _root.areaDontAttack2 = 4 + random(3);
               _root.areaDontAttack3 = 7 + random(3);
               _root.areaDontAttack4 = 10 + random(3);
               _root.areaDontAttack5 = 13 + random(2);
               _root.fightStat = "STAGE 2";
               _root.fightStat2 = "Defeat all aliens... but be careful!";
               _root.save.arenaProofMission += 1;
               _root.dispNews(66,"You have gained 1 [Proof of Mission]!");
            }
            if(_root.areaDefendStage == 2 && _root.areaDefendProgress >= 15)
            {
               _root.areaDefendStage = 3;
               _root.areaDefendProgress = 0;
               _root.fightStat = "STAGE 3";
               _root.fightStat2 = "Defeat the Super Alien!";
               _root.save.arenaProofMission += 1;
               _root.dispNews(66,"You have gained 1 [Proof of Mission]!");
            }
            if(_root.areaDefendStage == 3 && _root.areaDefendProgress >= 1)
            {
               _root.areaDefendStage = 4;
               _root.areaDefendProgress = 0;
               _root.fightStat = "STAGE 4";
               _root.fightStat2 = "Destroy the Alien Generator!";
               _root.save.arenaProofMission += 2;
               _root.dispNews(66,"You have gained 2 [Proof of Mission]!");
            }
            if(_root.areaDefendStage == 4 && _root.areaDefendProgress >= 1)
            {
               _root.areaDefendStage = 5;
               _root.areaDefendProgress = 0;
               _root.areaDefendSecret = Math.pow(_root.save.arenaHealth / 150,4);
               _root.fightStat = "STAGE 5";
               _root.fightStat2 = "Gather supplies to repair the \'??? Generator\'!";
               _root.save.arenaProofMission += 2;
               _root.dispNews(66,"You have gained 2 [Proof of Mission]!");
            }
            if(_root.areaDefendStage == 5 && _root.save.arenaHealth >= 200)
            {
               _root.areaDefendStage = 6;
               _root.areaDefendProgress = 0;
               _root.fightStat2 = "Mission cleared!";
               _root.save.arenaMission += 1;
               _root.save.arenaDefendComplete += 1;
               tempScore = Math.floor(_root.raidTimeLeft * 1000);
               if(_root.save.raidDefend < tempScore)
               {
                  _root.save.raidDefend = tempScore;
               }
               _root.save.arenaProofMission += _root.raidBonus * _root.raidBonus + 1;
               _root.dispNews(66,"You have gained " + (_root.raidBonus * _root.raidBonus + 1) + " [Proof of Mission]!");
               _root.dispNews(66,"Defend Mission complete!");
               _root.house.arena.travel(25);
            }
         }
         else
         {
            if(_root.areaDefendStage == 1 && _root.areaDefendProgress == 0)
            {
               _root.save.arenaHealth = 90;
               _root.fightStat = "STAGE 1";
               _root.fightStat2 = "Defeat all aliens!";
            }
            if(_root.areaDefendStage == 1 && _root.areaDefendProgress >= 15)
            {
               _root.areaDefendStage = 2;
               _root.areaDefendProgress = 0;
               _root.areaDontAttack1 = 2 + random(4);
               _root.areaDontAttack2 = 6 + random(5);
               _root.areaDontAttack3 = 11 + random(5);
               _root.areaDontAttack4 = 16 + random(5);
               _root.areaDontAttack5 = 21 + random(5);
               _root.areaDontAttack6 = 26 + random(3);
               _root.areaDontAttack7 = 29 + random(3);
               _root.areaDontAttack8 = 31 + random(2);
               _root.areaDontAttack9 = 33 + random(2);
               _root.fightStat = "STAGE 2";
               _root.fightStat2 = "Defeat all aliens... but be careful!";
               _root.save.arenaProofMission += 5;
               _root.dispNews(66,"You have gained 5 [Proof of Mission]!");
            }
            if(_root.areaDefendStage == 2 && _root.areaDefendProgress >= 35)
            {
               _root.areaDefendStage = 3;
               _root.areaDefendProgress = 0;
               _root.fightStat = "STAGE 3";
               _root.fightStat2 = "Defeat the Super Alien!";
               _root.save.arenaProofMission += 10;
               _root.dispNews(66,"You have gained 10 [Proof of Mission]!");
            }
            if(_root.areaDefendStage == 3 && _root.areaDefendProgress >= 1)
            {
               _root.areaDefendStage = 4;
               _root.areaDefendProgress = 0;
               _root.fightStat = "STAGE 4";
               _root.fightStat2 = "Destroy the Alien Generator!";
               _root.save.arenaProofMission += 15;
               _root.dispNews(66,"You have gained 15 [Proof of Mission]!");
            }
            if(_root.areaDefendStage == 4 && _root.areaDefendProgress >= 1)
            {
               _root.areaDefendStage = 5;
               _root.areaDefendProgress = 0;
               _root.areaDefendSecret = Math.pow(_root.save.arenaHealth / 150,4);
               _root.fightStat = "STAGE 5";
               _root.fightStat2 = "Gather supplies to repair the \'??? Generator\'!";
               _root.save.arenaProofMission += 20;
               _root.dispNews(66,"You have gained 20 [Proof of Mission]!");
            }
            if(_root.areaDefendStage == 5 && _root.save.arenaHealth >= 200)
            {
               _root.areaDefendStage = 6;
               _root.areaDefendProgress = 0;
               _root.fightStat2 = "Mission cleared!";
               _root.save.arenaMission += 1;
               _root.save.arenaDefendComplete += 1;
               _root.save.arenaDefendMega += 1;
               tempScore = Math.floor(_root.raidTimeLeft * 1000);
               if(_root.save.raidDefend < tempScore)
               {
                  _root.save.raidDefend = tempScore;
               }
               megaPow = _root.raidBonus * _root.raidBonus;
               _root.getArenaAccessory(400,"Earring",14,megaPow,15,0,0,0,0,75,750000000,1,0,0,Math.floor(megaPow * 5 / 2),"Random","Random","Random",75000000,Infinity,true,false,false,false,35,"MEGA EARRINGS","An item awarded for clearing MEGA Defend Mission with a score of " + _root.withComma(tempScore) + ".",false,true);
               _root.save.arenaProofMission += _root.raidBonus * _root.raidBonus * 5 + 25;
               _root.dispNews(66,"You have gained " + (_root.raidBonus * _root.raidBonus * 5 + 25) + " [Proof of Mission]!");
               _root.dispNews(66,"Defend Mission complete!");
               _root.house.arena.travel(25);
            }
         }
         if(_root.areaDefendStage == 1)
         {
            nextEnemy = 222 + random(4);
         }
         else if(_root.areaDefendStage == 2)
         {
            nextEnemy = 222 + random(4);
            if(_root.areaDefendProgress == _root.areaDontAttack1 || _root.areaDefendProgress == _root.areaDontAttack2 || _root.areaDefendProgress == _root.areaDontAttack3 || _root.areaDefendProgress == _root.areaDontAttack4 || _root.areaDefendProgress == _root.areaDontAttack5 || _root.areaDefendProgress == _root.areaDontAttack6 || _root.areaDefendProgress == _root.areaDontAttack7 || _root.areaDefendProgress == _root.areaDontAttack8 || _root.areaDefendProgress == _root.areaDontAttack9)
            {
               nextEnemy = 323;
            }
         }
         if(_root.areaDefendStage == 3)
         {
            nextEnemy = 226;
         }
         if(_root.areaDefendStage == 4)
         {
            nextEnemy = 227;
         }
         if(_root.areaDefendStage == 5)
         {
            nextEnemy = 228;
            if(_root.areaDefendProgress == 5 && Math.random() < _root.areaDefendSecret)
            {
               nextEnemy = 229;
            }
            if(_root.raidDiff == 3)
            {
               if(_root.areaDefendProgress <= 10 && Math.random() < _root.areaDefendSecret)
               {
                  nextEnemy = 229;
               }
               if(_root.areaDefendProgress == 5 || _root.areaDefendProgress == 10)
               {
                  nextEnemy = 229;
               }
            }
         }
      }
      if(_root.save.arenaZone == 25)
      {
         nextEnemy = 230 + random(10);
      }
      if(_root.save.arenaZone == 26)
      {
         nextEnemy = 249 + random(12);
      }
      if(_root.save.arenaZone == 27)
      {
         nextEnemy = 261 + random(12);
      }
      if(_root.save.arenaZone == 28)
      {
         nextEnemy = 240 + random(4);
      }
      if(_root.save.arenaZone == 29)
      {
         nextEnemy = 276;
      }
      if(_root.save.arenaZone == 30)
      {
         nextEnemy = 296 + random(5);
      }
      if(_root.save.arenaZone == 31)
      {
         nextEnemy = 301 + random(5);
      }
      if(_root.save.arenaZone == 34)
      {
         nextEnemy = 306 + random(2);
      }
      if(_root.save.arenaZone == 35)
      {
         nextEnemy = 308 + random(2);
      }
      if(_root.save.arenaZone == 36)
      {
         nextEnemy = 310 + random(3);
      }
      if(_root.save.arenaZone == 37)
      {
         nextEnemy = 316;
      }
      if(_root.save.arenaZone == 38)
      {
         nextEnemy = 317;
      }
      if(_root.save.arenaZone == 39)
      {
         nextEnemy = 318;
      }
      if(_root.save.arenaZone == 40)
      {
         nextEnemy = 319;
      }
      if(_root.save.arenaZone == 41)
      {
         nextEnemy = 320;
      }
      if(_root.save.arenaZone == 42)
      {
         nextEnemy = 321;
      }
      if(_root.save.arenaZone == 44)
      {
         nextEnemy = 324 + random(7);
         if(Math.random() < 0.06)
         {
            nextEnemy = 332;
         }
      }
      if(_root.save.arenaZone == 47)
      {
         _root.doomTowerSpawn += 1;
         nextEnemy = 332 + _root.doomTowerSpawn;
         if(nextEnemy > 350)
         {
            nextEnemy = 0;
         }
      }
      if(_root.save.arenaZone == 48)
      {
         nextEnemy = 351 + random(6);
         if(nextEnemy == 352 && Math.random() < 0.8)
         {
            nextEnemy = 351;
         }
         if(nextEnemy == 354 && Math.random() < 0.8)
         {
            nextEnemy = 353;
         }
         if(nextEnemy == 356 && Math.random() < 0.4)
         {
            nextEnemy = 355;
         }
      }
      if(_root.save.arenaZone == 49)
      {
         nextEnemy = 355 + random(13);
         if(nextEnemy == 356 && Math.random() < 0.4)
         {
            nextEnemy = 355;
         }
         if(nextEnemy == 358 && Math.random() < 0.8)
         {
            nextEnemy = 357;
         }
         if(nextEnemy == 360 && Math.random() < 0.8)
         {
            nextEnemy = 359;
         }
         if(nextEnemy == 362 && Math.random() < 0.8)
         {
            nextEnemy = 361;
         }
         if(nextEnemy == 364 && Math.random() < 0.8)
         {
            nextEnemy = 363;
         }
         if(nextEnemy == 366 && Math.random() < 0.8)
         {
            nextEnemy = 365;
         }
         if(nextEnemy == 367 && Math.random() < 0.4)
         {
            nextEnemy = 355 + random(12);
         }
      }
      if(_root.save.arenaZone == 50)
      {
         nextEnemy = 368 + random(7);
         if(Math.random() < 0.125)
         {
            nextEnemy = 376;
         }
         if(_root.areaCorruptKill >= _root.areaCorruptReq - 2)
         {
            nextEnemy = 368 + random(6);
         }
      }
      if(_root.save.arenaZone == 52)
      {
         nextEnemy = 433;
      }
      if(_root.save.arenaZone == 53)
      {
         if(_root.dungeonRoom > 36)
         {
            _root.save.arenaZone = 51;
         }
         if(_root.dungeonRoomClear[_root.dungeonRoom] != 1)
         {
            _root.dungeonRoomProgress[_root.dungeonRoom] += 1;
            dProg = _root.dungeonRoomProgress[_root.dungeonRoom];
            dMob = _root.dungeonRoomMob[_root.dungeonRoom];
            nextEnemy = 0;
            if(dMob == 1)
            {
               if(dProg == 1)
               {
                  nextEnemy = 378;
               }
               if(dProg == 2)
               {
                  nextEnemy = 378;
               }
               if(dProg == 3)
               {
                  nextEnemy = 379;
               }
            }
            else if(dMob == 2)
            {
               if(dProg == 1)
               {
                  nextEnemy = 380;
               }
               if(dProg == 2)
               {
                  nextEnemy = 380;
               }
               if(dProg == 3)
               {
                  nextEnemy = 381;
               }
            }
            else if(dMob == 3)
            {
               if(dProg == 1)
               {
                  nextEnemy = 382;
               }
               if(dProg == 2)
               {
                  nextEnemy = 382;
               }
               if(dProg == 3)
               {
                  nextEnemy = 383;
               }
            }
            else if(dMob == 4)
            {
               if(dProg == 1)
               {
                  nextEnemy = 384;
               }
               if(dProg == 2)
               {
                  nextEnemy = 384;
               }
               if(dProg == 3)
               {
                  nextEnemy = 385;
               }
            }
            else if(dMob == 5)
            {
               if(dProg == 1)
               {
                  nextEnemy = 386;
               }
               if(dProg == 2)
               {
                  nextEnemy = 386;
               }
               if(dProg == 3)
               {
                  nextEnemy = 387;
               }
               if(dProg == 4)
               {
                  nextEnemy = 387;
               }
               if(dProg == 5)
               {
                  nextEnemy = 388;
               }
            }
            else if(dMob == 6)
            {
               if(dProg == 1)
               {
                  nextEnemy = 389;
               }
               if(dProg == 2)
               {
                  nextEnemy = 389;
               }
               if(dProg == 3)
               {
                  nextEnemy = 390;
               }
               if(dProg == 4)
               {
                  nextEnemy = 390;
               }
               if(dProg == 5)
               {
                  nextEnemy = 391;
               }
            }
            else if(dMob == 7)
            {
               if(dProg == 1)
               {
                  nextEnemy = 392;
               }
               if(dProg == 2)
               {
                  nextEnemy = 392;
               }
               if(dProg == 3)
               {
                  nextEnemy = 392;
               }
               if(dProg == 4)
               {
                  nextEnemy = 393;
               }
            }
            else if(dMob == 8)
            {
               if(dProg == 1)
               {
                  nextEnemy = 394;
               }
               if(dProg == 2)
               {
                  nextEnemy = 394;
               }
               if(dProg == 3)
               {
                  nextEnemy = 395;
               }
               if(dProg == 4)
               {
                  nextEnemy = 395;
               }
               if(dProg == 5)
               {
                  nextEnemy = 396;
               }
            }
            else if(dMob == 9)
            {
               if(dProg == 1)
               {
                  nextEnemy = 397;
               }
               if(dProg == 2)
               {
                  nextEnemy = 398;
               }
               if(dProg == 3)
               {
                  nextEnemy = 397;
               }
               if(dProg == 4)
               {
                  nextEnemy = 398;
               }
               if(dProg == 5)
               {
                  nextEnemy = 399;
               }
            }
            else if(dMob == 10)
            {
               if(dProg == 1)
               {
                  nextEnemy = 400;
               }
               if(dProg == 2)
               {
                  nextEnemy = 403;
               }
            }
            else if(dMob == 11)
            {
               if(dProg == 1)
               {
                  nextEnemy = 404;
               }
               if(dProg == 2)
               {
                  nextEnemy = 404;
               }
               if(dProg == 3)
               {
                  nextEnemy = 405;
               }
               if(dProg == 4)
               {
                  nextEnemy = 405;
               }
            }
            else if(dMob == 12)
            {
               if(dProg == 1)
               {
                  nextEnemy = 406;
               }
               if(dProg == 2)
               {
                  nextEnemy = 406;
               }
               if(dProg == 3)
               {
                  nextEnemy = 407;
               }
               if(dProg == 4)
               {
                  nextEnemy = 407;
               }
            }
            else if(dMob == 13)
            {
               if(dProg == 1)
               {
                  nextEnemy = 408;
               }
               if(dProg == 2)
               {
                  nextEnemy = 408;
               }
               if(dProg == 3)
               {
                  nextEnemy = 409;
               }
               if(dProg == 4)
               {
                  nextEnemy = 409;
               }
            }
            else if(dMob == 14)
            {
               if(dProg == 1)
               {
                  nextEnemy = 410;
               }
               if(dProg == 2)
               {
                  nextEnemy = 411;
               }
               if(dProg == 3)
               {
                  nextEnemy = 412;
               }
            }
            else if(dMob == 15)
            {
               if(dProg == 1)
               {
                  nextEnemy = 413;
               }
            }
            else if(dMob == 16)
            {
               if(dProg == 1)
               {
                  if(Math.random() < 0.7)
                  {
                     nextEnemy = 377;
                  }
                  else
                  {
                     nextEnemy = 436;
                  }
               }
            }
            else if(dMob == 17)
            {
               if(dProg == 1)
               {
                  nextEnemy = 416;
               }
            }
            else if(dMob == 18)
            {
               if(dProg == 1)
               {
                  nextEnemy = 418;
               }
            }
            else if(dMob == 19)
            {
               if(dProg == 1)
               {
                  nextEnemy = 422;
               }
            }
            else if(dMob == 20)
            {
               if(dProg == 1)
               {
                  nextEnemy = 425;
               }
            }
            else if(dMob == 21)
            {
               if(dProg == 1)
               {
                  nextEnemy = 430;
               }
            }
            if(nextEnemy == 0 && _root.dungeonRoomClear[_root.dungeonRoom] != 1)
            {
               if(dMob >= 17 && dMob <= 20)
               {
                  _root.dungeonBossDefeat += 1;
                  _root.fightStat = "Boss Rooms: " + _root.dungeonBossDefeat + " / " + _root.dungeonCountBoss;
               }
               else if(dMob <= 16)
               {
                  _root.dungeonMobDefeat += 1;
                  _root.fightStat = "Normal Rooms: " + _root.dungeonMobDefeat + " / " + _root.dungeonCountMob;
               }
               _root.dungeonRoomClear[_root.dungeonRoom] = 1;
            }
         }
      }
      if(_root.save.arenaZone == 78)
      {
         if(_root.dungeonRoom > 36)
         {
            _root.save.arenaZone = 0;
         }
         if(_root.dungeonRoomClear[_root.dungeonRoom] != 1)
         {
            _root.dungeonRoomProgress[_root.dungeonRoom] += 1;
            dProg = _root.dungeonRoomProgress[_root.dungeonRoom];
            dMob = _root.dungeonRoomMob[_root.dungeonRoom];
            nextEnemy = 0;
            if(dMob == 1)
            {
               if(dProg == 1)
               {
                  nextEnemy = 378;
               }
               if(dProg == 2)
               {
                  nextEnemy = 378;
               }
               if(dProg == 3)
               {
                  nextEnemy = 379;
               }
            }
            else if(dMob == 2)
            {
               if(dProg == 1)
               {
                  nextEnemy = 380;
               }
               if(dProg == 2)
               {
                  nextEnemy = 380;
               }
               if(dProg == 3)
               {
                  nextEnemy = 381;
               }
            }
            else if(dMob == 3)
            {
               if(dProg == 1)
               {
                  nextEnemy = 382;
               }
               if(dProg == 2)
               {
                  nextEnemy = 382;
               }
               if(dProg == 3)
               {
                  nextEnemy = 383;
               }
            }
            else if(dMob == 4)
            {
               if(dProg == 1)
               {
                  nextEnemy = 384;
               }
               if(dProg == 2)
               {
                  nextEnemy = 384;
               }
               if(dProg == 3)
               {
                  nextEnemy = 385;
               }
            }
            else if(dMob == 5)
            {
               if(dProg == 1)
               {
                  nextEnemy = 386;
               }
               if(dProg == 2)
               {
                  nextEnemy = 386;
               }
               if(dProg == 3)
               {
                  nextEnemy = 387;
               }
               if(dProg == 4)
               {
                  nextEnemy = 387;
               }
               if(dProg == 5)
               {
                  nextEnemy = 388;
               }
            }
            else if(dMob == 6)
            {
               if(dProg == 1)
               {
                  nextEnemy = 389;
               }
               if(dProg == 2)
               {
                  nextEnemy = 389;
               }
               if(dProg == 3)
               {
                  nextEnemy = 390;
               }
               if(dProg == 4)
               {
                  nextEnemy = 390;
               }
               if(dProg == 5)
               {
                  nextEnemy = 391;
               }
            }
            else if(dMob == 7)
            {
               if(dProg == 1)
               {
                  nextEnemy = 392;
               }
               if(dProg == 2)
               {
                  nextEnemy = 392;
               }
               if(dProg == 3)
               {
                  nextEnemy = 392;
               }
               if(dProg == 4)
               {
                  nextEnemy = 393;
               }
            }
            else if(dMob == 8)
            {
               if(dProg == 1)
               {
                  nextEnemy = 394;
               }
               if(dProg == 2)
               {
                  nextEnemy = 394;
               }
               if(dProg == 3)
               {
                  nextEnemy = 395;
               }
               if(dProg == 4)
               {
                  nextEnemy = 395;
               }
               if(dProg == 5)
               {
                  nextEnemy = 396;
               }
            }
            else if(dMob == 9)
            {
               if(dProg == 1)
               {
                  nextEnemy = 397;
               }
               if(dProg == 2)
               {
                  nextEnemy = 398;
               }
               if(dProg == 3)
               {
                  nextEnemy = 397;
               }
               if(dProg == 4)
               {
                  nextEnemy = 398;
               }
               if(dProg == 5)
               {
                  nextEnemy = 399;
               }
            }
            else if(dMob == 10)
            {
               if(dProg == 1)
               {
                  nextEnemy = 400;
               }
               if(dProg == 2)
               {
                  nextEnemy = 403;
               }
            }
            else if(dMob == 11)
            {
               if(dProg == 1)
               {
                  nextEnemy = 404;
               }
               if(dProg == 2)
               {
                  nextEnemy = 404;
               }
               if(dProg == 3)
               {
                  nextEnemy = 405;
               }
               if(dProg == 4)
               {
                  nextEnemy = 405;
               }
            }
            else if(dMob == 12)
            {
               if(dProg == 1)
               {
                  nextEnemy = 406;
               }
               if(dProg == 2)
               {
                  nextEnemy = 406;
               }
               if(dProg == 3)
               {
                  nextEnemy = 407;
               }
               if(dProg == 4)
               {
                  nextEnemy = 407;
               }
            }
            else if(dMob == 13)
            {
               if(dProg == 1)
               {
                  nextEnemy = 408;
               }
               if(dProg == 2)
               {
                  nextEnemy = 408;
               }
               if(dProg == 3)
               {
                  nextEnemy = 409;
               }
               if(dProg == 4)
               {
                  nextEnemy = 409;
               }
            }
            else if(dMob == 14)
            {
               if(dProg == 1)
               {
                  nextEnemy = 410;
               }
               if(dProg == 2)
               {
                  nextEnemy = 411;
               }
               if(dProg == 3)
               {
                  nextEnemy = 412;
               }
            }
            else if(dMob == 15)
            {
               if(dProg == 1)
               {
                  nextEnemy = 413;
               }
            }
            else if(dMob == 16)
            {
               if(dProg == 1)
               {
                  if(Math.random() < 0.7)
                  {
                     nextEnemy = 377;
                  }
                  else
                  {
                     nextEnemy = 436;
                  }
               }
            }
            else if(dMob == 17)
            {
               if(dProg == 1)
               {
                  nextEnemy = 416;
               }
            }
            else if(dMob == 18)
            {
               if(dProg == 1)
               {
                  nextEnemy = 418;
               }
            }
            else if(dMob == 19)
            {
               if(dProg == 1)
               {
                  nextEnemy = 422;
               }
            }
            else if(dMob == 20)
            {
               if(dProg == 1)
               {
                  nextEnemy = 425;
               }
            }
            else if(dMob == 21)
            {
               if(dProg == 1)
               {
                  nextEnemy = 430;
               }
            }
            if(nextEnemy == 0 && _root.dungeonRoomClear[_root.dungeonRoom] != 1)
            {
               if(dMob >= 17 && dMob <= 20)
               {
                  _root.dungeonBossDefeat += 1;
                  _root.fightStat = "Boss Rooms: " + _root.dungeonBossDefeat + " / " + _root.dungeonCountBoss;
               }
               else if(dMob <= 16)
               {
                  _root.dungeonMobDefeat += 1;
                  _root.fightStat = "Normal Rooms: " + _root.dungeonMobDefeat + " / " + _root.dungeonCountMob;
               }
               _root.reviveCooldown -= 30;
               if(_root.reviveCooldown < 0)
               {
                  _root.reviveCooldown = 0;
               }
               _root.dungeonRoomClear[_root.dungeonRoom] = 1;
            }
         }
      }
      if(_root.save.arenaZone == 54)
      {
         nextEnemy = 431;
      }
      if(_root.save.arenaZone == 56)
      {
         nextEnemy = 437;
      }
      if(_root.save.arenaZone == 57)
      {
         nextEnemy = 438;
         if(Math.random() < 0.03)
         {
            nextEnemy = 439;
         }
      }
      if(_root.save.arenaZone == 59)
      {
         nextEnemy = 440;
      }
      if(_root.save.arenaZone == 60)
      {
         if(_root.save.vegetarianMode != true)
         {
            nextEnemy = 441;
         }
         else
         {
            nextEnemy = 442;
         }
      }
      if(_root.save.arenaZone == 7)
      {
         nextEnemy = _root.labEnemy;
         _root.labEnemy = 0;
      }
      if(_root.save.arenaZone == 61)
      {
         nextEnemy = _root.labEnemy;
      }
      if(_root.save.arenaZone == 62 || _root.save.arenaZone == 86)
      {
         nextEnemy = 448 + random(8);
      }
      if(_root.save.arenaZone == 63 || _root.save.arenaZone == 87)
      {
         nextEnemy = 456 + random(6);
      }
      if(_root.save.arenaZone == 64 || _root.save.arenaZone == 88)
      {
         nextEnemy = 462 + random(7);
      }
      if(_root.save.arenaZone == 65 || _root.save.arenaZone == 89)
      {
         nextEnemy = 469 + random(6);
      }
      if(_root.save.arenaZone == 66 || _root.save.arenaZone == 90)
      {
         nextEnemy = 475 + random(6);
      }
      if(_root.save.arenaZone == 67 || _root.save.arenaZone == 91)
      {
         nextEnemy = 481 + random(3);
         if(Math.random() < 0.15)
         {
            nextEnemy = 484 + random(2);
         }
      }
      if(_root.save.arenaZone == 68)
      {
         nextEnemy = 486;
      }
      if(_root.save.arenaZone == 70)
      {
         if(_root.save.apocSecretKill < 200)
         {
            nextEnemy = 488 + random(13);
         }
         if(_root.save.apocSecretKill == 0)
         {
            _root.fightStat2 = "Voice: \"Another human, huh?\"";
         }
         if(_root.save.apocSecretKill == 50)
         {
            _root.fightStat2 = "Voice: \"Hmm... Something seems strange...\"";
         }
         if(_root.save.apocSecretKill == 100)
         {
            _root.fightStat2 = "Voice: \"This human is unusually strong. Retreat.\"";
         }
         if(_root.save.apocSecretKill == 150)
         {
            _root.fightStat2 = "Voice: \"RETREAT. I SAID RETREAT!!!\"";
         }
         if(_root.save.apocSecretKill == 198)
         {
            _root.fightStat2 = "Voice: \"Run quickly, triangles! I\'m activating the AWOD!\"";
         }
      }
      if(_root.save.arenaZone == 81)
      {
         nextEnemy = 2;
      }
      if(_root.save.arenaZone == 82)
      {
         if(_root.systemtimenow >= _root.eventEndTime[_root.save.arenaEvent] && _root.save.arenaEventKey[_root.save.arenaEvent] != 1)
         {
            nextEnemy = 0;
            _root.showPopup("Event Finished","This event is over.");
            _root.house.arena.travel(0);
         }
         else if(_root.save.arenaEventPoint[_root.save.arenaEvent] >= 10000 && _root.eventConsecKill >= 10)
         {
            nextEnemy = 448 + random(38);
         }
         else if(_root.save.arenaEventPoint[_root.save.arenaEvent] >= 7500 && _root.eventConsecKill >= 5)
         {
            nextEnemy = 448 + random(33);
         }
         else if(_root.save.arenaEventPoint[_root.save.arenaEvent] >= 5000 && _root.eventConsecKill >= 5)
         {
            nextEnemy = 448 + random(27);
         }
         else if(_root.save.arenaEventPoint[_root.save.arenaEvent] >= 2500 && _root.eventConsecKill >= 2)
         {
            nextEnemy = 448 + random(21);
         }
         else if(_root.save.arenaEventPoint[_root.save.arenaEvent] >= 1000 && _root.eventConsecKill >= 2)
         {
            nextEnemy = 448 + random(14);
         }
         else
         {
            nextEnemy = 448 + random(8);
         }
      }
      if(_root.save.arenaZone == 85)
      {
         nextEnemy = 160 + random(18);
      }
      if(_root.save.arenaZone == 92)
      {
         nextEnemy = 351 + random(17);
         if(nextEnemy == 352 && Math.random() < 0.8)
         {
            nextEnemy = 351;
         }
         if(nextEnemy == 354 && Math.random() < 0.8)
         {
            nextEnemy = 353;
         }
         if(nextEnemy == 356 && Math.random() < 0.4)
         {
            nextEnemy = 355;
         }
         if(nextEnemy == 358 && Math.random() < 0.8)
         {
            nextEnemy = 357;
         }
         if(nextEnemy == 360 && Math.random() < 0.8)
         {
            nextEnemy = 359;
         }
         if(nextEnemy == 362 && Math.random() < 0.8)
         {
            nextEnemy = 361;
         }
         if(nextEnemy == 364 && Math.random() < 0.8)
         {
            nextEnemy = 363;
         }
         if(nextEnemy == 366 && Math.random() < 0.8)
         {
            nextEnemy = 365;
         }
         if(nextEnemy == 367 && Math.random() < 0.4)
         {
            nextEnemy = 355 + random(12);
         }
      }
      if(_root.save.inventoryName[_root.save.arenaWeapon] == "Sword of Ascendant" && _root.save.arenaZone == 0)
      {
         nextEnemy = 331;
      }
      if(_root.save.inventorySubtype[_root.save.arenaWeapon] == "Mining Tool" && _root.save.arenaZone >= 1 && _root.save.arenaZone <= 13 && _root.save.arenaZone != 5 && _root.save.arenaZone != 7 && _root.saveid != 21)
      {
         nextEnemy = 322;
         if(_root.save.arenaHardcore == true && Math.random() < 0.02)
         {
            nextEnemy = 435;
         }
         if(_root.worstMoon == true && Math.random() < 0.04)
         {
            nextEnemy = 435;
         }
         if(_root.apocalypse == true && Math.random() < 0.04)
         {
            nextEnemy = 435;
         }
         if(_root.save.inventoryName[_root.save.arenaWeapon] == "Diamond Pickaxe" && Math.random() < 0.03)
         {
            nextEnemy = 435;
         }
         if(_root.save.inventoryName[_root.save.arenaWeapon] == "Master\'s Pickaxe" && Math.random() < 0.06)
         {
            nextEnemy = 435;
         }
         if(_root.save.inventoryName[_root.save.arenaWeapon] == "Legendary Pickaxe" && Math.random() < 0.1)
         {
            nextEnemy = 435;
         }
         if(_root.save.inventoryName[_root.save.arenaWeapon] == "Unobtainium Pickaxe" && Math.random() < 0.2)
         {
            nextEnemy = 435;
         }
      }
      summonEnemy(nextEnemy,true);
   }
   ultra = false;
   ultraCount = 3;
   epic = false;
   rare = false;
   immune = false;
   approach = _root.areaSpawn;
   approachCompensation = 0;
   element = "All";
   enemyID = 0;
   hp = 1;
   maxhp = 1;
   partKilled = 1;
}


