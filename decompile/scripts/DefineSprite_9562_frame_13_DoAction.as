//! status=pending
function checkStat()
{
   owned = _root.save.arenaCrystal1;
   cap = 9999;
}
function purchase()
{
   _root.save.arenaCrystal1 += 100;
}
stop();
qtCost = 1000;
etCost = 1000;
checkStat();
