//! status=pending
fishCountText.text = _root.withComma(_root.fishCount);
if(_root.fishCount >= _root.save.fishCapacity)
{
   fishCountText.textColor = 16724787;
}
else
{
   fishCountText.textColor = 10092339;
}
onEnterFrame = function()
{
   fishCountText.text = _root.withComma(_root.fishCount);
   if(_root.fishCount >= _root.save.fishCapacity)
   {
      fishCountText.textColor = 16711680;
   }
   else
   {
      fishCountText.textColor = 16776960;
   }
   if(_root.save.fishExamLeft > 0)
   {
      fr = 3;
   }
   else if(_root.save.fishRod == 4)
   {
      fr = 2;
   }
   else
   {
      fr = 1;
   }
   if(_currentframe != fr)
   {
      gotoAndStop(fr);
   }
};
