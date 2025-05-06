//! status=pending
function checkStat()
{
   owned = _root.save.consecutiveDays;
   cap = _root.save.maxConsecutiveDays;
}
function purchase()
{
   _root.save.consecutiveDays = _root.save.maxConsecutiveDays;
}
stop();
qtCost = 2000;
etCost = 1000;
checkStat();
