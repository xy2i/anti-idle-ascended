//! status=pending
on(dragOver,rollOver){
   manaToMeasure = Math.ceil(_root.save.arenaMana / 50);
   if(_root.save.arenaMana > 5000000)
   {
      manaToMeasure = 100000 + Math.ceil((_root.save.arenaMana - 5000000) / 100);
   }
   if(_root.save.arenaMana > 10000000)
   {
      manaToMeasure = 150000 + Math.ceil((_root.save.arenaMana - 10000000) / 200);
   }
   if(manaToMeasure > _root.save.arenaMana)
   {
      manaToMeasure = _root.save.arenaMana;
   }
   manaPowerMultiplier = 1 + manaToMeasure / 50000;
   if(_root.manaPower == true)
   {
      _root.actiondescription += "<b><font color=\'#FFFF00\'>Mana Power</font></b>";
      _root.actiondescription += "\nMana Power Multiplier: <b><font color=\'#FFFF00\'>" + Math.floor(manaPowerMultiplier * 1000) / 1000 + "</font></b>\n";
      _root.actiondescription += "\nMana Power Multiplier is a post-defense multiplier based on current MP.\n\nIt does not impact mining\n or Special Wand damage.\n";
      _root.actiondescription += "\nAverage Damage * Mana Mult:\n <b><font color=\'#FFFF00\'>" + _root.withComma(manaPowerMultiplier * (_root.maxDamage + _root.minDamage) / 2) + "</font></b>";
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(enterFrame){
   del += 1;
   if(del >= 20)
   {
      del = 0;
      if(_root.save.arenaMana < Math.floor(_root.maxMana / 2) && _root.save.arenaMana < 2000)
      {
         flashing = true;
      }
      else if(_alpha == 0)
      {
         flashing = false;
      }
      if(flashing == true)
      {
         time += 1;
         if(time >= 1)
         {
            _alpha = 100;
         }
         if(time >= 2)
         {
            _alpha = 0;
            time = 0;
         }
      }
   }
}


onClipEvent(load){
   _alpha = 0;
   flashing = false;
   time = 0;
   del = 0;
}


