//! status=pending
function checkStat()
{
   owned = _root.save.careerPotion;
   cap = 9999;
}
function purchase()
{
   _root.save.careerPotion += 10;
}
stop();
qtCost = 250;
etCost = 250;
checkStat();
