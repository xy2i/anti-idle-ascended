//! status=pending
function checkCost()
{
   _root.resetCost = 0;
   _root.resetCostMax = 0;
   if(_root.eventName == "SP Reset Day")
   {
      _root.resetCost = 0;
      _root.resetCostMax = 0;
   }
   else if(_root.save.arenaLevel >= 1000)
   {
      _root.resetCost = _root.save.arenaLevel * _root.save.arenaLevel * 4;
      _root.resetCostMax = _root.save.arenaLevel * _root.save.arenaLevel * 1 * _root.save.arenaTotalSkill;
   }
}
stop();
if(skillCodeInput == undefined)
{
   skillCodeInput = "";
}
checkCost();
onEnterFrame = function()
{
   spText.text = _root.withComma(_root.save.arenaSP);
   maxText.text = _root.withComma(_root.save.arenaLevel * 20 + _root.save.arenaUltimateSP * 10);
   checkCost();
};
