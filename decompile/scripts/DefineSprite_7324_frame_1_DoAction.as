//! status=pending
onEnterFrame = function()
{
   if(_root.save.awesomeRefill > 9999)
   {
      _root.save.awesomeRefill = 9999;
   }
   refillLeft.text = _root.withComma(_root.save.awesomeRefill);
   eneText.text = _root.save.awesomeEnergy + " / " + Math.floor(_root.save.awesomeMaxEnergy * 5);
   nextEneText.text = "[Next: " + _root.convertSec(_root.save.awesomeEnergyNext) + "]";
};
