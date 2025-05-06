//! status=pending
function choice1()
{
   _root.save.boost -= 100;
   _root.save.awesomeReputation += 3;
   _parent._parent.awesomePop.displayMessage("You gave the tired adventurer 100% Boost! He thanked you for that.\nReputation +3");
   _parent.gotoAndStop(2);
}
function choice2()
{
   if(_root.save.awesomeRefill >= 1)
   {
      _root.save.awesomeRefill -= 1;
      _root.save.awesomeReputation += 20;
      _root.gainBlueCoin(150);
      _parent._parent.awesomePop.displayMessage("You gave the tired adventurer an Energy Refill! He felt refreshed and wanted to adventure some more. He even gave you some Reputation and 150 Blue Coins for that, as he knew how valuable it was.\nReputation +20");
   }
   else
   {
      _parent._parent.awesomePop.displayMessage("Are you kidding me? You don\'t even have an Energy Refill.");
   }
   _parent.gotoAndStop(2);
}
function choice3()
{
   if(_root.saveid == 23)
   {
      _parent._parent.awesomePop.displayMessage("No, no. It\'s not a good idea to steal stuff when you are on this kind of challenge. What if it makes you fail?");
   }
   else if(Math.random() < 0.6)
   {
      gemToGet = random(10) + 1;
      _root.save.lolGems[gemToGet] += 1;
      _root.save.awesomeReputation -= 6;
      _parent._parent.awesomePop.displayMessage("You stole a Lv. " + gemToGet + " Gem from the tired adventurer. He totally knew it, but was unable to react.\nReputation -6");
   }
   else
   {
      _root.save.awesomeReputation -= 4;
      _parent._parent.awesomePop.displayMessage("The adventurer didn\'t have anything valuable with him.\nReputation -4");
   }
   _parent.gotoAndStop(2);
}
choice1Text = "Give him some Boost";
choice2Text = "Give him an Energy Refill";
choice3Text = "Steal stuff from the adventurer";
choice4Text = "";
choice4 = null;
_;
