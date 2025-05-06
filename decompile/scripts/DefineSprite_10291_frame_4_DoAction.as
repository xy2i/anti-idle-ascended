//! status=pending
onEnterFrame = function()
{
   if(_root.save.boostPotion > 9999)
   {
      _root.save.boostPotion = 9999;
   }
   if(_root.save.megaBoostPotion > 9999)
   {
      _root.save.megaBoostPotion = 9999;
   }
};
