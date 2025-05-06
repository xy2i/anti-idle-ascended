//! status=pending
onClipEvent(load){
   recipe = 1;
   if(_root.save.recipeLevel >= 1)
   {
      recipe = 2;
   }
   if(_root.save.recipeLevel >= 2)
   {
      recipe = 3;
   }
   if(_root.save.recipeLevel >= 3)
   {
      recipe = 4;
   }
   if(_root.save.recipeLevel >= 4)
   {
      recipe = 5;
   }
   levDesc = [zeroItem,""];
   levDesc.push("Can be obtained as a loot drop from Lv. 100+ bosses");
   levDesc.push("Can be obtained as a loot drop from Lv. 300+ bosses");
   levDesc.push("Can be obtained as a loot drop from Lv. 900+ bosses");
   levDesc.push("Can be obtained as a loot drop from Lv. 2700+ bosses");
}


