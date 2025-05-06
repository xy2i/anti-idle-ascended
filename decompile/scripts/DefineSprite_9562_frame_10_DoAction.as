//! status=pending
function checkStat()
{
   owned = _root.save.gardenMegaFertilizer;
   cap = 9999;
}
function purchase()
{
   _root.save.gardenMegaFertilizer += 10;
}
stop();
qtCost = 4000;
etCost = 4000;
checkStat();
