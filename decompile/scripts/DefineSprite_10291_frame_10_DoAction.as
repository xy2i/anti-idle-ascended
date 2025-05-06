//! status=pending
onEnterFrame = function()
{
   if(_root.save.careerPotion > 9999)
   {
      if(_root.save.megaCareerPotion < 9999)
      {
         _root.save.careerPotion -= 20;
         _root.save.megaCareerPotion += 1;
      }
      else
      {
         _root.save.careerPotion = 9999;
      }
   }
   if(_root.save.megaCareerPotion > 9999)
   {
      if(_root.save.careerPotion < 9999)
      {
         _root.save.careerPotion += 19;
         _root.save.megaCareerPotion -= 1;
      }
      else
      {
         _root.save.megaCareerPotion = 9999;
      }
   }
   totalCareer.text = _root.withComma(_root.totalCareerLevel);
   careerPotionCount.text = _root.withComma(_root.save.careerPotion);
   megaCareerPotionCount.text = _root.withComma(_root.save.megaCareerPotion);
};
i = 1;
while(i <= 12)
{
   if(isNaN(_root.save.careerLevel[i]))
   {
      _root.save.careerLevel[i] = 0;
   }
   if(isNaN(_root.save.careerEXP[i]))
   {
      _root.save.careerEXP[i] = 0;
   }
   i++;
}
