//! status=pending
ID = _root.bestiarySelect;
level = _root.enemyList[ID].level;
hp = _root.enemyList[ID].hp;
attack = _root.enemyList[ID].attack;
defense = _root.enemyList[ID].defense;
accuracy = _root.enemyList[ID].accuracy;
evasion = _root.enemyList[ID].evasion;
exp = _root.enemyList[ID].exp;
coin = _root.enemyList[ID].coin;
pixel = _root.enemyList[ID].pixel;
rangeDamage = _root.enemyList[ID].rangeDamage;
rampagePct = _root.enemyList[ID].rampagePct;
skill = _root.enemyList[ID].skill;
skillLevel = _root.enemyList[ID].skillLevel;
if(_root.save.arenaHardcore == true)
{
   level = Math.floor(level * 1.3);
   if(level > 9001)
   {
      level = 9001;
   }
   hp = Math.floor(hp * 3.5);
   attack = Math.floor(attack * 1.5);
   defense = Math.floor(defense * 2);
   accuracy = Math.floor(accuracy * 1.5);
   evasion = Math.floor(evasion * 1.5);
   exp = Math.floor(exp * 1.5);
   coin = Math.floor(coin * 1.5);
   pixel = Math.floor(pixel * 1.5);
   rangeDamage = Math.floor(rangeDamage * 1.5);
   if(rangeDamage == 0)
   {
      rangeDamage = Math.floor(attack * 0.8);
   }
   if(rampagePct > 0)
   {
      rampagePct = Math.floor(rampagePct + (100 - rampagePct) / 2);
   }
   else
   {
      rampagePct = 50;
      attack = Math.floor(attack * 0.8);
      rangeDamage = Math.floor(rangeDamage * 0.8);
   }
   if(skill == "None")
   {
      skill = "Random";
      skillLevel = 5;
   }
   if(skillLevel < 5)
   {
      skillLevel = 5;
   }
}
levelText.text = level;
nameText.text = _root.enemyList[ID].name;
artText.text = "Art by " + _root.enemyList[ID].art;
areaText.text = _root.enemyList[ID].loc;
hpText.text = _root.withComma(hp);
attackText.text = _root.withComma(attack);
magicAttackText.text = _root.withComma(rangeDamage);
defenseText.text = _root.withComma(defense);
if(defense < 0)
{
   defenseText.text = "MAX";
}
accuracyText.text = _root.withComma(accuracy);
evasionText.text = _root.withComma(evasion);
expText.text = _root.withComma(exp);
coinText.text = _root.withComma(coin);
pixelText.text = _root.withComma(pixel);
elementText.text = _root.enemyList[ID].element;
if(_root.enemyList[ID].element == "All")
{
   elementText.text = "None";
}
speedText.text = _root.withComma(_root.enemyList[ID].speed * 6.4) + "% screen/s";
if(_root.save.arenaHardcore == true)
{
   speedText.text = _root.withComma(_root.enemyList[ID].speed * 8) + "% screen/s";
}
healText.text = _root.withComma(_root.enemyList[ID].heal);
explodeText.text = _root.withComma(_root.enemyList[ID].explodeDamage) + " / " + _root.enemyList[ID].explode + "s";
if(_root.enemyList[ID].explode == 0)
{
   explodeText.text = "-";
}
rampageText.text = rampagePct + "% HP left";
if(rampagePct == 0)
{
   rampageText.text = "-";
}
specialText.text = skill;
if(skill == "None")
{
   specialText.text = "-";
}
bossFlag = "-";
if(_root.enemyList[ID].boss == true)
{
   bossFlag = "Yes";
}
zombieFlag = "-";
if(_root.enemyList[ID].zombie == true)
{
   zombieFlag = "Yes";
}
evolveFlag = "-";
if(_root.enemyList[ID].evolve != 0)
{
   evolveFlag = _root.enemyList[_root.enemyList[ID].evolve].name;
}
bossText.text = bossFlag;
zombieText.text = zombieFlag;
evolveText.text = evolveFlag;
expText.text = _root.withComma(exp);
coinText.text = _root.withComma(coin);
pixelText.text = _root.withComma(pixel);
levelText.textColor = 16777215;
if(level < _root.save.level * 0.6 - 25)
{
   levelText.textColor = 16776960;
}
if(level >= _root.save.level + 1)
{
   levelText.textColor = 16711680;
}
nameText.textColor = 16777215;
if(_root.enemyList[ID].boss == true)
{
   nameText.textColor = 10027263;
}
attackText.textColor = 16777215;
if(attack > _root.damageResist * 1.6)
{
   attackText.textColor = 16711680;
}
else if(attack > _root.damageResist * 1.2)
{
   attackText.textColor = 16750848;
}
else if(attack < _root.damageResist)
{
   attackText.textColor = 16776960;
}
magicAttackText.textColor = 16777215;
if(rangeDamage > _root.damageResist * 1.6)
{
   magicAttackText.textColor = 16711680;
}
else if(rangeDamage > _root.damageResist * 1.2)
{
   magicAttackText.textColor = 16750848;
}
else if(rangeDamage < _root.damageResist)
{
   magicAttackText.textColor = 16776960;
}
explodeText.textColor = 16777215;
if(_root.enemyList[ID].explodeDamage > _root.damageResist * 1.6)
{
   explodeText.textColor = 16711680;
}
else if(_root.enemyList[ID].explodeDamage > _root.damageResist * 1.2)
{
   explodeText.textColor = 16750848;
}
else if(_root.enemyList[ID].explodeDamage < _root.damageResist)
{
   explodeText.textColor = 16776960;
}
hpText.textColor = 16777215;
avgDamage = _root.minDamage - defense;
if(avgDamage < 1)
{
   avgDamage = 1;
}
avgHit = hp / avgDamage;
if(avgHit >= 75)
{
   hpText.textColor = 16711680;
}
else if(avgHit >= 25)
{
   hpText.textColor = 16750848;
}
else if(avgHit <= 5)
{
   hpText.textColor = 16776960;
}
defenseText.textColor = 16777215;
if(defense > _root.minDamage * 1.6)
{
   defenseText.textColor = 16711680;
}
else if(defense > _root.minDamage * 1.2)
{
   defenseText.textColor = 16750848;
}
else if(defense < _root.minDamage)
{
   defenseText.textColor = 16776960;
}
if(defense < 0)
{
   defenseText.textColor = 10066329;
}
accuracyText.textColor = 16777215;
if(accuracy > _root.evasion * 1.6)
{
   accuracyText.textColor = 16711680;
}
else if(accuracy > _root.evasion * 1.2)
{
   accuracyText.textColor = 16750848;
}
else if(accuracy < _root.evasion)
{
   accuracyText.textColor = 16776960;
}
evasionText.textColor = 16777215;
if(evasion > _root.accuracy * 1.6)
{
   evasionText.textColor = 16711680;
}
else if(evasion > _root.accuracy * 1.2)
{
   evasionText.textColor = 16750848;
}
else if(evasion < _root.accuracy)
{
   evasionText.textColor = 16776960;
}
