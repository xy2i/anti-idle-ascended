//! status=pending
function checkStat()
{
   owned = -1;
   cap = -1;
}
function purchase()
{
   _root.save.rewardBotTime += 90000;
   _root.save.autoHarvestTime += 90000;
   _root.save.eliteButtonTime += 90000;
   _root.save.batteryChargerTime += 90000;
   _root.save.stadiumProTime += 90000;
   _root.save.powerUserTime += 90000;
   _root.save.demandMasterTime += 90000;
   _root.save.quickAdventuresTime += 90000;
   _root.save.eliteFisherTime += 90000;
}
stop();
qtCost = 9000;
etCost = 4500;
checkStat();
