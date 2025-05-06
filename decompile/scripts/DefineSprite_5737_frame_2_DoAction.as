//! status=pending
function checkCrystal()
{
   crystalTemp *= 1;
   if(isNaN(crystalTemp))
   {
      crystalTemp = 0;
   }
   if(crystalTemp > _root.save.arenaCrystal1)
   {
      crystalTemp = _root.save.arenaCrystal1;
   }
   if(crystalTemp > _parent.crystal1Max)
   {
      crystalTemp = _parent.crystal1Max;
   }
}
crystalText.restrict = "0-9";
if(_parent.crystal1Apply == 0)
{
   crystalTemp = 999;
}
else
{
   crystalTemp = _parent.crystal1Apply;
}
crystalText.text = crystalTemp;
checkCrystal();
Selection.setFocus(crystalText);
onEnterFrame = function()
{
   checkCrystal();
};
