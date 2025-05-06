//! status=pending
onClipEvent(load){
   recipe = 1;
   if(_root.save.careerLevel[4] >= 1)
   {
      recipe = 2;
   }
   if(_root.save.careerLevel[4] >= 25)
   {
      recipe = 3;
   }
   if(_root.save.careerLevel[4] >= 50)
   {
      recipe = 4;
   }
   if(_root.save.careerLevel[4] >= 100)
   {
      recipe = 5;
   }
   levDesc = [zeroItem,""];
   levDesc.push("Item Maker Career Lv. 1");
   levDesc.push("Item Maker Career Lv. 25");
   levDesc.push("Item Maker Career Lv. 50");
   levDesc.push("Item Maker Career Lv. 100");
}


