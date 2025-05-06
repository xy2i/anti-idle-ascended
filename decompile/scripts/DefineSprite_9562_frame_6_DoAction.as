//! status=pending
function checkStat()
{
   owned = _root.save.mysteryBox[4];
   cap = 0;
}
function purchase()
{
   _root.save.mysteryBox[4] += 5;
}
stop();
qtCost = 5000;
etCost = 5000;
checkStat();
