//! status=pending
function choice1()
{
   if(_root.save.greenCoin >= 25000)
   {
      _root.save.greenCoin -= 25000;
      _root.save.stadiumToken += 250;
      _root.save.awesomeReputation += 2;
      _parent._parent.awesomePop.displayMessage("You successfully purchased the Stadium Tokens.\nReputation +2");
   }
   else
   {
      _parent._parent.awesomePop.displayMessage("You don\'t have enough money.");
   }
   _parent.gotoAndStop(2);
}
function choice2()
{
   if(_root.save.greenCoin >= 100000)
   {
      _root.save.greenCoin -= 100000;
      _root.save.stadiumToken += 500;
      _root.save.awesomeReputation += 3;
      _parent._parent.awesomePop.displayMessage("You successfully purchased the Stadium Tokens.\nReputation +3");
   }
   else
   {
      _parent._parent.awesomePop.displayMessage("You don\'t have enough money.");
   }
   _parent.gotoAndStop(2);
}
choice1Text = "Buy 250 Stadium Tokens for 25,000 Green Coins";
choice2Text = "Buy 500 Stadium Tokens for 100,000 Green Coins";
choice3Text = "";
choice4Text = "";
choice3 = null;
choice4 = null;
