//! status=pending
function choice1()
{
   if(Math.random() < _root.save.fcgLevel / 50 && Math.random() < 0.9)
   {
      _root.save.awesomeReputation += 5;
      _root.save.fcgCash += 200;
      _parent._parent.awesomePop.displayMessage("You gave him some advice on how to build a good TukkunFCG deck. He thanked you and gave you 200 FCG Cash for free.\nReputation +5");
   }
   else
   {
      _root.save.awesomeReputation += 1;
      _parent._parent.awesomePop.displayMessage("You gave him some advice on how to build a good TukkunFCG deck. He didn\'t seem to understand it at all.\nReputation +1");
   }
   _parent.gotoAndStop(2);
}
function choice2()
{
   if(_root.saveid == 23)
   {
      _parent._parent.awesomePop.displayMessage("No... This is not a good idea.");
   }
   else
   {
      _root.save.awesomeReputation -= 1;
      _parent._parent.awesomePop.displayMessage("You laughed at him. He was so angry about it that he couldn\'t even focus on playing that TukkunFCG much, and lost. But with his lame deck, he probably would lose anyway.\nReputation -1");
   }
   _parent.gotoAndStop(2);
}
choice1Text = "Give advice";
choice2Text = "Laugh";
choice3Text = "";
choice4Text = "";
choice3 = null;
choice4 = null;
