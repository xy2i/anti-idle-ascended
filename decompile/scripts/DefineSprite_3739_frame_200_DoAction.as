//! status=pending
_root.incDt2();
_parent._parent.stuffHolder.attachMovie("newLoot8","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:200,y:150});
if(_root.raidBonus >= 2)
{
   _root.incDt2();
   _parent._parent.stuffHolder.attachMovie("newLoot10","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:200,y:150,lootValue:_root.raidBonus * _root.raidBonus * 2});
}
if(Math.random() < 0.001 * _root.raidBonus * _root.raidBonus)
{
   _root.incDt2();
   _parent._parent.stuffHolder.attachMovie("invenLoot","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:200,y:150,type:"Enhancer",frame:221,name:"Mystery Enhancer Identifier",subtype:"Mystery Enhancer Identifier",power:0,curse:0,success:100,bonus:"",ability:"",moreBonus:"",sell:0,enhance:10,bonusPow:300,expiry:172800000,desc:""});
}
if(Math.random() < 0.001 * _root.raidBonus * _root.raidBonus)
{
   _root.incDt2();
   _parent._parent.stuffHolder.attachMovie("invenLoot","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:200,y:150,type:"Enhancer",frame:411,name:"Accessory Unique Enhancer Lv. 1",subtype:"Accessory Unique Enhancer",power:1,curse:0,success:100,bonus:"",ability:"",moreBonus:"",sell:0,enhance:10,bonusPow:106,expiry:172800000,desc:"A piece of the Treasure of the Pyramid. It coincidentally has the shape of an enhancer, and for some reason, it works."});
}
if(Math.random() < 0.01 * _root.raidBonus * _root.raidBonus)
{
   _root.incDt2();
   _parent._parent.stuffHolder.attachMovie("newLoot19","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:200,y:150,lootValue:9});
}
if(Math.random() < 0.01 * _root.raidBonus * _root.raidBonus)
{
   _root.incDt2();
   _parent._parent.stuffHolder.attachMovie("newLoot19","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:200,y:150,lootValue:10});
}
if(_root.worstMoon == true && _root.raidBonus >= 2)
{
   _root.incDt2();
   _parent._parent.stuffHolder.attachMovie("newLoot16","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:200,y:150,lootValue:_root.raidBonus * _root.raidBonus * 2});
}
