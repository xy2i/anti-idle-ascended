//! status=pending
function choice1()
{
   if(Math.random() < 0.05)
   {
      _root.save.awesomeRefill += 1;
      _parent._parent.awesomePop.displayMessage("The cake tasted... gross. However, inside the cake, you found something that looked like a coin. Upon closer look, it was an Energy Refill!");
   }
   else if(Math.random() < 0.1)
   {
      _root.save.awesomeEnergy += 4;
      _parent._parent.awesomePop.displayMessage("The cake tasted AWESOME! You felt energized after eating the cake.\nEnergy +4");
   }
   else if(Math.random() < 0.2)
   {
      _root.save.awesomeEnergy += 2;
      _parent._parent.awesomePop.displayMessage("The cake tasted great! You felt energized after eating the cake.\nEnergy +2");
   }
   else if(Math.random() < 0.2)
   {
      _root.gainBoost(50,3);
      _parent._parent.awesomePop.displayMessage("The cake tasted great! You gained 50% Boost after eating the cake.");
   }
   else if(Math.random() < 0.3)
   {
      _parent._parent.awesomePop.displayMessage("The cake tasted... normal. Nothing happened when you eat the cake.");
   }
   else
   {
      _root.save.awesomeEnergy -= 1;
      _parent._parent.awesomePop.displayMessage("You wasted a lot of energy trying to eat the cake, but failed. The cake was just a lie...\nEnergy -1");
   }
   _parent.gotoAndStop(2);
}
function choice2()
{
   if(_root.save.petHealth > 0)
   {
      pl = Math.floor((_root.save.petStat[1] + _root.save.petStat[2] + _root.save.petStat[3] + _root.save.petStat[4] + _root.save.petStat[5] + _root.save.petStat[6] + _root.save.petStat[7] + _root.save.petStat[8]) / 8);
      petMax = 100 + Math.min(pl,100) + Math.max(Math.floor(pl * (pl - 100) / 25),0);
      if(_root.save.petFullness < petMax - 10)
      {
         _root.save.petHealth += 1;
         _root.save.petFullness += 5;
         _parent._parent.awesomePop.displayMessage("Your pet regained 1 Health and 5 Fullness after eating the cake.");
      }
      else
      {
         _parent._parent.awesomePop.displayMessage("Your pet doesn\'t really want to eat cake at the moment...");
      }
   }
   else
   {
      _root.save.awesomeEnergy += 1;
      _parent._parent.awesomePop.displayMessage("As you tried to feed the cake to your pet, you suddenly remembered that you have no pet, so you decided to eat the cake yourself. You regained 1 Energy.");
   }
   _parent.gotoAndStop(2);
}
choice1Text = "Eat";
choice2Text = "Feed to Pet";
choice3Text = "";
choice4Text = "";
choice3 = null;
choice4 = null;
