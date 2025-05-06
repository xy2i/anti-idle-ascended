//! status=pending
function choice1()
{
   if(Math.random() < 0.5)
   {
      _root.save.awesomeEnergy += 2;
      _parent._parent.awesomePop.displayMessage("The mushroom tasted delicious! You felt energized after eating it!\nEnergy +2");
   }
   else if(Math.random() < 0.5)
   {
      _root.save.awesomeEnergy += 1;
      _parent._parent.awesomePop.displayMessage("The mushroom tasted gross, but you felt a bit less tired after eating it anyway.\nEnergy +1");
   }
   else
   {
      _root.save.awesomeEnergy -= 1;
      _parent._parent.awesomePop.displayMessage("You thought it was the same mushroom in a certain game, but you were mistaken. It was a poisonous mushroom!\nEnergy -1");
   }
   _parent.gotoAndStop(2);
}
choice1Text = "OM NOM NOM";
choice2Text = "";
choice3Text = "";
choice4Text = "";
choice2 = null;
choice3 = null;
choice4 = null;
