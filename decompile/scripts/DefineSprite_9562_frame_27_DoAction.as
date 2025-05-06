//! status=pending
function checkStat()
{
   owned = Math.floor(_root.save.doubleQuestTime / 60);
   cap = 6000;
}
function purchase()
{
   _root.save.doubleQuestTime += 90000;
   if(_root.save.doubleQuestTime > 360000)
   {
      _root.save.doubleQuestTime = 360000;
   }
}
stop();
qtCost = 3000;
etCost = 1500;
checkStat();
