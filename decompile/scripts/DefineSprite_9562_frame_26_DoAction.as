//! status=pending
function checkStat()
{
   owned = _root.save.megaCareerPotion;
   cap = 9999;
}
function purchase()
{
   _root.save.megaCareerPotion += 10;
}
stop();
qtCost = 5000;
etCost = 5000;
checkStat();
