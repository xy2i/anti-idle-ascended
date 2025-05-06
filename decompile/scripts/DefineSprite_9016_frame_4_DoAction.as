//! status=pending
onEnterFrame = function()
{
   if(_root.save.reforgeMode == 1)
   {
      modeText.text = "Only convert overcapped currencies to Orbs of Reforging";
   }
   else
   {
      modeText.text = "Convert 0.1% of remaining YC/GC/BC every second";
   }
   orb1Text.text = "Owned: " + _root.withComma(_root.save.reforgingOrb1);
   orb2Text.text = "Owned: " + _root.withComma(_root.save.reforgingOrb2);
   orb3Text.text = "Owned: " + _root.withComma(_root.save.reforgingOrb3);
   coin1Text.text = _root.withComma(_root.save.reforgingCoin) + " / 10,000,000,000,000";
   coin2Text.text = _root.withComma(_root.save.reforgingGreenCoin) + " / 10,000,000,000";
   coin3Text.text = _root.withComma(_root.save.reforgingBlueCoin) + " / 10,000,000";
   bar1._xscale = 100 - _root.save.reforgingCoin / 100000000000;
   bar2._xscale = 100 - _root.save.reforgingGreenCoin / 100000000;
   bar3._xscale = 100 - _root.save.reforgingBlueCoin / 100000;
};
