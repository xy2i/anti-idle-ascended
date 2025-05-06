//! status=pending
_root.incDt2();
_parent._parent.stuffHolder.attachMovie("newLoot8","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:200,y:150});
if(_root.raidBonus >= 11)
{
   _root.incDt2();
   _parent._parent.stuffHolder.attachMovie("newLoot11","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:200,y:150,lootValue:2});
}
if(_root.raidBonus >= 9)
{
   _root.incDt2();
   _parent._parent.stuffHolder.attachMovie("newLoot11","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:200,y:150,lootValue:2});
}
if(_root.raidBonus >= 7)
{
   _root.incDt2();
   _parent._parent.stuffHolder.attachMovie("newLoot11","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:200,y:150,lootValue:2});
}
if(_root.raidBonus >= 5)
{
   _root.incDt2();
   _parent._parent.stuffHolder.attachMovie("newLoot11","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:200,y:150,lootValue:2});
}
_root.incDt2();
_parent._parent.stuffHolder.attachMovie("newLoot3","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:200,y:150,lootValue:20 + _root.raidBonus * _root.raidBonus * 20});
