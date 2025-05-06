//! status=pending
function choice1()
{
   if(_root.save.whiteCoin >= 1)
   {
      _root.save.whiteCoin -= 1;
      if(Math.random() < 0.7)
      {
         gotoAndStop(24);
      }
      else
      {
         _root.save.awesomeEnergy -= 1;
         _parent._parent.awesomePop.displayMessage("As you put a White Coin in the strange machine, a strange sound effect started playing (and there wasn\'t even a mute button! 1/5!). It was so annoying that you lost 1 Energy!\nEnergy -1");
         _parent.gotoAndStop(2);
      }
   }
}
function choice2()
{
   if(_root.saveid == 23)
   {
      _parent._parent.awesomePop.displayMessage("No, you can\'t do this! Sure, it\'s just a machine, but... no, let\'s just not destroy it.");
   }
   else if(Math.random() < 0.3)
   {
      _root.gainWhiteCoin(20);
      _root.save.awesomeEnergy -= 2;
      _root.save.awesomeReputation -= 6;
      _parent._parent.awesomePop.displayMessage("It took you a while, but you finally managed to destroy the machine. Inside, you found 20 White Coins.\nEnergy -2, Reputation -6");
   }
   else
   {
      _root.save.awesomeEnergy -= 2;
      _root.save.awesomeReputation -= 2;
      _parent._parent.awesomePop.displayMessage("No matter how hard you tried, you couldn\'t break the machine.\nEnergy -2, Reputation -2");
   }
   _parent.gotoAndStop(2);
}
choice1Text = "Put a White Coin in the machine";
choice2Text = "Try to break the machine";
choice3Text = "";
choice4Text = "";
choice3 = null;
choice4 = null;
