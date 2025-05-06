//! status=pending
function checkStat()
{
   owned = _root.save.mysteryBox[1];
   cap = 0;
}
function purchase()
{
   _root.save.mysteryBox[1] += 10;
}
stop();
qtCost = 800;
etCost = 800;
checkStat();
