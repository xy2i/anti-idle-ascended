//! status=pending
onClipEvent(load){
   recipe = 1;
   if(_root.save.bestLevel >= 500)
   {
      recipe = 2;
   }
   if(_root.save.bestLevel >= 1000)
   {
      recipe = 3;
   }
   if(_root.save.bestLevel >= 2000)
   {
      recipe = 4;
   }
   if(_root.save.bestLevel >= 3000)
   {
      recipe = 5;
   }
   levDesc = [zeroItem,""];
   levDesc.push("Reach level 500");
   levDesc.push("Reach level 1,000");
   levDesc.push("Reach level 2,000");
   levDesc.push("Reach level 3,000");
}


