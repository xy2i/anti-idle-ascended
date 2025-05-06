//! status=pending
function choice1()
{
   if(_root.save.arcadeToken >= 1)
   {
      _root.save.arcadeToken -= 1;
      _root.save.arcade100kMedal += 20;
      _root.save.awesomeReputation += 1;
      _parent._parent.awesomePop.displayMessage("You gave him 1 Arcade Token and got 20 Arcade 100k Medals in return.\nReputation +1");
   }
   else
   {
      _parent._parent.awesomePop.displayMessage("You don\'t have enough Arcade Tokens.");
   }
   _parent.gotoAndStop(2);
}
function choice2()
{
   if(_root.save.arcadeToken >= 2)
   {
      _root.save.arcadeToken -= 2;
      _root.save.arcade100kMedal += 35;
      _root.save.awesomeReputation += 2;
      _parent._parent.awesomePop.displayMessage("You gave him 2 Arcade Tokens and got 35 Arcade 100k Medals in return.\nReputation +2");
   }
   else
   {
      _parent._parent.awesomePop.displayMessage("You don\'t have enough Arcade Tokens.");
   }
   _parent.gotoAndStop(2);
}
function choice3()
{
   if(_root.save.arcadeToken >= 3)
   {
      _root.save.arcadeToken -= 3;
      _root.save.arcade100kMedal += 50;
      _root.save.awesomeReputation += 3;
      _parent._parent.awesomePop.displayMessage("You gave him 3 Arcade Tokens and got 50 Arcade 100k Medals in return.\nReputation +3");
   }
   else
   {
      _parent._parent.awesomePop.displayMessage("You don\'t have enough Arcade Tokens.");
   }
   _parent.gotoAndStop(2);
}
choice1Text = "Trade 1 Arcade Token for 20 Medals";
choice2Text = "Trade 2 Arcade Tokens for 35 Medals";
choice3Text = "Trade 3 Arcade Tokens for 50 Medals";
choice4Text = "";
choice4 = null;
