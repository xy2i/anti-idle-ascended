//! status=pending
function checkStat()
{
   owned = Math.ceil(_root.save.doubleCoinTime / 60);
   cap = 6000;
}
function purchase()
{
   _root.save.doubleCoinTime += 3600;
}
stop();
qtCost = 1000;
etCost = 500;
checkStat();
