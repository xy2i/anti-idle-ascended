//! status=pending
function choice1()
{
   if(_root.save.greenCoin >= Math.floor(amnt1 * 1))
   {
      _root.save.greenCoin -= Math.floor(amnt1 * 1);
      _root.save.specialPetFood += 7;
      _root.save.awesomeReputation += 2;
      _parent._parent.awesomePop.displayMessage("You have successfully purchased 7 Special Pet Food!\nReputation +2");
   }
   else
   {
      _root.save.awesomeReputation -= 1;
      _parent._parent.awesomePop.displayMessage("After you made the decision to purchase the Special Pet Food, you realized that you didn\'t have enough money with you. How embarrassing.\nReputation -1");
   }
   _parent.gotoAndStop(2);
}
function choice2()
{
   if(_root.save.greenCoin >= Math.floor(amnt1 * 5))
   {
      _root.save.greenCoin -= Math.floor(amnt1 * 5);
      _root.save.specialPetFood += 20;
      _root.save.awesomeReputation += 5;
      _parent._parent.awesomePop.displayMessage("You have successfully purchased 20 Special Pet Food!\nReputation +5");
   }
   else
   {
      _root.save.awesomeReputation -= 1;
      _parent._parent.awesomePop.displayMessage("After you made the decision to purchase the Special Pet Food, you realized that you didn\'t have enough money with you. How embarrassing.\nReputation -1");
   }
   _parent.gotoAndStop(2);
}
amnt1 = Math.floor(15000 - Math.sqrt(Math.abs(_root.save.awesomeReputation)) * 10 + Math.floor(_root.save.specialPetFood / 100) * 5000);
if(amnt1 < 10000)
{
   amnt1 = 10000;
}
if(amnt1 > 100000)
{
   amnt1 = 100000;
}
choice1Text = "Buy 7 Special Pet Food for " + _root.withComma(amnt1 * 1) + " Green Coins";
choice2Text = "Buy 20 Special Pet Food for " + _root.withComma(amnt1 * 5) + " Green Coins";
choice3Text = "";
choice4Text = "";
choice3 = null;
choice4 = null;
