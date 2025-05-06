//! status=pending
function checkStat()
{
   owned = _root.save.arenaSuperiorCraft;
   cap = 0;
}
function purchase()
{
   _root.save.arenaSuperiorCraft += 200;
}
stop();
qtCost = 1000;
etCost = 1000;
checkStat();
