//! status=pending
onClipEvent(load){
   recipe = 1;
   if(_root.save.secretRecipeLevel >= 1)
   {
      recipe = 2;
   }
   if(_root.save.secretRecipeLevel >= 2)
   {
      recipe = 3;
   }
   if(_root.save.secretRecipeLevel >= 3)
   {
      recipe = 4;
   }
   if(_root.save.secretRecipeLevel >= 4)
   {
      recipe = 5;
   }
   levDesc = [zeroItem,""];
   levDesc.push("Can be obtained as a loot drop from rare monsters");
   levDesc.push("Can be obtained as a loot drop from rare monsters");
   levDesc.push("Can be obtained as a loot drop from rare monsters");
   levDesc.push("Can be obtained as a loot drop from rare monsters");
}


