//! status=pending
function checkStat()
{
   owned = _root.save.fishLeft[10];
   cap = 0;
}
function purchase()
{
   _root.save.fishFound[10] += 10;
   _root.save.fishLeft[10] += 10;
}
stop();
qtCost = 1000;
etCost = 1000;
checkStat();
