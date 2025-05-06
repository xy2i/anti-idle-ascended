//! status=pending
function checkStat()
{
   owned = _root.save.fishLeft[8];
   cap = 0;
}
function purchase()
{
   _root.save.fishFound[8] += 10;
   _root.save.fishLeft[8] += 10;
}
stop();
qtCost = 500;
etCost = 500;
checkStat();
