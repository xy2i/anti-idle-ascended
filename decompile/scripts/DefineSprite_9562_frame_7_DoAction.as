//! status=pending
function checkStat()
{
   owned = Math.ceil(_root.save.doubleExpTime / 60);
   cap = 6000;
}
function purchase()
{
   _root.save.doubleExpTime += 3600;
}
stop();
qtCost = 2000;
etCost = 1000;
checkStat();
