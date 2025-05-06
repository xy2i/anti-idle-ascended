//! status=pending
function checkFrame()
{
   if(_root.save.harvestCount > 0 || _root.saveid >= 10)
   {
      fr = 4;
   }
   else
   {
      fr = 1;
      if(_root.treeToPlant == 1 || _root.save.gardenTrees[1] != 0)
      {
         fr = 2;
         if(_root.save.gardenTrees[1] != 0)
         {
            fr = 3;
         }
      }
   }
   gotoAndStop(fr);
}
onEnterFrame = function()
{
   checkFrame();
};
checkFrame();
