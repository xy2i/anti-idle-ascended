//! status=pending
function checkStat()
{
   owned = _root.save.megaBoostPotion;
   cap = 9999;
}
function purchase()
{
   _root.save.megaBoostPotion += 1;
}
stop();
qtCost = 2000;
etCost = 1000;
checkStat();
