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
         _root.fightStat = "Treasure Chests: " + _root.dungeonChestOpen + " / " + _root.dungeonCountChest;
         if(_root.dungeonAntiCurse == true)
         {
            if(_root.dungeonChestOpen < 10)
            {
               valueX = 25000 * _root.dungeonChestOpen;
               _root.incDt2();
               _root.house.arena.stuffHolder.attachMovie("newLoot7","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,lootValue:valueX});
            }
            else if(_root.dungeonChestOpen == 10)
            {
               itemToGet = random(5) + 1;
               _root.incDt2();
               if(itemToGet == 1)
               {
                  _root.house.arena.stuffHolder.attachMovie("invenLoot","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,type:"Armor",frame:128,name:"Holy Glory Hat",reqRank:258,subtype:"Hat",attack:30,defense:125,speed:0,crit:10,dexterity:0,health:30,bonus:"Light Element",ability:"Blind Duration",maxLevel:15,expTNL:11000000,sell:5000000,expiry:259200000,enhance:0,bonusPow:0,noBonus:false,noLife:true,noRecycle:false,spirit:false,desc:"Secret Dungeon Reward"});
               }
               else if(itemToGet == 2)
               {
                  _root.house.arena.stuffHolder.attachMovie("invenLoot","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,type:"Armor",frame:128,name:"Holy Glory Shirt",reqRank:258,subtype:"Shirt",attack:30,defense:147,speed:0,crit:10,dexterity:30,health:0,bonus:"Light Element",ability:"Blind Duration",maxLevel:15,expTNL:11000000,sell:5000000,expiry:259200000,enhance:0,bonusPow:0,noBonus:false,noLife:true,noRecycle:false,spirit:false,desc:"Secret Dungeon Reward"});
               }
               else if(itemToGet == 3)
               {
                  _root.house.arena.stuffHolder.attachMovie("invenLoot","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,type:"Armor",frame:128,name:"Holy Glory Gloves",reqRank:258,subtype:"Gloves",attack:40,defense:81,speed:7,crit:30,dexterity:0,health:0,bonus:"Light Element",ability:"Blind Duration",maxLevel:15,expTNL:11000000,sell:5000000,expiry:259200000,enhance:0,bonusPow:0,noBonus:false,noLife:true,noRecycle:false,spirit:false,desc:"Secret Dungeon Reward"});
               }
               else if(itemToGet == 4)
               {
                  _root.house.arena.stuffHolder.attachMovie("invenLoot","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,type:"Armor",frame:128,name:"Holy Glory Pants",reqRank:258,subtype:"Pants",attack:30,defense:147,speed:0,crit:10,dexterity:30,health:0,bonus:"Light Element",ability:"Blind Duration",maxLevel:15,expTNL:11000000,sell:5000000,expiry:259200000,enhance:0,bonusPow:0,noBonus:false,noLife:true,noRecycle:false,spirit:false,desc:"Secret Dungeon Reward"});
               }
               else if(itemToGet == 5)
               {
                  _root.house.arena.stuffHolder.attachMovie("invenLoot","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,type:"Armor",frame:128,name:"Holy Glory Shoes",reqRank:258,subtype:"Shoes",attack:40,defense:81,speed:3,crit:30,dexterity:0,health:0,bonus:"Light Element",ability:"Blind Duration",maxLevel:15,expTNL:11000000,sell:5000000,expiry:259200000,enhance:0,bonusPow:0,noBonus:false,noLife:true,noRecycle:false,spirit:false,desc:"Secret Dungeon Reward"});
               }
            }
         }
         else
         {
            if(Math.random() < 0.01 * _root.dungeonChestOpen)
            {
               _root.incDt2();
               _root.house.arena.stuffHolder.attachMovie("newLoot9","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,lootValue:1});
            }
            if(Math.random() < 0.025 * _root.dungeonChestOpen)
            {
               _root.incDt2();
               _root.house.arena.stuffHolder.attachMovie("newLoot10","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,lootValue:10 + random(11)});
            }
            if(_root.dungeonChestOpen == 1)
            {
               valueX = 100000;
               _root.incDt2();
               _root.house.arena.stuffHolder.attachMovie("newLoot7","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,lootValue:valueX});
            }
            else if(_root.dungeonChestOpen == 2)
            {
               valueX = 300000;
               _root.incDt2();
               _root.house.arena.stuffHolder.attachMovie("newLoot7","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,lootValue:valueX});
            }
            else if(_root.dungeonChestOpen == 3)
            {
               valueX = 300000;
               _root.incDt2();
               _root.house.arena.stuffHolder.attachMovie("newLoot6","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,lootValue:valueX});
            }
            else if(_root.dungeonChestOpen == 4)
            {
               valueX = 700000;
               _root.incDt2();
               _root.house.arena.stuffHolder.attachMovie("newLoot6","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,lootValue:valueX});
            }
            else if(_root.dungeonChestOpen == 5)
            {
               _root.incDt2();
               _root.house.arena.stuffHolder.attachMovie("newLoot11","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,lootValue:1});
            }
            else if(_root.dungeonChestOpen == 6)
            {
               _root.incDt2();
               _root.house.arena.stuffHolder.attachMovie("newLoot11","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,lootValue:1});
               if(_root.dungeonDiff == 2)
               {
                  _root.incDt2();
                  _root.house.arena.stuffHolder.attachMovie("invenLoot","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,type:"Enhancer",frame:198,name:"Armor Mystery Rock Lv. 8",subtype:"Armor Mystery Enhancer",power:10,curse:0,success:1000,bonus:"",ability:"",moreBonus:"",sell:300000,enhance:0,bonusPow:0,expiry:Infinity,desc:"Secret Dungeon Reward"});
               }
            }
            else if(_root.dungeonChestOpen == 7)
            {
               _root.incDt2();
               _root.house.arena.stuffHolder.attachMovie("newLoot11","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,lootValue:1});
               if(_root.dungeonDiff == 2)
               {
                  _root.incDt2();
                  _root.house.arena.stuffHolder.attachMovie("invenLoot","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,type:"Enhancer",frame:98,name:"Weapon Mystery Rock Lv. 8",subtype:"Weapon Mystery Enhancer",power:10,curse:0,success:1000,bonus:"",ability:"",moreBonus:"",sell:300000,enhance:0,bonusPow:0,expiry:Infinity,desc:"Secret Dungeon Reward"});
               }
            }
            else if(_root.dungeonChestOpen == 8)
            {
               _root.incDt2();
               _root.house.arena.stuffHolder.attachMovie("newLoot11","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,lootValue:1});
               if(_root.dungeonDiff == 2)
               {
                  _root.incDt2();
                  _root.house.arena.stuffHolder.attachMovie("invenLoot","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,type:"Enhancer",frame:199,name:"Armor Mystery Rock Lv. 9",subtype:"Armor Mystery Enhancer",power:11,curse:0,success:1000,bonus:"",ability:"",moreBonus:"",sell:1000000,enhance:0,bonusPow:0,expiry:Infinity,desc:"Secret Dungeon Reward"});
               }
            }
            else if(_root.dungeonChestOpen == 9)
            {
               _root.incDt2();
               _root.house.arena.stuffHolder.attachMovie("newLoot11","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,lootValue:2});
               if(_root.dungeonDiff == 2)
               {
                  _root.incDt2();
                  _root.house.arena.stuffHolder.attachMovie("invenLoot","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,type:"Enhancer",frame:99,name:"Weapon Mystery Rock Lv. 9",subtype:"Weapon Mystery Enhancer",power:11,curse:0,success:1000,bonus:"",ability:"",moreBonus:"",sell:1000000,enhance:0,bonusPow:0,expiry:Infinity,desc:"Secret Dungeon Reward"});
               }
            }
            else if(_root.dungeonChestOpen == 10)
            {
               _root.incDt2();
               _root.house.arena.stuffHolder.attachMovie("newLoot11","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,lootValue:1});
               _root.incDt2();
               _root.house.arena.stuffHolder.attachMovie("newLoot11","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,lootValue:2});
               itemToGet = random(5) + 1;
               if(Math.random() < 0.05)
               {
                  itemToGet = random(5) + 6;
               }
               holyUnob = 1;
               holyNoLife = true;
               if(_root.save.arenaHardcore == true)
               {
                  holyNoLife = false;
                  holyUnob += 2;
               }
               if(_root.worstMoon == true)
               {
                  itemToGet = random(5) + 6;
                  holyUnob += 3;
               }
               if(_root.apocalypse == true)
               {
                  holyUnob += 4;
               }
               if(_root.dungeonDiff == 3)
               {
                  holyUnob += 5;
               }
               _root.incDt2();
               if(itemToGet == 1)
               {
                  _root.house.arena.stuffHolder.attachMovie("invenLoot","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,type:"Armor",frame:128,name:"Holy Glory Hat",reqRank:258,subtype:"Hat",attack:30,defense:125,speed:0,crit:10,dexterity:0,health:30,bonus:"Light Element",ability:"Blind Duration",moreBonus:"",maxLevel:15,expTNL:11000000,sell:5000000,expiry:604800000,enhance:0,bonusPow:0,unob:holyUnob,noBonus:false,noLife:holyNoLife,noRecycle:false,noFuse:false,spirit:false,desc:"Secret Dungeon Reward"});
               }
               else if(itemToGet == 2)
               {
                  _root.house.arena.stuffHolder.attachMovie("invenLoot","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,type:"Armor",frame:128,name:"Holy Glory Shirt",reqRank:258,subtype:"Shirt",attack:30,defense:147,speed:0,crit:10,dexterity:30,health:0,bonus:"Light Element",ability:"Blind Duration",moreBonus:"",maxLevel:15,expTNL:11000000,sell:5000000,expiry:604800000,enhance:0,bonusPow:0,unob:holyUnob,noBonus:false,noLife:holyNoLife,noRecycle:false,noFuse:false,spirit:false,desc:"Secret Dungeon Reward"});
               }
               else if(itemToGet == 3)
               {
                  _root.house.arena.stuffHolder.attachMovie("invenLoot","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,type:"Armor",frame:128,name:"Holy Glory Gloves",reqRank:258,subtype:"Gloves",attack:40,defense:81,speed:7,crit:30,dexterity:0,health:0,bonus:"Light Element",ability:"Blind Duration",moreBonus:"",maxLevel:15,expTNL:11000000,sell:5000000,expiry:604800000,enhance:0,bonusPow:0,unob:holyUnob,noBonus:false,noLife:holyNoLife,noRecycle:false,noFuse:false,spirit:false,desc:"Secret Dungeon Reward"});
               }
               else if(itemToGet == 4)
               {
                  _root.house.arena.stuffHolder.attachMovie("invenLoot","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,type:"Armor",frame:128,name:"Holy Glory Pants",reqRank:258,subtype:"Pants",attack:30,defense:147,speed:0,crit:10,dexterity:30,health:0,bonus:"Light Element",ability:"Blind Duration",moreBonus:"",maxLevel:15,expTNL:11000000,sell:5000000,expiry:604800000,enhance:0,bonusPow:0,unob:holyUnob,noBonus:false,noLife:holyNoLife,noRecycle:false,noFuse:false,spirit:false,desc:"Secret Dungeon Reward"});
               }
               else if(itemToGet == 5)
               {
                  _root.house.arena.stuffHolder.attachMovie("invenLoot","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,type:"Armor",frame:128,name:"Holy Glory Shoes",reqRank:258,subtype:"Shoes",attack:40,defense:81,speed:3,crit:30,dexterity:0,health:0,bonus:"Light Element",ability:"Blind Duration",moreBonus:"",maxLevel:15,expTNL:11000000,sell:5000000,expiry:604800000,enhance:0,bonusPow:0,unob:holyUnob,noBonus:false,noLife:holyNoLife,noRecycle:false,noFuse:false,spirit:false,desc:"Secret Dungeon Reward"});
               }
               else if(itemToGet == 6)
               {
                  _root.house.arena.stuffHolder.attachMovie("invenLoot","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,type:"Armor",frame:129,name:"Dark Angel Hat",reqRank:258,subtype:"Hat",attack:40,defense:285,speed:1,crit:10,dexterity:0,health:30,bonus:"Dark Element",ability:"Weaken Duration",moreBonus:"",maxLevel:25,expTNL:44000000,sell:10000000,expiry:604800000,enhance:0,bonusPow:50,unob:holyUnob,noBonus:false,noLife:holyNoLife,noRecycle:false,noFuse:false,spirit:false,desc:"Secret Dungeon Reward"});
               }
               else if(itemToGet == 7)
               {
                  _root.house.arena.stuffHolder.attachMovie("invenLoot","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,type:"Armor",frame:129,name:"Dark Angel Shirt",reqRank:258,subtype:"Shirt",attack:40,defense:309,speed:1,crit:10,dexterity:30,health:0,bonus:"Dark Element",ability:"Weaken Duration",moreBonus:"",maxLevel:25,expTNL:44000000,sell:10000000,expiry:604800000,enhance:0,bonusPow:50,unob:holyUnob,noBonus:false,noLife:holyNoLife,noRecycle:false,noFuse:false,spirit:false,desc:"Secret Dungeon Reward"});
               }
               else if(itemToGet == 8)
               {
                  _root.house.arena.stuffHolder.attachMovie("invenLoot","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,type:"Armor",frame:129,name:"Dark Angel Gloves",reqRank:258,subtype:"Gloves",attack:50,defense:237,speed:7,crit:30,dexterity:0,health:0,bonus:"Dark Element",ability:"Weaken Duration",moreBonus:"",maxLevel:25,expTNL:44000000,sell:10000000,expiry:604800000,enhance:0,bonusPow:50,unob:holyUnob,noBonus:false,noLife:holyNoLife,noRecycle:false,noFuse:false,spirit:false,desc:"Secret Dungeon Reward"});
               }
               else if(itemToGet == 9)
               {
                  _root.house.arena.stuffHolder.attachMovie("invenLoot","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,type:"Armor",frame:129,name:"Dark Angel Pants",reqRank:258,subtype:"Pants",attack:40,defense:309,speed:1,crit:10,dexterity:30,health:0,bonus:"Dark Element",ability:"Weaken Duration",moreBonus:"",maxLevel:25,expTNL:44000000,sell:10000000,expiry:604800000,enhance:0,bonusPow:50,unob:holyUnob,noBonus:false,noLife:holyNoLife,noRecycle:false,noFuse:false,spirit:false,desc:"Secret Dungeon Reward"});
               }
               else if(itemToGet == 10)
               {
                  _root.house.arena.stuffHolder.attachMovie("invenLoot","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,type:"Armor",frame:129,name:"Dark Angel Shoes",reqRank:258,subtype:"Shoes",attack:50,defense:237,speed:3,crit:30,dexterity:0,health:0,bonus:"Dark Element",ability:"Weaken Duration",moreBonus:"",maxLevel:25,expTNL:44000000,sell:10000000,expiry:604800000,enhance:0,bonusPow:50,unob:holyUnob,noBonus:false,noLife:holyNoLife,noRecycle:false,noFuse:false,spirit:false,desc:"Secret Dungeon Reward"});
               }
            }
            else if(_root.dungeonChestOpen >= 11 && _root.dungeonChestOpen <= 14)
            {
               _root.incDt2();
               _root.house.arena.stuffHolder.attachMovie("newLoot9","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,lootValue:1});
               _root.incDt2();
               _root.house.arena.stuffHolder.attachMovie("newLoot15","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,lootValue:200});
            }
            else if(_root.dungeonChestOpen == 15)
            {
               _root.incDt2();
               _root.house.arena.stuffHolder.attachMovie("newLoot9","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,lootValue:2});
               _root.incDt2();
               _root.house.arena.stuffHolder.attachMovie("newLoot15","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,lootValue:200});
               gigaRoll = random(10) + 1;
               if(_root.dungeonTimeLeft < 3300)
               {
                  gigaRoll = random(6) + 5;
               }
               if(gigaRoll == 1)
               {
                  gigaAttack = 225;
                  gigaSpeed = 0;
                  gigaCrit = 25;
                  gigaDex = 25;
                  gigaHealth = 25;
                  var _loc2_ = 1;
                  while(_loc2_ <= 4)
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
                     _loc2_ = _loc2_ + 1;
                  }
                  _root.house.arena.stuffHolder.attachMovie("invenLoot","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,type:"Accessory",frame:22,name:"GIGA PENDANT",reqRank:250,subtype:"Pendant",attack:gigaAttack,defense:0,speed:gigaSpeed,crit:gigaCrit,dexterity:gigaDex,health:gigaHealth,bonus:"Random",ability:"Random",moreBonus:"Random",maxLevel:75,expTNL:750000000,sell:75000000,expiry:0,enhance:0,bonusPow:0,unob:50,noBonus:false,noLife:true,noRecycle:false,noFuse:false,spirit:false,desc:""});
               }
               else if(gigaRoll == 2)
               {
                  _root.incDt2();
                  _root.house.arena.stuffHolder.attachMovie("invenLoot","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,type:"Enhancer",frame:333,name:"GIGA LIFE ROCK",subtype:"Accessory Lifespan Extender",power:2,curse:0,success:1000,bonus:"",ability:"",moreBonus:"",sell:7500000,enhance:0,bonusPow:0,expiry:Infinity,desc:"Can only be used on GIGA PENDANT and GIGA EARRINGS."});
               }
               else if(gigaRoll == 3 || gigaRoll == 4)
               {
                  _root.incDt2();
                  _root.house.arena.stuffHolder.attachMovie("invenLoot","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,type:"Enhancer",frame:332,name:"GIGA ENHANCER",subtype:"Accessory Attack Enhancer",power:125,curse:0,success:1000,bonus:"",ability:"",moreBonus:"",sell:7500000,enhance:0,bonusPow:0,expiry:Infinity,desc:"Can only be used on GIGA PENDANT and GIGA EARRINGS."});
               }
               else if(gigaRoll == 5 || gigaRoll == 6)
               {
                  _root.incDt2();
                  _root.house.arena.stuffHolder.attachMovie("invenLoot","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,type:"Enhancer",frame:100,name:"Weapon Mystery Rock Lv. 10",subtype:"Weapon Mystery Enhancer",power:12,curse:0,success:1000,bonus:"",ability:"",moreBonus:"",sell:3500000,enhance:0,bonusPow:0,expiry:Infinity,desc:"Secret Dungeon Reward"});
               }
               else
               {
                  _root.incDt2();
                  _root.house.arena.stuffHolder.attachMovie("invenLoot","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,type:"Enhancer",frame:200,name:"Armor Mystery Rock Lv. 10",subtype:"Armor Mystery Enhancer",power:12,curse:0,success:1000,bonus:"",ability:"",moreBonus:"",sell:3500000,enhance:0,bonusPow:0,expiry:Infinity,desc:"Secret Dungeon Reward"});
               }
            }
            else if(_root.dungeonChestOpen >= 16 && _root.dungeonChestOpen <= 19)
            {
               _root.incDt2();
               _root.house.arena.stuffHolder.attachMovie("newLoot9","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,lootValue:1});
               _root.incDt2();
               _root.house.arena.stuffHolder.attachMovie("newLoot15","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,lootValue:200});
            }
            else if(_root.dungeonChestOpen == 20)
            {
               _root.incDt2();
               _root.house.arena.stuffHolder.attachMovie("newLoot9","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,lootValue:2});
               _root.incDt2();
               _root.house.arena.stuffHolder.attachMovie("newLoot15","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,lootValue:200});
               gigaRoll = random(10) + 1;
               if(_root.dungeonTimeLeft >= 3300)
               {
                  gigaRoll = random(4) + 1;
               }
               if(_root.dungeonTimeLeft < 3000)
               {
                  gigaRoll = random(6) + 5;
               }
               if(gigaRoll == 1)
               {
                  gigaAttack = 225;
                  gigaSpeed = 0;
                  gigaCrit = 25;
                  gigaDex = 25;
                  gigaHealth = 25;
                  _loc2_ = 1;
                  while(_loc2_ <= 4)
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
                     _loc2_ = _loc2_ + 1;
                  }
                  _root.house.arena.stuffHolder.attachMovie("invenLoot","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,type:"Accessory",frame:22,name:"GIGA PENDANT",reqRank:250,subtype:"Pendant",attack:gigaAttack,defense:0,speed:gigaSpeed,crit:gigaCrit,dexterity:gigaDex,health:gigaHealth,bonus:"Random",ability:"Random",moreBonus:"Random",maxLevel:75,expTNL:750000000,sell:75000000,expiry:0,enhance:0,bonusPow:0,unob:50,noBonus:false,noLife:true,noRecycle:false,noFuse:false,spirit:false,desc:""});
               }
               else if(gigaRoll == 2)
               {
                  _root.incDt2();
                  _root.house.arena.stuffHolder.attachMovie("invenLoot","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,type:"Enhancer",frame:333,name:"GIGA LIFE ROCK",subtype:"Accessory Lifespan Extender",power:2,curse:0,success:1000,bonus:"",ability:"",moreBonus:"",sell:7500000,enhance:0,bonusPow:0,expiry:Infinity,desc:"Can only be used on GIGA PENDANT and GIGA EARRINGS."});
               }
               else if(gigaRoll == 3 || gigaRoll == 4)
               {
                  _root.incDt2();
                  _root.house.arena.stuffHolder.attachMovie("invenLoot","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,type:"Enhancer",frame:332,name:"GIGA ENHANCER",subtype:"Accessory Attack Enhancer",power:125,curse:0,success:1000,bonus:"",ability:"",moreBonus:"",sell:7500000,enhance:0,bonusPow:0,expiry:Infinity,desc:"Can only be used on GIGA PENDANT and GIGA EARRINGS."});
               }
               else if(gigaRoll == 5 || gigaRoll == 6)
               {
                  _root.incDt2();
                  _root.house.arena.stuffHolder.attachMovie("invenLoot","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,type:"Enhancer",frame:100,name:"Weapon Mystery Rock Lv. 10",subtype:"Weapon Mystery Enhancer",power:12,curse:0,success:1000,bonus:"",ability:"",moreBonus:"",sell:3500000,enhance:0,bonusPow:0,expiry:Infinity,desc:"Secret Dungeon Reward"});
               }
               else
               {
                  _root.incDt2();
                  _root.house.arena.stuffHolder.attachMovie("invenLoot","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:340,y:150,type:"Enhancer",frame:200,name:"Armor Mystery Rock Lv. 10",subtype:"Armor Mystery Enhancer",power:12,curse:0,success:1000,bonus:"",ability:"",moreBonus:"",sell:3500000,enhance:0,bonusPow:0,expiry:Infinity,desc:"Secret Dungeon Reward"});
               }
            }
         }
      }
   }
}


