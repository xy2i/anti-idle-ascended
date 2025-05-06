//! status=pending
function checkStat()
{
   owned = _root.save.gardenFertilizer;
   cap = 9999;
}
function purchase()
{
   _root.save.gardenFertilizer += 25;
}
stop();
qtCost = 1000;
etCost = 1000;
checkStat();
