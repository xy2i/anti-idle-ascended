//! status=pending
onEnterFrame = function()
{
   if(_root.save.totalType == 1)
   {
      sauceMode = "EXP";
   }
   else if(_root.save.totalType == 2)
   {
      sauceMode = "Coins";
   }
   else if(_root.save.totalType == 3)
   {
      sauceMode = "Green Coins";
   }
   else if(_root.save.totalType == 4)
   {
      sauceMode = "Blue Coins";
   }
   else if(_root.save.totalType == 5)
   {
      sauceMode = "White Coins";
   }
   else if(_root.save.totalType == 6)
   {
      sauceMode = "Purple Coins";
   }
   coinText.text = "Here you can see where you got all the " + sauceMode + " from since you started playing the Omnigraph Apocalypse!";
};
