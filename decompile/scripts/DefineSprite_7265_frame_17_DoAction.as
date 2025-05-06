//! status=pending
function choice1()
{
   if(_root.saveid == 23)
   {
      _parent._parent.awesomePop.displayMessage("No, you can\'t accept this offer. It\'s against the challenge rules for some reason.");
   }
   else
   {
      _root.gainBlueCoin(150);
      _root.save.awesomeReputation -= 15;
      _parent._parent.awesomePop.displayMessage("You gained 150 Blue Coins.\nReputation -15");
      _parent.gotoAndStop(2);
   }
}
choice1Text = "Sure!";
choice2Text = "";
choice3Text = "";
choice4Text = "";
choice2 = null;
choice3 = null;
choice4 = null;
