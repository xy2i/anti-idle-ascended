//! status=pending
onEnterFrame = function()
{
   if(_root.save.noAntsTime <= 0)
   {
      if(_root.save.featureManualSprayer == true || _root.save.featureDoomSprayer == true)
      {
         _root.save.noAntsTime = 2;
      }
   }
   if(_root.save.autoHarvestTime <= 0)
   {
      _root.save.autoHarvestTime = 2;
   }
   if(_root.save.batteryChargerTime <= 0)
   {
      if(_root.save.printerCharge < 200 || _root.save.featureSuperBattery == true)
      {
         _root.save.batteryChargerTime = 2;
      }
   }
};
