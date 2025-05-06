//! status=pending
function checkStat()
{
   owned = _root.save.awesomeRefill;
   cap = 9999;
}
function purchase()
{
   _root.save.awesomeRefill += 10;
}
stop();
qtCost = 2000;
etCost = 2000;
checkStat();
