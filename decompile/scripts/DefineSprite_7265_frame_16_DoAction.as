//! status=pending
function choice1()
{
   if(_root.saveid == 23)
   {
      _parent._parent.awesomePop.displayMessage("No, you can\'t accept this offer. It\'s against the challenge rules for some reason.");
   }
   else
   {
      _root.save.buttonPress += 200;
      _root.save.buttonPressToday += 200;
      _root.save.buttonPerfect += random(5);
      _root.save.buttonBreak += 1;
      if(_root.save.buttonBless > 200)
      {
         _root.save.buttonBless -= 200;
      }
      else
      {
         _root.save.buttonBless = 0;
      }
      _root.save.awesomeReputation -= 1;
      _parent._parent.awesomePop.displayMessage("He used some kind of illegal program to click your Button Machine at the speed of light. You barely managed to see anything.\nReputation -1");
   }
   _parent.gotoAndStop(2);
}
choice1Text = "Sure!";
choice2Text = "";
choice3Text = "";
choice4Text = "";
choice2 = null;
choice3 = null;
choice4 = null;
