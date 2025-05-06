//! status=pending
function checkStat()
{
   owned = _root.save.mysteryBox[3];
   cap = 0;
}
function purchase()
{
   _root.save.mysteryBox[3] += 10;
}
stop();
qtCost = 1500;
etCost = 1500;
checkStat();
