//! status=pending
onEnterFrame = function()
{
   tempBonus = _root.save.inventoryBonus[1301];
   if(tempBonus == undefined)
   {
      tempBonus = "";
   }
   tempAbility = _root.save.inventoryAbility[1301];
   if(tempAbility == undefined)
   {
      tempAbility = "";
   }
   tempMoreBonus = _root.save.inventoryMoreBonus[1301];
   if(tempMoreBonus == undefined)
   {
      tempMoreBonus = "";
   }
   bonusText.text = tempBonus;
   abilityText.text = tempAbility;
   moreBonusText.text = tempMoreBonus;
   leftText.text = _root.save.arenaBonusChange;
};
