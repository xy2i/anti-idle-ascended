//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "<b>Strange Machine</b>\nThis looks like a Coin-powered machine of some sort. It\'s rumored that if you throw 1,000,000,000 Coins into it, something will happen. This, however, is unconfirmed.";
   roll = 1;
}


on(release){
   if(_root.save.coin >= 1000000000 && xAlpha >= 100)
   {
      _root.save.coin -= 1000000000;
      xAlpha -= 80;
      _root.incDt2();
      _parent._parent.stuffHolder.attachMovie("newLoot11","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:140,y:150,lootValue:1});
      _root.incDt2();
      _parent._parent.stuffHolder.attachMovie("newLoot11","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:150,y:150,lootValue:1});
      _root.incDt2();
      _parent._parent.stuffHolder.attachMovie("newLoot11","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:170,y:150,lootValue:1});
      _root.incDt2();
      _parent._parent.stuffHolder.attachMovie("newLoot11","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:180,y:150,lootValue:1});
      _root.incDt2();
      if(Math.random() < 0.2)
      {
         if(Math.random() < 0.2)
         {
            _parent._parent.stuffHolder.attachMovie("newLoot11","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:160,y:150,lootValue:2});
         }
         else
         {
            _parent._parent.stuffHolder.attachMovie("newLoot11","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:160,y:150,lootValue:1});
         }
      }
      else if(Math.random() < 0.05 && _root.save.arenaLevel >= 120)
      {
         skillToGet = 61 + random(2);
         if(_root.save.arenaLevel >= 180)
         {
            skillToGet = 63 + random(4);
         }
         _parent._parent.stuffHolder.attachMovie("newLoot19","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:160,y:150,lootValue:skillToGet});
      }
      else if(Math.random() < 0.5 && _root.save.arenaLevel >= 70)
      {
         if(Math.random() < 0.3)
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
         else if(Math.random() < 0.6 || _root.save.arenaLevel < 120)
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
         _parent._parent.stuffHolder.attachMovie("newLoot19","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:160,y:150,lootValue:skillToGet});
      }
      else if(Math.random() < 0.95)
      {
         if(Math.random() < 0.8)
         {
            enhancerToGet = random(6) + 7;
         }
         else
         {
            enhancerToGet = random(6) + 1;
         }
         if(enhancerToGet == 1)
         {
            _parent._parent.stuffHolder.attachMovie("invenLoot","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:160,y:150,type:"Enhancer",frame:307,name:"Alien Core",subtype:"Weapon Attack Enhancer",power:100,curse:60,success:100,bonus:"",ability:"",moreBonus:"",sell:0,enhance:9,bonusPow:30,expiry:Infinity,desc:"This looks like an enhancer of some sort. Though, no matter how hard you try, you can\'t get this crap to work."});
         }
         else if(enhancerToGet == 2)
         {
            _parent._parent.stuffHolder.attachMovie("invenLoot","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:160,y:150,type:"Enhancer",frame:307,name:"Alien Core",subtype:"Weapon Speed Enhancer",power:6,curse:60,success:100,bonus:"",ability:"",moreBonus:"",sell:0,enhance:9,bonusPow:30,expiry:Infinity,desc:"This looks like an enhancer of some sort. Though, no matter how hard you try, you can\'t get this crap to work."});
         }
         else if(enhancerToGet == 3)
         {
            _parent._parent.stuffHolder.attachMovie("invenLoot","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:160,y:150,type:"Enhancer",frame:307,name:"Alien Core",subtype:"Weapon Defense Enhancer",power:240,curse:60,success:100,bonus:"",ability:"",moreBonus:"",sell:0,enhance:9,bonusPow:30,expiry:Infinity,desc:"This looks like an enhancer of some sort. Though, no matter how hard you try, you can\'t get this crap to work."});
         }
         else if(enhancerToGet == 4)
         {
            _parent._parent.stuffHolder.attachMovie("invenLoot","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:160,y:150,type:"Enhancer",frame:307,name:"Alien Core",subtype:"Weapon Critical Enhancer",power:20,curse:60,success:100,bonus:"",ability:"",moreBonus:"",sell:0,enhance:9,bonusPow:30,expiry:Infinity,desc:"This looks like an enhancer of some sort. Though, no matter how hard you try, you can\'t get this crap to work."});
         }
         else if(enhancerToGet == 5)
         {
            _parent._parent.stuffHolder.attachMovie("invenLoot","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:160,y:150,type:"Enhancer",frame:307,name:"Alien Core",subtype:"Weapon Dexterity Enhancer",power:20,curse:60,success:100,bonus:"",ability:"",moreBonus:"",sell:0,enhance:9,bonusPow:30,expiry:Infinity,desc:"This looks like an enhancer of some sort. Though, no matter how hard you try, you can\'t get this crap to work."});
         }
         else if(enhancerToGet == 6)
         {
            _parent._parent.stuffHolder.attachMovie("invenLoot","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:160,y:150,type:"Enhancer",frame:307,name:"Alien Core",subtype:"Weapon Health Enhancer",power:20,curse:60,success:100,bonus:"",ability:"",moreBonus:"",sell:0,enhance:9,bonusPow:30,expiry:Infinity,desc:"This looks like an enhancer of some sort. Though, no matter how hard you try, you can\'t get this crap to work."});
         }
         else if(enhancerToGet == 7)
         {
            _parent._parent.stuffHolder.attachMovie("invenLoot","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:160,y:150,type:"Enhancer",frame:308,name:"Alien Core",subtype:"Armor Attack Enhancer",power:40,curse:60,success:100,bonus:"",ability:"",moreBonus:"",sell:0,enhance:9,bonusPow:30,expiry:Infinity,desc:"This looks like an enhancer of some sort. Though, no matter how hard you try, you can\'t get this crap to work."});
         }
         else if(enhancerToGet == 8)
         {
            _parent._parent.stuffHolder.attachMovie("invenLoot","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:160,y:150,type:"Enhancer",frame:308,name:"Alien Core",subtype:"Armor Speed Enhancer",power:6,curse:60,success:100,bonus:"",ability:"",moreBonus:"",sell:0,enhance:9,bonusPow:30,expiry:Infinity,desc:"This looks like an enhancer of some sort. Though, no matter how hard you try, you can\'t get this crap to work."});
         }
         else if(enhancerToGet == 9)
         {
            _parent._parent.stuffHolder.attachMovie("invenLoot","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:160,y:150,type:"Enhancer",frame:308,name:"Alien Core",subtype:"Armor Defense Enhancer",power:100,curse:60,success:100,bonus:"",ability:"",moreBonus:"",sell:0,enhance:9,bonusPow:30,expiry:Infinity,desc:"This looks like an enhancer of some sort. Though, no matter how hard you try, you can\'t get this crap to work."});
         }
         else if(enhancerToGet == 10)
         {
            _parent._parent.stuffHolder.attachMovie("invenLoot","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:160,y:150,type:"Enhancer",frame:308,name:"Alien Core",subtype:"Armor Critical Enhancer",power:20,curse:60,success:100,bonus:"",ability:"",moreBonus:"",sell:0,enhance:9,bonusPow:30,expiry:Infinity,desc:"This looks like an enhancer of some sort. Though, no matter how hard you try, you can\'t get this crap to work."});
         }
         else if(enhancerToGet == 11)
         {
            _parent._parent.stuffHolder.attachMovie("invenLoot","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:160,y:150,type:"Enhancer",frame:308,name:"Alien Core",subtype:"Armor Dexterity Enhancer",power:20,curse:60,success:100,bonus:"",ability:"",moreBonus:"",sell:0,enhance:9,bonusPow:30,expiry:Infinity,desc:"This looks like an enhancer of some sort. Though, no matter how hard you try, you can\'t get this crap to work."});
         }
         else if(enhancerToGet == 12)
         {
            _parent._parent.stuffHolder.attachMovie("invenLoot","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:160,y:150,type:"Enhancer",frame:308,name:"Alien Core",subtype:"Armor Health Enhancer",power:20,curse:60,success:100,bonus:"",ability:"",moreBonus:"",sell:0,enhance:9,bonusPow:30,expiry:Infinity,desc:"This looks like an enhancer of some sort. Though, no matter how hard you try, you can\'t get this crap to work."});
         }
      }
      else
      {
         _parent._parent.stuffHolder.attachMovie("invenLoot","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:160,y:150,type:"Accessory",frame:3,name:"Alien Earrings",reqRank:70,subtype:"Earring",attack:15,defense:25,speed:0,crit:0,dexterity:0,health:0,bonus:"Random",ability:"Random",moreBonus:"",maxLevel:2,expTNL:90000000,sell:0,expiry:Infinity,enhance:9,bonusPow:300,noBonus:true,noLife:true,noRecycle:true,spirit:true,unob:0,desc:"A pair of Alien Earrings. Aliens don\'t wear these, though. Perhaps they\'re not into Spirit."});
      }
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
   roll = 0;
}


onClipEvent(enterFrame){
   if(xAlpha < 100)
   {
      xAlpha += 4;
   }
   _alpha = xAlpha;
}


onClipEvent(load){
   xAlpha = 100;
}


