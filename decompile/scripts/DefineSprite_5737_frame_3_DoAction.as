//! status=pending
function checkCrystal()
{
   crystalTemp *= 1;
   if(isNaN(crystalTemp))
   {
      crystalTemp = 0;
   }
   if(crystalTemp > _root.save.arenaCrystal2)
   {
      crystalTemp = _root.save.arenaCrystal2;
   }
   if(crystalTemp > _parent.crystal2Max)
   {
      crystalTemp = _parent.crystal2Max;
   }
}
crystalText.restrict = "0-9";
if(_parent.crystal2Apply == 0)
{
   crystalTemp = 999;
}
else
{
   crystalTemp = _parent.crystal2Apply;
}
checkCrystal();
crystalText.text = crystalTemp;
Selection.setFocus(crystalText);
onEnterFrame = function()
{
   checkCrystal();
};
