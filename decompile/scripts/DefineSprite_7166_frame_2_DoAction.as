//! status=pending
onEnterFrame = function()
{
   coolDownText.text = _root.convertSec(_root.save.lolCooldown);
   if(_root.save.lolCooldown <= 0)
   {
      coolDownText.text = "Available Now!";
   }
};
