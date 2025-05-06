//! status=pending
onEnterFrame = function()
{
   if(_root.save.sauceType == 1)
   {
      sauceMode = "EXP";
   }
   else if(_root.save.sauceType == 2)
   {
      sauceMode = "Coins";
   }
   else if(_root.save.sauceType == 3)
   {
      sauceMode = "Green Coins";
   }
   else if(_root.save.sauceType == 4)
   {
      sauceMode = "Blue Coins";
   }
   else if(_root.save.sauceType == 5)
   {
      sauceMode = "White Coins";
   }
   else
   {
      sauceMode = "EXP";
   }
   coinText.text = "Here you can see where you got today\'s " + sauceMode + " from!";
};
