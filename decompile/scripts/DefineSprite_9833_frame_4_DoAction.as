//! status=pending
pillText.text = "You have: " + _root.save.botPill;
r1Text.text = _root.save.shinyToken + " / 3000";
r2Text.text = _root.save.megaCareerPotion + " / 1500";
r3Text.text = _root.save.gardenMegaFertilizer + " /  600";
onEnterFrame = function()
{
   pillText.text = "You have: " + _root.save.botPill;
   r1Text.text = _root.save.shinyToken + " / 3000";
   r2Text.text = _root.save.megaCareerPotion + " / 1500";
   r3Text.text = _root.save.gardenMegaFertilizer + " /  600";
};
