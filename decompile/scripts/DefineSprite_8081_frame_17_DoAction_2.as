//! status=pending
onEnterFrame = function()
{
   i = 1;
   while(i <= 10)
   {
      if(_root.save.mysteryBox[i] > 999999)
      {
         _root.save.mysteryBox[i] = 999999;
      }
      this["box" + i + "num"].text = _root.withComma(_root.save.mysteryBox[i]);
      i++;
   }
};
