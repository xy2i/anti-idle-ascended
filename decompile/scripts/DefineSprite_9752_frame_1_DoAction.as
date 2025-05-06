//! status=pending
function checkUpgrade()
{
   gotoAndStop(_root.save.restEfficiency[upgradeID] + 1);
   _parent["t" + upgradeID].text = sign + Math.round(10 + _root.save.restEfficiency[upgradeID]) + "%";
}
upgradeID = Math.round((_Y - 50) / 20);
sign = "+";
if(upgradeID == 5 || upgradeID == 9)
{
   sign = "-";
}
checkUpgrade();
onEnterFrame = function()
{
   checkUpgrade();
};
