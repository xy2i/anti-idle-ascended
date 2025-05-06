//! status=pending
on(release){
   openChest();
}


onClipEvent(enterFrame){
   fr = _root.dungeonRoomChest[_root.dungeonRoom] + 1;
   gotoAndStop(fr);
   if(Key.isDown(16) && _root.house.arena.popScreen._currentframe == 1)
   {
      openChest();
   }
}


onClipEvent(load){
   function openChest()
   {
      if(_root.dungeonRoomChest[_root.dungeonRoom] == 1)
      {
         _root.dungeonRoomChest[_root.dungeonRoom] = 2;
         _root.dungeonChestOpen += 1;
         _root.fightStat = "Treasure Chests: " + _root.dungeonChestOpen + " / 10";
         if(Math.random() < 0.02 * _root.dungeonChestOpen)
         {
            cfocGain = Math.floor(10 + _root.endlessFloor / 5);
            _root.incDt2();
            _root.house.arena.stuffHolder.attachMovie("newLoot15","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,lootValue:cfocGain});
         }
         if(Math.random() < 0.01 * _root.dungeonChestOpen)
         {
            _root.incDt2();
            _root.house.arena.stuffHolder.attachMovie("newLoot9","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,lootValue:2});
         }
         if(Math.random() < 0.05 * _root.dungeonChestOpen)
         {
            _root.incDt2();
            _root.house.arena.stuffHolder.attachMovie("newLoot10","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,lootValue:10 + random(11)});
         }
         if(Math.random() < 0.01 * _root.dungeonChestOpen)
         {
            _root.incDt2();
            _root.house.arena.stuffHolder.attachMovie("newLoot16","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,lootValue:10 + random(11)});
         }
         if(_root.dungeonChestOpen == 1)
         {
            valueX = 100000 * _root.endlessFloor;
            _root.incDt2();
            _root.house.arena.stuffHolder.attachMovie("newLoot7","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,lootValue:valueX});
         }
         else if(_root.dungeonChestOpen == 2)
         {
            valueX = 200000 * _root.endlessFloor;
            _root.incDt2();
            _root.house.arena.stuffHolder.attachMovie("newLoot7","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,lootValue:valueX});
         }
         else if(_root.dungeonChestOpen == 3)
         {
            valueX = 300000 * _root.endlessFloor;
            _root.incDt2();
            _root.house.arena.stuffHolder.attachMovie("newLoot7","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,lootValue:valueX});
            _root.incDt2();
            _root.house.arena.stuffHolder.attachMovie("newLoot11","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,lootValue:1});
         }
         else if(_root.dungeonChestOpen == 4)
         {
            valueX = 400000 * _root.endlessFloor;
            _root.incDt2();
            _root.house.arena.stuffHolder.attachMovie("newLoot7","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,lootValue:valueX});
            _root.incDt2();
            _root.house.arena.stuffHolder.attachMovie("newLoot11","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,lootValue:1});
         }
         else if(_root.dungeonChestOpen == 5)
         {
            valueX = 500000 * _root.endlessFloor;
            _root.incDt2();
            _root.house.arena.stuffHolder.attachMovie("newLoot7","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,lootValue:valueX});
            _root.incDt2();
            _root.house.arena.stuffHolder.attachMovie("newLoot11","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,lootValue:1});
         }
         else if(_root.dungeonChestOpen == 6)
         {
            valueX = 600000 * _root.endlessFloor;
            _root.incDt2();
            _root.house.arena.stuffHolder.attachMovie("newLoot7","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,lootValue:valueX});
            _root.incDt2();
            _root.house.arena.stuffHolder.attachMovie("newLoot11","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,lootValue:1});
         }
         else if(_root.dungeonChestOpen == 7)
         {
            valueX = 700000 * _root.endlessFloor;
            _root.incDt2();
            _root.house.arena.stuffHolder.attachMovie("newLoot7","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,lootValue:valueX});
            _root.incDt2();
            _root.house.arena.stuffHolder.attachMovie("newLoot11","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,lootValue:1});
         }
         else if(_root.dungeonChestOpen == 8)
         {
            valueX = 800000 * _root.endlessFloor;
            _root.incDt2();
            _root.house.arena.stuffHolder.attachMovie("newLoot7","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,lootValue:valueX});
            _root.incDt2();
            _root.house.arena.stuffHolder.attachMovie("newLoot11","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,lootValue:2});
         }
         else if(_root.dungeonChestOpen == 9)
         {
            valueX = 900000 * _root.endlessFloor;
            _root.incDt2();
            _root.house.arena.stuffHolder.attachMovie("newLoot7","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,lootValue:valueX});
            _root.incDt2();
            _root.house.arena.stuffHolder.attachMovie("newLoot11","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,lootValue:2});
         }
         else if(_root.dungeonChestOpen == 10)
         {
            tukkoniumChance = _root.endlessFloor / 5000000;
            tukkoniumAmount = 1;
            if(_root.save.arenaHardcore == true)
            {
               tukkoniumChance *= 2;
               if(_root.endlessFloor >= 200)
               {
                  tukkoniumChance *= 2.5;
               }
            }
            if(_root.endlessFloor >= 100)
            {
               tukkoniumChance *= 2;
            }
            if(_root.endlessFloor >= 150)
            {
               tukkoniumChance *= 2;
            }
            if(_root.endlessFloor >= 200)
            {
               tukkoniumChance *= 2.5;
               tukkoniumAmount = 1 + random(2);
               if(_root.save.arenaHardcore == true)
               {
                  tukkoniumAmount = 2 + random(2);
               }
            }
            if(_root.endlessFloor >= 225)
            {
               tukkoniumChance *= 2;
               if(_root.save.arenaHardcore == true)
               {
                  tukkoniumAmount = 3 + random(3);
               }
            }
            if(_root.endlessFloor > 200)
            {
               tukkoniumChance *= _root.endlessFloor - 200;
            }
            if(_root.endlessFloor % 5 == 0)
            {
               tukkoniumChance *= 5;
            }
            if(_root.endlessFloor == 250)
            {
               tukkoniumChance = 1;
               tukkoniumAmount = 5 + random(3);
               if(_root.save.arenaHardcore == true)
               {
                  tukkoniumAmount = 50 + random(26);
               }
            }
            if(Math.random() < tukkoniumChance)
            {
               _root.incDt2();
               _root.house.arena.stuffHolder.attachMovie("newLoot21","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,lootValue:tukkoniumAmount});
            }
            if(_root.endlessFloor == 250)
            {
               _root.edClear = true;
               gigaAttack = 350;
               gigaSpeed = 5;
               gigaCrit = 50;
               gigaDex = 50;
               gigaHealth = 50;
               if(Math.random() < 0.25)
               {
                  gigaCrit += 50;
               }
               else if(Math.random() < 0.3333333333333333)
               {
                  gigaDex += 50;
               }
               else if(Math.random() < 0.5)
               {
                  gigaHealth += 50;
                  gigaSpeed += 10;
               }
               else
               {
                  gigaAttack += 50;
               }
               if(_root.save.arenaHardcore == true)
               {
                  gigaAttack = 400;
                  gigaCrit = 100;
                  gigaDex = 100;
                  gigaHealth = 100;
                  gigaSpeed = 15;
                  _root.incDt2();
                  _root.house.arena.stuffHolder.attachMovie("invenLoot","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,type:"Accessory",frame:26,name:"TERA PENDANT",reqRank:50,subtype:"Pendant",attack:gigaAttack,defense:3000,speed:gigaSpeed,crit:gigaCrit,dexterity:gigaDex,health:gigaHealth,bonus:"Random",ability:"Random",moreBonus:"Random",maxLevel:75,expTNL:750000000,sell:75000000,expiry:Infinity,enhance:0,bonusPow:100000,unob:70,noBonus:false,noLife:false,noRecycle:false,noFuse:false,spirit:false,desc:"An item awarded for opening all 10 Treasure Chests on Floor 250 of Endless Dungeon (Hardcore)."});
               }
               else
               {
                  _root.incDt2();
                  _root.house.arena.stuffHolder.attachMovie("invenLoot","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,type:"Accessory",frame:26,name:"TERA PENDANT",reqRank:50,subtype:"Pendant",attack:gigaAttack,defense:3000,speed:gigaSpeed,crit:gigaCrit,dexterity:gigaDex,health:gigaHealth,bonus:"Random",ability:"Random",moreBonus:"Random",maxLevel:75,expTNL:750000000,sell:75000000,expiry:0,enhance:0,bonusPow:100000,unob:70,noBonus:false,noLife:true,noRecycle:false,noFuse:false,spirit:false,desc:"An item awarded for opening all 10 Treasure Chests on Floor 250 of Endless Dungeon (Casual)."});
               }
            }
            if(_root.endlessFloor < 10 || _root.endlessFloor % 5 == 1)
            {
               valueX = 1000000 * _root.endlessFloor;
               _root.incDt2();
               _root.house.arena.stuffHolder.attachMovie("newLoot7","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,lootValue:valueX});
               _root.incDt2();
               _root.house.arena.stuffHolder.attachMovie("newLoot11","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,lootValue:2});
            }
            else
            {
               itemToGet = random(5) + 1;
               if(_root.endlessFloor % 5 == 0 && _root.endlessFloor > 30)
               {
                  itemToGet = random(10) + 1;
                  if(_root.endlessFloor >= 100)
                  {
                     itemToGet = random(5) + 6;
                  }
               }
               holyNoLife = true;
               if(_root.save.arenaHardcore == true && _root.endlessFloor >= 5)
               {
                  holyNoLife = false;
               }
               holyUnob = 6;
               if(_root.save.arenaHardcore == true)
               {
                  holyUnob += 4;
               }
               if(_root.endlessFloor == 250)
               {
                  holyUnob += 10;
               }
               _root.incDt2();
               floorText = "[" + Math.min(_root.endlessFloor,250) + "F] ";
               if(itemToGet == 1)
               {
                  _root.house.arena.stuffHolder.attachMovie("invenLoot","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,type:"Armor",frame:175,name:floorText + "Dragon Slayer Hat",reqRank:363,subtype:"Hat",attack:40 + Math.min(_root.endlessFloor,200) * 4,defense:400 + Math.min(_root.endlessFloor,200) * 40,speed:0,crit:20 + Math.min(_root.endlessFloor,200) * 2,dexterity:10 + Math.min(_root.endlessFloor,200) * 1,health:10 + Math.min(_root.endlessFloor,200) * 1,bonus:"Spawn Rate",ability:"Attack",moreBonus:"Attack Power",maxLevel:44,expTNL:700000000,sell:1000000 * _root.endlessFloor,expiry:(50 + Math.min(_root.endlessFloor,200)) * 86400000,enhance:4,bonusPow:_root.endlessFloor * 70,unob:holyUnob,noBonus:false,noLife:holyNoLife,noRecycle:false,noFuse:false,spirit:false,desc:"An item awarded for opening all 10 Treasure Chests on Floor " + Math.min(_root.endlessFloor,250) + " of Endless Dungeon."});
               }
               if(itemToGet == 2)
               {
                  _root.house.arena.stuffHolder.attachMovie("invenLoot","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,type:"Armor",frame:175,name:floorText + "Dragon Slayer Shirt",reqRank:363,subtype:"Shirt",attack:40 + Math.min(_root.endlessFloor,200) * 4,defense:400 + Math.min(_root.endlessFloor,200) * 40,speed:0,crit:20 + Math.min(_root.endlessFloor,200) * 2,dexterity:10 + Math.min(_root.endlessFloor,200) * 1,health:10 + Math.min(_root.endlessFloor,200) * 1,bonus:"Spawn Rate",ability:"Attack",moreBonus:"Attack Power",maxLevel:44,expTNL:700000000,sell:1000000 * _root.endlessFloor,expiry:(50 + Math.min(_root.endlessFloor,200)) * 86400000,enhance:4,bonusPow:_root.endlessFloor * 70,unob:holyUnob,noBonus:false,noLife:holyNoLife,noRecycle:false,noFuse:false,spirit:false,desc:"An item awarded for opening all 10 Treasure Chests on Floor " + Math.min(_root.endlessFloor,250) + " of Endless Dungeon."});
               }
               if(itemToGet == 3)
               {
                  _root.house.arena.stuffHolder.attachMovie("invenLoot","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,type:"Armor",frame:175,name:floorText + "Dragon Slayer Gloves",reqRank:363,subtype:"Gloves",attack:40 + Math.min(_root.endlessFloor,200) * 4,defense:400 + Math.min(_root.endlessFloor,200) * 40,speed:0,crit:20 + Math.min(_root.endlessFloor,200) * 2,dexterity:10 + Math.min(_root.endlessFloor,200) * 1,health:10 + Math.min(_root.endlessFloor,200) * 1,bonus:"Spawn Rate",ability:"Attack",moreBonus:"Attack Power",maxLevel:44,expTNL:700000000,sell:1000000 * _root.endlessFloor,expiry:(50 + Math.min(_root.endlessFloor,200)) * 86400000,enhance:4,bonusPow:_root.endlessFloor * 70,unob:holyUnob,noBonus:false,noLife:holyNoLife,noRecycle:false,noFuse:false,spirit:false,desc:"An item awarded for opening all 10 Treasure Chests on Floor " + Math.min(_root.endlessFloor,250) + " of Endless Dungeon."});
               }
               if(itemToGet == 4)
               {
                  _root.house.arena.stuffHolder.attachMovie("invenLoot","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,type:"Armor",frame:175,name:floorText + "Dragon Slayer Pants",reqRank:363,subtype:"Pants",attack:40 + Math.min(_root.endlessFloor,200) * 4,defense:400 + Math.min(_root.endlessFloor,200) * 40,speed:0,crit:20 + Math.min(_root.endlessFloor,200) * 2,dexterity:10 + Math.min(_root.endlessFloor,200) * 1,health:10 + Math.min(_root.endlessFloor,200) * 1,bonus:"Spawn Rate",ability:"Attack",moreBonus:"Attack Power",maxLevel:44,expTNL:700000000,sell:1000000 * _root.endlessFloor,expiry:(50 + Math.min(_root.endlessFloor,200)) * 86400000,enhance:4,bonusPow:_root.endlessFloor * 70,unob:holyUnob,noBonus:false,noLife:holyNoLife,noRecycle:false,noFuse:false,spirit:false,desc:"An item awarded for opening all 10 Treasure Chests on Floor " + Math.min(_root.endlessFloor,250) + " of Endless Dungeon."});
               }
               if(itemToGet == 5)
               {
                  _root.house.arena.stuffHolder.attachMovie("invenLoot","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,type:"Armor",frame:175,name:floorText + "Dragon Slayer Shoes",reqRank:363,subtype:"Shoes",attack:40 + Math.min(_root.endlessFloor,200) * 4,defense:400 + Math.min(_root.endlessFloor,200) * 40,speed:0,crit:20 + Math.min(_root.endlessFloor,200) * 2,dexterity:10 + Math.min(_root.endlessFloor,200) * 1,health:10 + Math.min(_root.endlessFloor,200) * 1,bonus:"Spawn Rate",ability:"Attack",moreBonus:"Attack Power",maxLevel:44,expTNL:700000000,sell:1000000 * _root.endlessFloor,expiry:(50 + Math.min(_root.endlessFloor,200)) * 86400000,enhance:4,bonusPow:_root.endlessFloor * 70,unob:holyUnob,noBonus:false,noLife:holyNoLife,noRecycle:false,noFuse:false,spirit:false,desc:"An item awarded for opening all 10 Treasure Chests on Floor " + Math.min(_root.endlessFloor,250) + " of Endless Dungeon."});
               }
               if(itemToGet == 6)
               {
                  _root.house.arena.stuffHolder.attachMovie("invenLoot","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,type:"Armor",frame:176,name:floorText + "Demon Slayer Hat",reqRank:413,subtype:"Hat",attack:60 + Math.min(_root.endlessFloor,200) * 6,defense:600 + Math.min(_root.endlessFloor,200) * 60,speed:0,crit:30 + Math.min(_root.endlessFloor,200) * 3,dexterity:20 + Math.min(_root.endlessFloor,200) * 2,health:20 + Math.min(_root.endlessFloor,200) * 2,bonus:"Spawn Rate",ability:"Attack",moreBonus:"Attack Power",maxLevel:66,expTNL:2700000000,sell:10000000 * _root.endlessFloor,expiry:(50 + Math.min(_root.endlessFloor,200)) * 86400000,enhance:6,bonusPow:_root.endlessFloor * 110,unob:holyUnob,noBonus:false,noLife:holyNoLife,noRecycle:false,noFuse:false,spirit:false,desc:"An item awarded for opening all 10 Treasure Chests on Floor " + Math.min(_root.endlessFloor,250) + " of Endless Dungeon."});
               }
               if(itemToGet == 7)
               {
                  _root.house.arena.stuffHolder.attachMovie("invenLoot","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,type:"Armor",frame:176,name:floorText + "Demon Slayer Shirt",reqRank:413,subtype:"Shirt",attack:60 + Math.min(_root.endlessFloor,200) * 6,defense:600 + Math.min(_root.endlessFloor,200) * 60,speed:0,crit:30 + Math.min(_root.endlessFloor,200) * 3,dexterity:20 + Math.min(_root.endlessFloor,200) * 2,health:20 + Math.min(_root.endlessFloor,200) * 2,bonus:"Spawn Rate",ability:"Attack",moreBonus:"Attack Power",maxLevel:66,expTNL:2700000000,sell:10000000 * _root.endlessFloor,expiry:(50 + Math.min(_root.endlessFloor,200)) * 86400000,enhance:6,bonusPow:_root.endlessFloor * 110,unob:holyUnob,noBonus:false,noLife:holyNoLife,noRecycle:false,noFuse:false,spirit:false,desc:"An item awarded for opening all 10 Treasure Chests on Floor " + Math.min(_root.endlessFloor,250) + " of Endless Dungeon."});
               }
               if(itemToGet == 8)
               {
                  _root.house.arena.stuffHolder.attachMovie("invenLoot","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,type:"Armor",frame:176,name:floorText + "Demon Slayer Gloves",reqRank:413,subtype:"Gloves",attack:60 + Math.min(_root.endlessFloor,200) * 6,defense:600 + Math.min(_root.endlessFloor,200) * 60,speed:0,crit:30 + Math.min(_root.endlessFloor,200) * 3,dexterity:20 + Math.min(_root.endlessFloor,200) * 2,health:20 + Math.min(_root.endlessFloor,200) * 2,bonus:"Spawn Rate",ability:"Attack",moreBonus:"Attack Power",maxLevel:66,expTNL:2700000000,sell:10000000 * _root.endlessFloor,expiry:(50 + Math.min(_root.endlessFloor,200)) * 86400000,enhance:6,bonusPow:_root.endlessFloor * 110,unob:holyUnob,noBonus:false,noLife:holyNoLife,noRecycle:false,noFuse:false,spirit:false,desc:"An item awarded for opening all 10 Treasure Chests on Floor " + Math.min(_root.endlessFloor,250) + " of Endless Dungeon."});
               }
               if(itemToGet == 9)
               {
                  _root.house.arena.stuffHolder.attachMovie("invenLoot","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,type:"Armor",frame:176,name:floorText + "Demon Slayer Pants",reqRank:413,subtype:"Pants",attack:60 + Math.min(_root.endlessFloor,200) * 6,defense:600 + Math.min(_root.endlessFloor,200) * 60,speed:0,crit:30 + Math.min(_root.endlessFloor,200) * 3,dexterity:20 + Math.min(_root.endlessFloor,200) * 2,health:20 + Math.min(_root.endlessFloor,200) * 2,bonus:"Spawn Rate",ability:"Attack",moreBonus:"Attack Power",maxLevel:66,expTNL:2700000000,sell:10000000 * _root.endlessFloor,expiry:(50 + Math.min(_root.endlessFloor,200)) * 86400000,enhance:6,bonusPow:_root.endlessFloor * 110,unob:holyUnob,noBonus:false,noLife:holyNoLife,noRecycle:false,noFuse:false,spirit:false,desc:"An item awarded for opening all 10 Treasure Chests on Floor " + Math.min(_root.endlessFloor,250) + " of Endless Dungeon."});
               }
               if(itemToGet == 10)
               {
                  _root.house.arena.stuffHolder.attachMovie("invenLoot","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,type:"Armor",frame:176,name:floorText + "Demon Slayer Shoes",reqRank:413,subtype:"Shoes",attack:60 + Math.min(_root.endlessFloor,200) * 6,defense:600 + Math.min(_root.endlessFloor,200) * 60,speed:0,crit:30 + Math.min(_root.endlessFloor,200) * 3,dexterity:20 + Math.min(_root.endlessFloor,200) * 2,health:20 + Math.min(_root.endlessFloor,200) * 2,bonus:"Spawn Rate",ability:"Attack",moreBonus:"Attack Power",maxLevel:66,expTNL:2700000000,sell:10000000 * _root.endlessFloor,expiry:(50 + Math.min(_root.endlessFloor,200)) * 86400000,enhance:6,bonusPow:_root.endlessFloor * 110,unob:holyUnob,noBonus:false,noLife:holyNoLife,noRecycle:false,noFuse:false,spirit:false,desc:"An item awarded for opening all 10 Treasure Chests on Floor " + Math.min(_root.endlessFloor,250) + " of Endless Dungeon."});
               }
               if(itemToGet <= 5)
               {
                  cfocGain = Math.floor(100 + _root.endlessFloor * 2);
                  _root.incDt2();
                  _root.house.arena.stuffHolder.attachMovie("newLoot15","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,lootValue:cfocGain});
               }
            }
         }
         if(_root.endlessFloor == 250 && _root.save.arenaHardcore == true && _root.dungeonChestOpen < 10)
         {
            itemToGet = random(5) + 6;
            holyNoLife = false;
            holyUnob = 20;
            _root.incDt2();
            floorText = "[" + Math.min(_root.endlessFloor,250) + "F] ";
            if(itemToGet == 6)
            {
               _root.house.arena.stuffHolder.attachMovie("invenLoot","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,type:"Armor",frame:176,name:floorText + "Demon Slayer Hat",reqRank:413,subtype:"Hat",attack:60 + Math.min(_root.endlessFloor,200) * 6,defense:600 + Math.min(_root.endlessFloor,200) * 60,speed:0,crit:30 + Math.min(_root.endlessFloor,200) * 3,dexterity:20 + Math.min(_root.endlessFloor,200) * 2,health:20 + Math.min(_root.endlessFloor,200) * 2,bonus:"Spawn Rate",ability:"Attack",moreBonus:"Attack Power",maxLevel:66,expTNL:2700000000,sell:10000000 * _root.endlessFloor,expiry:(50 + Math.min(_root.endlessFloor,200)) * 86400000,enhance:6,bonusPow:_root.endlessFloor * 110,unob:holyUnob,noBonus:false,noLife:holyNoLife,noRecycle:false,noFuse:false,spirit:false,desc:"An item awarded for opening all 10 Treasure Chests on Floor " + Math.min(_root.endlessFloor,250) + " of Endless Dungeon."});
            }
            if(itemToGet == 7)
            {
               _root.house.arena.stuffHolder.attachMovie("invenLoot","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,type:"Armor",frame:176,name:floorText + "Demon Slayer Shirt",reqRank:413,subtype:"Shirt",attack:60 + Math.min(_root.endlessFloor,200) * 6,defense:600 + Math.min(_root.endlessFloor,200) * 60,speed:0,crit:30 + Math.min(_root.endlessFloor,200) * 3,dexterity:20 + Math.min(_root.endlessFloor,200) * 2,health:20 + Math.min(_root.endlessFloor,200) * 2,bonus:"Spawn Rate",ability:"Attack",moreBonus:"Attack Power",maxLevel:66,expTNL:2700000000,sell:10000000 * _root.endlessFloor,expiry:(50 + Math.min(_root.endlessFloor,200)) * 86400000,enhance:6,bonusPow:_root.endlessFloor * 110,unob:holyUnob,noBonus:false,noLife:holyNoLife,noRecycle:false,noFuse:false,spirit:false,desc:"An item awarded for opening all 10 Treasure Chests on Floor " + Math.min(_root.endlessFloor,250) + " of Endless Dungeon."});
            }
            if(itemToGet == 8)
            {
               _root.house.arena.stuffHolder.attachMovie("invenLoot","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,type:"Armor",frame:176,name:floorText + "Demon Slayer Gloves",reqRank:413,subtype:"Gloves",attack:60 + Math.min(_root.endlessFloor,200) * 6,defense:600 + Math.min(_root.endlessFloor,200) * 60,speed:0,crit:30 + Math.min(_root.endlessFloor,200) * 3,dexterity:20 + Math.min(_root.endlessFloor,200) * 2,health:20 + Math.min(_root.endlessFloor,200) * 2,bonus:"Spawn Rate",ability:"Attack",moreBonus:"Attack Power",maxLevel:66,expTNL:2700000000,sell:10000000 * _root.endlessFloor,expiry:(50 + Math.min(_root.endlessFloor,200)) * 86400000,enhance:6,bonusPow:_root.endlessFloor * 110,unob:holyUnob,noBonus:false,noLife:holyNoLife,noRecycle:false,noFuse:false,spirit:false,desc:"An item awarded for opening all 10 Treasure Chests on Floor " + Math.min(_root.endlessFloor,250) + " of Endless Dungeon."});
            }
            if(itemToGet == 9)
            {
               _root.house.arena.stuffHolder.attachMovie("invenLoot","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,type:"Armor",frame:176,name:floorText + "Demon Slayer Pants",reqRank:413,subtype:"Pants",attack:60 + Math.min(_root.endlessFloor,200) * 6,defense:600 + Math.min(_root.endlessFloor,200) * 60,speed:0,crit:30 + Math.min(_root.endlessFloor,200) * 3,dexterity:20 + Math.min(_root.endlessFloor,200) * 2,health:20 + Math.min(_root.endlessFloor,200) * 2,bonus:"Spawn Rate",ability:"Attack",moreBonus:"Attack Power",maxLevel:66,expTNL:2700000000,sell:10000000 * _root.endlessFloor,expiry:(50 + Math.min(_root.endlessFloor,200)) * 86400000,enhance:6,bonusPow:_root.endlessFloor * 110,unob:holyUnob,noBonus:false,noLife:holyNoLife,noRecycle:false,noFuse:false,spirit:false,desc:"An item awarded for opening all 10 Treasure Chests on Floor " + Math.min(_root.endlessFloor,250) + " of Endless Dungeon."});
            }
            if(itemToGet == 10)
            {
               _root.house.arena.stuffHolder.attachMovie("invenLoot","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,type:"Armor",frame:176,name:floorText + "Demon Slayer Shoes",reqRank:413,subtype:"Shoes",attack:60 + Math.min(_root.endlessFloor,200) * 6,defense:600 + Math.min(_root.endlessFloor,200) * 60,speed:0,crit:30 + Math.min(_root.endlessFloor,200) * 3,dexterity:20 + Math.min(_root.endlessFloor,200) * 2,health:20 + Math.min(_root.endlessFloor,200) * 2,bonus:"Spawn Rate",ability:"Attack",moreBonus:"Attack Power",maxLevel:66,expTNL:2700000000,sell:10000000 * _root.endlessFloor,expiry:(50 + Math.min(_root.endlessFloor,200)) * 86400000,enhance:6,bonusPow:_root.endlessFloor * 110,unob:holyUnob,noBonus:false,noLife:holyNoLife,noRecycle:false,noFuse:false,spirit:false,desc:"An item awarded for opening all 10 Treasure Chests on Floor " + Math.min(_root.endlessFloor,250) + " of Endless Dungeon."});
            }
         }
      }
   }
}


