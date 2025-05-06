//! status=pending
function checkStat()
{
   owned = _root.save.deathMatchEntry;
   cap = 0;
}
function purchase()
{
   _root.save.deathMatchEntry += 1;
}
stop();
qtCost = 500;
etCost = 250;
checkStat();
