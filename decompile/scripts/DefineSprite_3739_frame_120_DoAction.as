//! status=pending
cg = 1;
while(cg <= _root.raidBonus && cg <= 10)
{
   _root.incDt2();
   _parent._parent.stuffHolder.attachMovie("newLoot11","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:200,y:150,lootValue:1});
   cg++;
}
