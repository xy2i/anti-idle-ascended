//! status=pending
function choice1()
{
   if(_root.save.greenCoin >= 1000)
   {
      _root.save.greenCoin -= 1000;
      _root.gainWhiteCoin(3);
      _root.save.awesomeReputation += 1;
      _parent._parent.awesomePop.displayMessage("You successfully purchased 3 White Coins for 1,000 Green Coins.\nReputation +1");
   }
   else
   {
      _parent._parent.awesomePop.displayMessage("You don\'t have enough Green Coins.");
   }
   _parent.gotoAndStop(2);
}
function choice2()
{
   if(_root.save.greenCoin >= 10000)
   {
      _root.save.greenCoin -= 10000;
      _root.gainWhiteCoin(5);
      _root.save.awesomeReputation += 3;
      _parent._parent.awesomePop.displayMessage("You successfully purchased 5 White Coins for 10,000 Green Coins.\nReputation +3");
   }
   else
   {
      _parent._parent.awesomePop.displayMessage("You don\'t have enough Green Coins.");
   }
   _parent.gotoAndStop(2);
}
function choice3()
{
   if(_root.save.greenCoin >= 100000)
   {
      _root.save.greenCoin -= 100000;
      _root.gainWhiteCoin(7);
      _root.save.awesomeReputation += 6;
      _parent._parent.awesomePop.displayMessage("You successfully purchased 7 White Coins for 100,000 Green Coins.\nReputation +6");
   }
   else
   {
      _parent._parent.awesomePop.displayMessage("You don\'t have enough Green Coins.");
   }
   _parent.gotoAndStop(2);
}
function choice4()
{
   if(_root.save.greenCoin >= 1000000)
   {
      _root.save.greenCoin -= 1000000;
      _root.gainWhiteCoin(9);
      _root.save.awesomeReputation += 10;
      _parent._parent.awesomePop.displayMessage("You successfully purchased 9 White Coins for 1,000,000 Green Coins.\nReputation +10");
   }
   else
   {
      _parent._parent.awesomePop.displayMessage("You don\'t have enough Green Coins.");
   }
   _parent.gotoAndStop(2);
}
choice1Text = "Buy 3 White Coins for 1,000 Green Coins";
choice2Text = "Buy 5 White Coins for 10,000 Green Coins";
choice3Text = "Buy 7 White Coins for 100,000 Green Coins";
choice4Text = "Buy 9 White Coins for 1,000,000 Green Coins";
