//! status=pending
_root.buttonHitCombo = 0;
_root.buttonMultiplier = 1;
_root.summonCount = 0;
_root.antiLag = 0;
onEnterFrame = function()
{
   mashbonusa = Math.floor(Math.sqrt(_root.save.buttonPressToday * 1));
   mashbonusb = Math.floor(Math.sqrt(_root.save.buttonPress * 0.5));
   mashbonusc = Math.floor(Math.sqrt(_root.buttonHitCombo * 10));
   mashbonusd = _root.save.buttonMultiplier;
   if(mashbonusa > 500)
   {
      mashbonusa = 500;
   }
   if(mashbonusb > 2500)
   {
      mashbonusb = 2500;
   }
   if(mashbonusc > 500)
   {
      mashbonusc = 500;
   }
   if(mashbonusd > 1200)
   {
      mashbonusd = 1200;
   }
   _root.buttonMultiplier = Math.floor(100 + (mashbonusa + mashbonusb + mashbonusc + mashbonusd));
   if(_root.save.eliteButtonTime > 0)
   {
      _root.buttonMultiplier += 200;
   }
   if(Key.isDown(16))
   {
      _root.buttonMultiplier = Math.floor(_root.buttonMultiplier * 0.6);
   }
   if(_root.save.buttonPressToday > 1000000)
   {
      _root.buttonMultiplier = Math.floor(_root.buttonMultiplier * 0.2);
   }
   if(_root.save.buttonBless > 0)
   {
      _root.buttonMultiplier = Math.floor(_root.buttonMultiplier * 2);
   }
   if(_root.antiLag > 200)
   {
      _root.antiLag = 0;
   }
};
