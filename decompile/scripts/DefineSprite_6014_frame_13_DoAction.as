//! status=pending
bonusArray = ["None","Reward","EXP","Coin","Pixel","Drop Rate","Spawn Rate","Rare Monster Rate","Epic Monster Rate","Fire Element","Ice Element","Wind Element","Earth Element","Thunder Element","Water Element","Light Element","Dark Element"];
abilityArray = ["None","Accuracy","Attack","Attack Speed","Autosteal","Blind Chance","Critical Chance","Critical Damage","Damage Taken","Defense","Dodge Chance","Drain","Evasion","Hit Chance","HP","HP Regen","Ignore Defense","Mana Eater","Mastery","MP","MP Regen","Poison Chance","Rage Depletion","Reflect","Stun Chance","Weaken Chance"];
weaponAbilityArray = ["None","All Elements","Blind Duration","Blind Effect","Boss Damage","Buff Effect","Damage","Double Hit Chance","Extra Combo","Instant Kill","Magic Reflect","Magic Resist","Max Spirit","Negate Effect","Non-Boss Damage","Nullify Death Penalty","Poison Damage","Poison Duration","Potion Efficiency","Rage Attack","Rage Speed","Weaken Duration","Weaken Effect"];
moreBonusArray = ["None","Equipment Attack","Equipment Defense","Attack Power","Defense Power","Accuracy","Evasion","MaxHP","MaxMP","EXP / Boss Kill","EXP / Rare Kill","EXP / Epic Kill"];
onEnterFrame = function()
{
   bonus1Text.text = _root.save.arenaBonusPreference1;
   bonus2Text.text = _root.save.arenaBonusPreference2;
   ability1Text.text = _root.save.arenaAbilityPreference1;
   ability2Text.text = _root.save.arenaAbilityPreference2;
   ability3Text.text = _root.save.arenaAbilityPreference3;
   moreBonus1Text.text = _root.save.arenaMoreBonusPreference1;
   moreBonus2Text.text = _root.save.arenaMoreBonusPreference2;
};
