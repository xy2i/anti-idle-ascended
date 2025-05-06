//! status=pending
function choice1()
{
   if(_root.save.gardenFertilizer >= 1)
   {
      _root.save.gardenFertilizer -= 1;
      _root.save.awesomeReputation += 2;
      _root.gainBlueCoin(100);
      _parent._parent.awesomePop.displayMessage("You gave him a Fertilizer and gained 100 Blue Coins in return.\nReputation +2");
   }
   else
   {
      _parent._parent.awesomePop.displayMessage("You don\'t have any Fertilizers.");
   }
   _parent.gotoAndStop(2);
}
function choice2()
{
   if(_root.save.gardenMegaFertilizer >= 1)
   {
      _root.save.gardenMegaFertilizer -= 1;
      _root.save.awesomeReputation += 7;
      _root.gainBlueCoin(1000);
      _parent._parent.awesomePop.displayMessage("You gave him a Mega Fertilizer and gained 1,000 Blue Coins in return.\nReputation +7");
   }
   else
   {
      _parent._parent.awesomePop.displayMessage("You don\'t have any Fertilizers.");
   }
   _parent.gotoAndStop(2);
}
choice1Text = "Sell 1 Fertilizer for 100 Blue Coins";
choice2Text = "Sell 1 Mega Fertilizer for 1,000 Blue Coins";
choice3Text = "";
choice4Text = "";
choice3 = null;
choice4 = null;
