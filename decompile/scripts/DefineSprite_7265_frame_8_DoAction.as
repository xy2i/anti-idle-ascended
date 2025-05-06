//! status=pending
function choice1()
{
   if(_root.save.greenCoin >= 50000)
   {
      _root.save.greenCoin -= 50000;
      _root.save.awesomeReputation += 4;
      _parent._parent.awesomePop.displayMessage("You gave him 50,000 Green Coins to thank him for the free Energy.\nReputation +4");
   }
   else
   {
      _root.save.greenCoin = 0;
      _root.save.awesomeReputation += 2;
      _parent._parent.awesomePop.displayMessage("You didn\'t have much, but you gave him all of your remaining Green Coins to thank him for the free Energy.\nReputation +2");
   }
   _parent.gotoAndStop(2);
}
_root.save.awesomeEnergy += 2;
choice1Text = "Give him 50,000 Green Coins as thanks";
choice2Text = "";
choice3Text = "";
choice4Text = "";
choice2 = null;
choice3 = null;
choice4 = null;
