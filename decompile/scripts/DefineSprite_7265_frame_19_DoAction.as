//! status=pending
function choice1()
{
   if(_root.save.greenCoin >= costX && _root.save.progStore < 5000)
   {
      _root.save.greenCoin -= costX;
      _root.save.progStore += 100;
      _parent._parent.awesomePop.displayMessage("You successfully purchased the \"Progress Bar Extension\". Now what does this do, hmm...");
   }
   else if(_root.save.progStore == 5000 && _root.save.awesomeReputation > 50)
   {
      _root.save.awesomeReputation += 2;
      _parent._parent.awesomePop.displayMessage("Your Progress Bar Capacity is already maxed out. The merchant congratulated you and raised your Reputation.\nReputation +2");
   }
   else if(_root.save.progStore == 5000)
   {
      _root.save.awesomeReputation -= 4;
      _parent._parent.awesomePop.displayMessage("Your Progress Bar Capacity is already maxed out. The merchant congratulated you and dropped your Reputation.\nReputation -4");
   }
   else
   {
      _parent._parent.awesomePop.displayMessage("You don\'t have enough money.");
   }
   _parent.gotoAndStop(2);
}
costX = 2000000 + _root.save.awesomeReputation * 10;
if(costX > 3000000)
{
   costX = 3000000;
}
if(costX < 1000000)
{
   costX = 1000000;
}
choice1Text = "Buy it for " + _root.withComma(costX) + " Green Coins";
choice2Text = "";
choice3Text = "";
choice4Text = "";
choice2 = null;
choice3 = null;
choice4 = null;
