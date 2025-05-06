//! status=pending
function checkCost()
{
   cost1 = 10000000 + _root.save.arenaPyramidCraftT * 10000000;
   if(cost1 > 100000000)
   {
      cost1 = 100000000;
   }
   cost2 = 100000000 + _root.save.arenaMegabossCraftT * 100000000;
   if(cost2 > 1000000000)
   {
      cost2 = 1000000000;
   }
   cost3 = 1000 + _root.save.arenaCorruptionCraftT * 500;
   cost4 = 1000 + _root.save.arenaRevengeCraftT * 500;
   cost5 = 1000 + _root.save.arenaEndlessCraftT * 500;
   haveText1.text = _root.save.arenaPyramidEntry + " / " + _root.save.arenaMaxEntry;
   haveText2.text = _root.save.arenaMegabossEntry + " / " + _root.save.arenaMaxEntry;
   haveText3.text = _root.save.arenaCorruptionEntry + " / " + _root.save.arenaMaxEntry;
   haveText4.text = _root.save.arenaRevengeEntry + " / " + _root.save.arenaMaxEntry;
   haveText5.text = _root.save.arenaEndlessEntry + " /  1";
   specText1.text = _root.withComma(_root.save.arenaProofTraining);
   specText2.text = _root.withComma(_root.save.arenaProofMission);
}
_root.save.arenaMaxEntry = 10;
checkCost();
onEnterFrame = function()
{
   checkCost();
};
