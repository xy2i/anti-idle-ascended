//! status=pending
function choice1()
{
   _root.gainCoin(10000000);
   _parent._parent.awesomePop.displayMessage("You have received 10,000,000 Coins! Hooray!");
   _parent.gotoAndStop(2);
}
function choice2()
{
   if(Math.random() < 0.01)
   {
      _root.gainGreenCoin(10000000);
      _parent._parent.awesomePop.displayMessage("You have received 10,000,000 Green Coins! Hooray!!!!!!!1!!");
   }
   else
   {
      _parent._parent.awesomePop.displayMessage("You asked for 10,000,000 Green Coins, but got nothing in return. Clearly that was too much to ask for.");
   }
   _parent.gotoAndStop(2);
}
choice1Text = "Get 10,000,000 Coins";
choice2Text = "Get 10,000,000 Green Coins";
choice3Text = "";
choice4Text = "";
choice3 = null;
choice4 = null;
