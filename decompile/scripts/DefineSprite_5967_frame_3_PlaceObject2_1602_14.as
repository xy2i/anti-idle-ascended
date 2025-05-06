//! status=pending
on(dragOver,rollOver){
   ID = _parent.ID;
   passive1text = "";
   passive2text = "";
   passive3text = "";
   active1text = "";
   active2text = "";
   active3text = "";
   tempText = "";
   maxI = 2;
   if(_root.save.arenaAllyUpgrade[ID] == 15)
   {
      maxI = 3;
   }
   i = 1;
   while(i <= maxI)
   {
      abil = _root.enemyList[ID]["allyPassive" + i];
      abilX = Math.floor(_root.enemyList[ID]["allyPassive" + i + "X"] * (1 + _root.save.arenaAllyUpgrade[ID] / 10));
      if(i == 3)
      {
         abilX = _root.enemyList[ID]["allyPassive" + i + "X"];
      }
      if(abil == "EXP")
      {
         this["passive" + i + "text"] = "\nEXP: +" + abilX + "%";
      }
      else if(abil == "Coin")
      {
         this["passive" + i + "text"] = "\nCoin: +" + abilX + "%";
      }
      else if(abil == "Pixel")
      {
         this["passive" + i + "text"] = "\nPixel: +" + abilX + "%";
      }
      else if(abil == "Reward")
      {
         this["passive" + i + "text"] = "\nEXP: +" + abilX + "%";
         this["passive" + i + "text"] += "\nCoin: +" + abilX + "%";
         this["passive" + i + "text"] += "\nPixel: +" + abilX + "%";
      }
      else if(abil == "Drop Rate")
      {
         this["passive" + i + "text"] = "\nDrop Rate: +" + abilX + "%";
      }
      else if(abil == "Spawn Rate")
      {
         this["passive" + i + "text"] = "\nSpawn Rate: +" + abilX + "%";
      }
      else if(abil == "Attack %")
      {
         this["passive" + i + "text"] = "\nAttack: +" + abilX + "%";
      }
      else if(abil == "Defense %")
      {
         this["passive" + i + "text"] = "\nDefense: +" + abilX + "%";
      }
      else if(abil == "MaxHP %")
      {
         this["passive" + i + "text"] = "\nMaxHP: +" + abilX + "%";
      }
      else if(abil == "MaxMP %")
      {
         this["passive" + i + "text"] = "\nMaxMP: +" + abilX + "%";
      }
      else if(abil == "Accuracy %")
      {
         this["passive" + i + "text"] = "\nAccuracy: +" + abilX + "%";
      }
      else if(abil == "Evasion %")
      {
         this["passive" + i + "text"] = "\nEvasion: +" + abilX + "%";
      }
      else if(abil == "Equipment Attack")
      {
         this["passive" + i + "text"] = "\nEquipment Attack: +" + abilX;
      }
      else if(abil == "Equipment Defense")
      {
         this["passive" + i + "text"] = "\nEquipment Defense: +" + abilX;
      }
      else if(abil == "Attack Speed")
      {
         this["passive" + i + "text"] = "\nAttack Speed: +" + abilX;
      }
      else if(abil == "Attack Speed %")
      {
         this["passive" + i + "text"] = "\nAttack Speed: +" + abilX + "%";
      }
      else if(abil == "Mastery")
      {
         this["passive" + i + "text"] = "\nMastery: +" + abilX + "%";
      }
      else if(abil == "Resist")
      {
         this["passive" + i + "text"] = "\nDamage Taken: -" + abilX + "%";
      }
      else if(abil == "Hit Chance")
      {
         this["passive" + i + "text"] = "\nHit Chance: +" + abilX + "%";
      }
      else if(abil == "Dodge Chance")
      {
         this["passive" + i + "text"] = "\nDodge Chance: +" + abilX + "%";
      }
      else if(abil == "Critical Chance")
      {
         this["passive" + i + "text"] = "\nCritical Chance: +" + abilX + "%";
      }
      else if(abil == "Critical Damage")
      {
         this["passive" + i + "text"] = "\nCritical Damage: +" + abilX + "%";
      }
      else if(abil == "Reflect")
      {
         this["passive" + i + "text"] = "\nReflect Power: +" + abilX + "%";
      }
      else if(abil == "Magic Resist")
      {
         this["passive" + i + "text"] = "\nMagic Resist: +" + abilX + "%";
      }
      else if(abil == "Double Hit Chance")
      {
         this["passive" + i + "text"] = "\nDouble Hit Chance: +" + abilX + "%";
      }
      else if(abil == "Instant Kill")
      {
         this["passive" + i + "text"] = "\nInstant Kill Chance: +" + abilX + "%";
      }
      else if(abil == "Boss Damage")
      {
         this["passive" + i + "text"] = "\nDamage vs. Bosses: +" + abilX + "%";
      }
      else if(abil == "Non-Boss Damage")
      {
         this["passive" + i + "text"] = "\nDamage vs. Non-Bosses: +" + abilX + "%";
      }
      else if(abil == "Damage")
      {
         this["passive" + i + "text"] = "\nDamage vs. Bosses: +" + abilX + "%";
         this["passive" + i + "text"] += "\nDamage vs. Non-Bosses: +" + abilX + "%";
      }
      else if(abil == "Ignore Defense")
      {
         this["passive" + i + "text"] = "\nIgnore " + abilX + "% of monster DEF";
      }
      else if(abil == "Potion Efficiency")
      {
         this["passive" + i + "text"] = "\nPotion Efficiency: +" + abilX + "%";
      }
      else if(abil == "Negate Effect")
      {
         this["passive" + i + "text"] = "\nNegate Effect Chance: +" + abilX + "%";
      }
      i++;
   }
   i = 1;
   while(i <= 3)
   {
      abil = _root.enemyList[ID]["allyActive" + i];
      abilX = _root.enemyList[ID]["allyActive" + i + "X"];
      abilY = _root.enemyList[ID]["allyActive" + i + "Y"];
      abilZ = _root.enemyList[ID]["allyActive" + i + "Z"];
      if(abil != "")
      {
         this["active" + i + "text"] = "\n<font color=\'#99FF00\'><b>" + abil + "</b></font> [CD: <font color=\'#99FF00\'><b>" + abilZ + "</b>s</font>]";
      }
      if(abil == "Attack: Regular")
      {
         this["active" + i + "text"] += "\nDeals " + abilX + "% damage.";
      }
      else if(abil == "Attack: Knockback")
      {
         this["active" + i + "text"] += "\nDeals " + abilX + "% damage and knocks the monster back a distance of " + Math.floor(abilY * 25) + "%.";
      }
      else if(abil == "HP Recovery")
      {
         this["active" + i + "text"] += "\nRecovers " + abilX + "% of MaxHP.";
      }
      else if(abil == "MP Recovery")
      {
         this["active" + i + "text"] += "\nRecovers " + abilX + "% of MaxMP.";
      }
      else if(abil == "Attack: Poison")
      {
         this["active" + i + "text"] += "\nDeals " + abilX + "% damage and poisons the monster for " + abilY + "s.";
      }
      else if(abil == "Attack: Weaken")
      {
         this["active" + i + "text"] += "\nDeals " + abilX + "% damage and weakens the monster for " + abilY + "s.";
      }
      else if(abil == "Attack: Blind")
      {
         this["active" + i + "text"] += "\nDeals " + abilX + "% damage and blinds the monster for " + abilY + "s.";
      }
      else if(abil == "Attack: Stun")
      {
         this["active" + i + "text"] += "\nDeals " + abilX + "% damage and stuns the monster for " + abilY + "s.";
      }
      else if(abil == "Heal")
      {
         this["active" + i + "text"] += "\nRecovers " + abilX + "% of MaxHP and deals " + abilY + "% damage to undead monsters.";
      }
      else if(abil == "Buff Extension")
      {
         this["active" + i + "text"] += "\nExtends your current buff duration by " + abilX + "s.";
      }
      else if(abil == "Buff: Power")
      {
         this["active" + i + "text"] += "\nGrants a " + abilX + "s Power Buff.";
      }
      else if(abil == "Buff: Master")
      {
         this["active" + i + "text"] += "\nGrants a " + abilX + "s Master Buff.";
      }
      else if(abil == "Buff: Reward")
      {
         this["active" + i + "text"] += "\nGrants a " + abilX + "s Reward Buff.";
      }
      else if(abil == "Buff: Enrage")
      {
         this["active" + i + "text"] += "\nGreatly increases your power for " + abilX + "s.";
      }
      else if(abil == "Buff: Elemental Boost")
      {
         this["active" + i + "text"] += "\nIncreases your EXP gain, elemental damage and elemental resistance for " + abilX + "s.";
      }
      else if(abil == "Buff: Invincibility")
      {
         this["active" + i + "text"] += "\nAllows you to become immune to all monster attacks for " + abilX + "s.";
      }
      else if(abil == "Attack: Power Down")
      {
         this["active" + i + "text"] += "\nDeals " + abilX + "% damage and permanently reduces the monster\'s Attack by " + abilY + "%. Stat reduction effect stacks up to 2 times per monster.";
      }
      else if(abil == "Attack: Defense Down")
      {
         this["active" + i + "text"] += "\nDeals " + abilX + "% damage and permanently reduces the monster\'s Defense by " + abilY + "%. Stat reduction effect stacks up to 2 times per monster.";
      }
      else if(abil == "Attack: Accuracy Down")
      {
         this["active" + i + "text"] += "\nDeals " + abilX + "% damage and permanently reduces the monster\'s Accuracy by " + abilY + "%. Stat reduction effect stacks up to 2 times per monster.";
      }
      else if(abil == "Attack: Evasion Down")
      {
         this["active" + i + "text"] += "\nDeals " + abilX + "% damage and permanently reduces the monster\'s Evasion by " + abilY + "%. Stat reduction effect stacks up to 2 times per monster.";
      }
      else if(abil == "Attack: Silence")
      {
         this["active" + i + "text"] += "\nDeals " + abilX + "% damage and has a " + abilY + "% chance to remove a non-boss, non-ULTRA monster\'s magic attack, special ability and ability to rampage.";
      }
      else if(abil == "Spirit Recovery")
      {
         this["active" + i + "text"] += "\nRecovers " + abilX + " Spirit.";
      }
      else if(abil == "Attack: Ignore Defense")
      {
         this["active" + i + "text"] += "\nDeals " + abilX + "% damage, ignoring the monster\'s defense.";
      }
      else if(abil == "Produce Loot: Coin")
      {
         this["active" + i + "text"] += "\nProduces approximately " + _root.withComma(abilX) + " Coins in the form of loot.";
      }
      else if(abil == "Produce Loot: Pixel")
      {
         this["active" + i + "text"] += "\nProduces approximately " + _root.withComma(abilX) + " Pixels in the form of loot.";
      }
      else if(abil == "Produce Loot: Material")
      {
         this["active" + i + "text"] += "\nProduces approximately " + _root.withComma(abilX) + " Crafting Material in the form of loot.";
      }
      else if(abil == "Produce Loot: Stat")
      {
         this["active" + i + "text"] += "\nProduces a Stat Increase loot.";
      }
      else if(abil == "Produce Loot: Rare Item")
      {
         this["active" + i + "text"] += "\nProduces a random rare item.";
      }
      i++;
   }
   _root.actiondescription = "<font color=\'#FFFF00\'><b>" + _root.enemyList[ID].name + "</b></font>";
   _root.actiondescription += "\nLevel: <b>" + _root.withComma(_root.enemyList[ID].level) + "</b></font>";
   _root.actiondescription += "\nAlly EXP: " + _root.withComma(_root.save.arenaAllyEXP[ID]) + " / 10,000";
   _root.actiondescription += "\n----------\n<b>Passive Abilities</b>";
   _root.actiondescription += passive1text;
   _root.actiondescription += passive2text;
   _root.actiondescription += "<font color=\'#FFFF00\'>" + passive3text + "</font>";
   _root.actiondescription += "\n----------\n<b>Active Abilities</b>";
   _root.actiondescription += active1text;
   _root.actiondescription += active2text;
   _root.actiondescription += active3text;
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


