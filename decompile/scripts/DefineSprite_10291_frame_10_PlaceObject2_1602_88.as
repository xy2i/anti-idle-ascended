//! status=pending
on(dragOver,rollOver){
   cLevel = _root.save.careerLevel[4];
   _root.actiondescription = "<b>Item Maker</b>\nLevel: <b>" + cLevel + "</b>";
   if(cLevel >= 0)
   {
      _root.actiondescription += "\n\n<b>When activated:</b>";
      _root.actiondescription += "\nDrop Rate +" + cLevel * 1 + "%";
      _root.actiondescription += "\nCrafting Material gain +" + cLevel * 0.5 + "%";
   }
   if(cLevel >= 100)
   {
      _root.actiondescription += "\n\n<b>Level 100 Bonus:</b>\n";
      _root.actiondescription += "You can apply twice as many Crystals of (Ultimate) Rarity\nMore items are available for crafting";
   }
   if(cLevel >= 200)
   {
      _root.actiondescription += "\n\n<b>Level 200 Bonus:</b>\n";
      _root.actiondescription += "Secret Crystals have 30% less HP\nAll items\' crafting costs are reduced by 30%";
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


