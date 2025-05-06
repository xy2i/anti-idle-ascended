//! status=pending
function checkStat()
{
   owned = _root.save.mysteryBox[7];
   cap = 0;
}
function purchase()
{
   _root.save.mysteryBox[7] += 10;
}
stop();
qtCost = 1000;
etCost = 1000;
checkStat();
